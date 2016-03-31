#include <sys/types.h>
#include <sys/socket.h>
#include <sys/un.h>
#include <unistd.h>
#include "domainSocket.h"

domainSocket::domainSocket()
{
	m_sock=0;
	m_sock_path.clear();
}
domainSocket::~domainSocket()
{
}
// returns false on error
bool domainSocket::init()
{
	if ((m_sock = socket(AF_UNIX, SOCK_STREAM, 0)) == -1) {
		//perror("socket error");
		return false;
	}
	return true;
}

domainSocketClient::domainSocketClient()
{
	m_connected = false;
}

domainSocketClient::~domainSocketClient()
{
	Disconnect();
}
// returns false on error
bool domainSocketClient::Connect(std::string socket_path)
{
	if (m_connected) {
		Disconnect();
	}
	m_sock_path = socket_path;
	struct sockaddr_un addr;
	memset(&addr, 0, sizeof(addr));
	addr.sun_family = AF_UNIX;
	strncpy(addr.sun_path, m_sock_path.c_str(), sizeof(addr.sun_path)-1);

	if (!init()) {
		return m_connected;
	}

	if (connect(m_sock, (struct sockaddr *)&addr, sizeof(addr)) == -1) {
		//perror("connect");
		return m_connected;
	}
	m_connected = true;
	return m_connected;
}
void domainSocketClient::Disconnect()
{
	close(m_sock);
	m_connected = false;
}
bool domainSocketClient::Send(std::string msg)
{
	if (!m_connected) {
		return false;
	}
	if (send(m_sock, msg.c_str(), msg.size(), 0) == -1) {
		return false;
	}
	return true;
}