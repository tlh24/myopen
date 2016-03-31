#include <stdlib.h>
#include <stdarg.h>
#include <string.h>
#include <memory.h>
#include <math.h>
#include <matio.h>
#include <atomic>
#include <iostream>
#include "analog.pb.h"
#include "analogchan.h"
#include "matStor.h"
#include "analogwriter.h"

//#define _LARGEFILE_SOURCE enabled by default.
#define _FILE_OFFSET_BITS 64

#define MY_BUFFER	262144

using namespace std;
using namespace google::protobuf;
using namespace gtkclient;

int main(int argn, char **argc)
{

	GOOGLE_PROTOBUF_VERIFY_VERSION;

	ifstream in;

	if (argn != 3 && argn != 2) {
		printf("usage: analog2mat infile.pbd outfile.mat\n");
		printf(" or just: analog2mat infile.pbd\n");
		return EXIT_FAILURE;
	}

	// in file
	in.open(argc[1]);
	if (!in.good()) {
		fprintf(stderr,"Could not open %s\n", argc[1]);
		return EXIT_FAILURE;
	}

	// out file
	int nn = strlen(argc[1]);
	if (nn < 5 || nn > 511) {
		printf(" infile not .pbd?\n");
		return EXIT_FAILURE;
	}
	char s[512];
	if (argn == 2) {
		strncpy(s, argc[1], 512);
		s[nn-3] = 'm';
		s[nn-2] = 'a';
		s[nn-1] = 't';
	} else {
		strncpy(s, argc[2], 512);
	}
	MatStor ms(s);

	u64 packets=0;

	// read magic aka is this the right filetype
	u32 magic;
	in.read((char *) &magic, sizeof(magic));
	if (in.eof()) {
		fprintf(stderr, "cannot read infile at magic word\n");
		return EXIT_FAILURE;
	}
	if (in.fail() || in.gcount() != sizeof (magic)) {
		fprintf(stderr, "read magic failure. gcount: %ld at %d\n",
		        in.gcount(), (int) in.tellg());
		return EXIT_FAILURE;
	}
	if (magic != ANALOG_MAGIC) {
		fprintf(stderr, "magic, %X, does not match expected value, %X.\n",
		        magic, ANALOG_MAGIC);
		return EXIT_FAILURE;
	}

	// read file header size
	u32 sz;
	in.read((char *) &sz, sizeof (sz));
	if (in.eof()) {
		fprintf(stderr, "cannot read infile at file header size\n");
		return EXIT_FAILURE;
	}
	if (in.fail() || in.gcount() != sizeof (sz)) {
		fprintf(stderr, "read size failure. gcount: %ld at %d\n",
		        in.gcount(), (int) in.tellg());
		return EXIT_FAILURE;
	}
	if (sz > MY_BUFFER) {
		fprintf(stderr, "file header too long for buffer: %u.\n", sz);
		return EXIT_FAILURE;
	}

	// read AnalogfileHeader protobuf packet
	// max int32 is  2,147,483,647
	// max uint32 is 4,294,967,295
	char buf[MY_BUFFER];
	in.read(buf, sz);
	if (in.fail() || in.eof() || in.gcount() != sz) {
		fprintf(stderr, "read AnalogFileHeader failure\n");
		return EXIT_FAILURE;
	}

	// parse protobuf
	AnalogFileHeader fh;
	fh.Clear();
	if (!fh.ParseFromArray(buf, sz)) {
		fprintf(stderr, "failed to parse AnalogFileHeader (%d bytes).\n", sz);
		return EXIT_FAILURE;
	}

	double sr = fh.sr();
	u32 nc = fh.nchans();
	printf("File contains %d channels and is sampled at %f Hz\n", nc, sr);

	map<u32, string> name_map;
	for (int i=0; i<fh.name_size(); i++) {
		auto name = fh.name(i);
		name_map.insert( pair<u32, string>(name.ch(), name.name()) );
	}
	map<u32, float> scale_map;
	for (int i=0; i<fh.scale_size(); i++) {
		auto scale = fh.scale(i);
		scale_map.insert( pair<u32, float>(scale.ch(), scale.scale()) );
	}

	int raw_j = 0;

	while (!in.eof()) {

		// read size
		in.read((char *) &sz, sizeof (sz));
		if (in.eof())
			return EXIT_FAILURE;
		if (in.fail() || in.gcount() != sizeof (sz)) {
			fprintf(stderr, "read size failure. gcount: %ld at %d\n",
			        in.gcount(), (int) in.tellg());
			return EXIT_FAILURE;
		}
		if (sz > MY_BUFFER) {
			fprintf(stderr, "single packet too long for buffer: %u.\n", sz);
			return EXIT_FAILURE;
		}

		// read AnalogData protobuf packet
		// max int32 is  2,147,483,647
		// max uint32 is 4,294,967,295
		in.read(buf, sz);
		if (in.fail() || in.eof() || in.gcount() != sz) {
			fprintf(stderr, "read AnalogData packet failure\n");
			return EXIT_FAILURE;
		}

		// parse protobuf
		AnalogData a;
		a.Clear();
		if (!a.ParseFromArray(buf, sz)) {
			fprintf(stderr,
			        "AnalogData packet %lu (%d bytes) failed to parse. aborting.\n",
			        packets+1, sz);
			break;
		}

		/*
		auto ns = a.nsamp();
		auto tmp = a.data();
		int16_t *raw;
		raw = (int16_t*)tmp.data();

		for (auto i=0; i<(int)nc; i++) {
			for (auto j=0; j<(int)ns;j++) {
				ms.set_i16_2(i, raw_j+j, "raw", raw[i*ns+j]);
			}
		}
		*/

		//auto ts = a.ts();
		//auto tick = a.tick();

		//raw_j += ns;

		/*
		u32 ch = a.chan();

		// try to find the analog chan in our map
		AnalogChan *ac = nullptr;
		if (analchans.find(ch) == analchans.end()) {
			// not found, it is a new chan
			ac = new AnalogChan();
			if (!ac) {
				fprintf(stderr, "Out of memory\n");
				continue;
			}
			analchans[ch] = ac;
			ac->chan = ch;
		} else {
			// found, set pointer to exisiting analog chan
			ac = analchans[ch];
		}

		if (a.tick_size() != a.sample_size()) {
			fprintf(stderr, "samples and ticks dont align!\n");
			return EXIT_FAILURE;
		}

		for (int i=0; i<a.tick_size(); i++)
			if (!ac->add_sample(a.ts(i), a.tick(i), a.sample(i)))
				fprintf(stderr, "Error adding sample for analog chan %u (packet %lu)\n",
				        ch, packets+1);
		*/
		packets++;
		printf("parsed %ld packets\n", packets);


	}
	in.close();

	ShutdownProtobufLibrary();

	ms.save();

	// print some more stats here
	//printf("Parsing complete. %lu total packets from %lu analog chans.\n",
	//       packets+1, analchans.size());

	// now write each stim chan
	/*
	map<u32, AnalogData *>::iterator it;
	for (it = analchans.begin(); it != analchans.end(); ++it) {
		printf("analog ch: %d\n", (*it).second->chan);
		(*it).second->save(&ms);
		ms.save(true);	// append to file
		ms.clear();
	}
	*/

	return EXIT_SUCCESS;
}
