#ifndef _INCLUDE_DOMAIN_SOCKET_
#define _INCLUDE_DOMAIN_SOCKET_

#include <string>

class domainSocket
{
protected:
	int 			m_sock;
	std::string 	m_sock_path;
	bool init();
public:
	domainSocket();
	~domainSocket();
};

class domainSocketClient : domainSocket
{
protected:
	bool 		m_connected;
public:
	domainSocketClient();
	~domainSocketClient();
	bool Connect(std::string socket_path);
	void Disconnect();
	bool Send(std::string msg);
};


#endif