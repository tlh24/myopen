#include <signal.h>				// for signal, SIGINT
#include <zmq.h>
#include "zmq_packet.h"
#include <basedir.h>
#include <basedir_fs.h>
#include <uuid.h>
#include <ctime>
#include "util.h"
#include "lconf.h"
#include "timesync.h"
#include "h5eventwriter.h"

bool s_interrupted = false;
std::vector <void *> g_socks;

static void s_signal_handler(int)
{
	s_interrupted = true;
}

static void s_catch_signals(void)
{
	struct sigaction action;
	action.sa_handler = s_signal_handler;
	action.sa_flags = 0;
	sigemptyset(&action.sa_mask);
	sigaction(SIGINT, &action, NULL);
	sigaction(SIGQUIT, &action, NULL);
	sigaction(SIGTERM, &action, NULL);
}

static void die(void *ctx, int status)
{
	s_interrupted = true;
	for (auto &sock : g_socks) {
		zmq_close(sock);
	}
	zmq_ctx_destroy(ctx);
	exit(status);
}

int main(int argc, char *argv[])
{
	// h5evsave [zmq_sub] [filename]

	if (argc < 3) {
		printf("\nh5evsave - save event data to NWB (HDF5)\n");
		printf("usage: h5bbsave [zmq_sub] [filename]\n\n");
		return 1;
	}

	std::string zin = argv[1];
	std::string fn	= argv[2];

	debug("ZMQ SUB: %s", zin.c_str());
	debug("Filename: %s", fn.c_str());

	s_catch_signals();

	xdgHandle xdg;
	xdgInitHandle(&xdg);
	char *confpath = xdgConfigFind("spk/spk.rc", &xdg);
	char *tmp = confpath;
	// confpath is "string1\0string2\0string3\0\0"

	luaConf conf;

	while (*tmp) {
		conf.loadConf(tmp);
		tmp += strlen(tmp) + 1;
	}
	if (confpath)
		free(confpath);
	xdgWipeHandle(&xdg);

	std::string zq = "ipc:///tmp/query.zmq";
	conf.getString("spk.query_socket", zq);

	TimeSyncClient *tsc = new TimeSyncClient();  // translates tk and ts

	H5EventWriter h5;

	void *zcontext = zmq_ctx_new();
	if (zcontext == NULL) {
		error("zmq: could not create context");
		return 1;
	}
	// we don't need 1024 sockets
	if (zmq_ctx_set(zcontext, ZMQ_MAX_SOCKETS, 64) != 0) {
		error("zmq: could not set max sockets");
		die(zcontext, 1);
	}

	void *query_sock = zmq_socket(zcontext, ZMQ_REQ);
	if (query_sock == NULL) {
		error("zmq: could not create socket");
		die(zcontext, 1);
	}
	g_socks.push_back(query_sock);
	if (zmq_connect(query_sock, zq.c_str()) != 0) {
		error("zmq: could not connect to socket");
		die(zcontext, 1);
	}

	u64 nec; // num event channels
	zmq_send(query_sock, "NEC", 3, 0);
	if (zmq_recv(query_sock, &nec, sizeof(u64), 0) == -1) {
		error("zmq: could not recv from query sock");
		die(zcontext, 1);
	}

	std::vector <std::string> names;

	for (u64 ch=0; ch<nec; ch++) {
		// EC : X : NAME
		zmq_send(query_sock, "EC", 2, ZMQ_SNDMORE);
		zmq_send(query_sock, &ch, sizeof(u64), ZMQ_SNDMORE);
		zmq_send(query_sock, "NAME", 4, 0);

		zmq_msg_t msg;
		zmq_msg_init(&msg);
		zmq_msg_recv(&msg, query_sock, 0);

		names.push_back(std::string((const char *)zmq_msg_data(&msg), zmq_msg_size(&msg)));
		zmq_msg_close(&msg);
	}

	uuid_t u;
	uuid_generate(u);
	char uu[37];
	uuid_unparse(u, uu);

	time_t t_create;
	time(&t_create);
	char create_date[sizeof("YYYY-MM-DDTHH:MM:SSZ")];
	strftime(create_date, sizeof(create_date), "%FT%TZ", gmtime(&t_create));

	h5.open(fn.c_str(), nec, names);
	h5.setVersion();
	h5.setUUID(uu);
	h5.setFileCreateDate(create_date);
	h5.setSessionDescription("event data");
	h5.setMetaData();

	void *socket_in = zmq_socket(zcontext, ZMQ_SUB);
	if (socket_in == NULL) {
		error("zmq: could not create socket");
		die(zcontext, 1);
	}
	g_socks.push_back(socket_in);

	if (zmq_connect(socket_in, zin.c_str()) != 0) {
		error("zmq: could not connect to socket");
		die(zcontext, 1);
	}
	// subscribe to everything
	if (zmq_setsockopt(socket_in, ZMQ_SUBSCRIBE, "", 0) != 0) {
		error("zmq: could not set socket options");
		die(zcontext, 1);
	}

	zmq_pollitem_t items [] = {
		{ socket_in, 	0, ZMQ_POLLIN, 0 }
	};

	int waiter = 0;
	int counter = 0;
	std::vector<const char *> spinner;
	spinner.emplace_back(">>>    >>>");
	spinner.emplace_back(" >>>    >>");
	spinner.emplace_back("  >>>    >");
	spinner.emplace_back("   >>>    ");
	spinner.emplace_back("    >>>   ");
	spinner.emplace_back(">    >>>  ");
	spinner.emplace_back(">>    >>> ");

	size_t zin_n = zin.find_last_of("/");

	while (!s_interrupted) {

		if (zmq_poll(items, 1, -1) == -1) {
			break;
		}

		if (items[0].revents & ZMQ_POLLIN) {

			zmq_msg_t header;
			zmq_msg_init(&header);
			zmq_msg_recv(&header, socket_in, 0);
			zmq_packet_header *p = (zmq_packet_header *)zmq_msg_data(&header);
			u64 nc = p->nc;
			u64 ns = p->ns;
			i64 tk = p->tk;

			zmq_msg_t body;
			zmq_msg_init(&body);
			zmq_msg_recv(&body, socket_in, 0);
			i16 *ev = (i16 *)zmq_msg_data(&body);

			for (u64 ec=0; ec<nc; ec++) {
				for (u64 k=0; k<ns; k++) {
					i16 x = ev[ec*ns+k];
					if (x != 0) {
						// frees memory when done
						h5.write(ec, tk+k, tsc->getTime(tk+k), x);
					}
				}
			}

			zmq_msg_close(&body);
			zmq_msg_close(&header);

			if (waiter % 20 == 0) {
				time_t now;
				time(&now);
				double sec = difftime(now, t_create);
				int min = sec / 60;
				int hr  = min / 60;
				printf(" [%s]%s[%s] (%02d:%02d:%02d)\r",
				       zin.substr(zin_n+1).c_str(),
				       spinner[counter % spinner.size()],
				       fn.c_str(),
				       hr,
				       min % 60,
				       int(sec) % 60);
				fflush(stdout);
				counter++;
			}
			waiter++;

		}

	}

	h5.close();

	delete tsc;

	die(zcontext, 0);

}