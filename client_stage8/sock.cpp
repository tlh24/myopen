#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h> 
#include <fcntl.h> 
#include "sock.h"

void error(const char *msg, int sock){
	perror(msg);
	close(sock); 
	exit(0);
}

void close_socket(int &sock){
	if(sock > 0){
		shutdown(sock,SHUT_RDWR);
		close(sock); 
	}
	sock = 0;
}
//sets up a UDP/TCP server socket. 
int setup_socket(int portno, int tcp){
	int sock;
	struct sockaddr_in serv_addr;

	sock = socket(AF_INET, tcp?SOCK_STREAM:SOCK_DGRAM, 0);
	if (sock < 0) {
		fprintf(stderr, "ERROR opening socket\n");
		return 0; 
	}
	fcntl(sock, F_SETFL, O_NONBLOCK); //set the socket to non-blocking. 
	int optval = 1; // turn on address reuse. 
	setsockopt(sock, SOL_SOCKET, SO_REUSEADDR, &optval, sizeof(optval)); 
	bzero((char *) &serv_addr, sizeof(serv_addr));
	serv_addr.sin_family = AF_INET;
	serv_addr.sin_addr.s_addr = INADDR_ANY ; 
	serv_addr.sin_port = htons(portno);
	if(bind(sock, (struct sockaddr*) &serv_addr, sizeof(serv_addr)) < 0){
		fprintf(stderr,"error binding socket \n");
		perror(":");
	}
	listen(sock, 5); 
	return sock;
}
//accepts a TCP connection on a server socket if one is queued. 
//returns the client socket file descriptor.
int accept_socket(int sock){
	struct sockaddr_in cli_addr;
	socklen_t clilen = sizeof(cli_addr); 
	int clientfd = accept(sock, (struct sockaddr *)&cli_addr, &clilen); 
	
	return clientfd;
	//you'll want to read / write to clientfd. 
}

 //sets up a udp/tcp client socket.
int connect_socket(int portno, const char* server_name, int tcp){
	int sock;
	struct sockaddr_in serv_addr;
	
	sock = socket(AF_INET, tcp?SOCK_STREAM:SOCK_DGRAM, 0);
	if (sock < 0) {
		error("ERROR opening socket", sock);
		return 0; 
	}
	fcntl(sock, F_SETFL, O_NONBLOCK); //set the socket to non-blocking. 
	//with tcp, this will make accept() not block, too, so we can poll it.
	//get the address - 
	get_sockaddr(portno, server_name, &serv_addr); 
	
	if (connect(sock,(struct sockaddr*)&serv_addr,sizeof(serv_addr)) < 0) {
		error("ERROR connecting", sock);
		return 0; 
	}
	return sock ; 
}


void get_sockaddr(int portno, const char* server_name, struct sockaddr_in *addr){
	//return on addr
	struct hostent *server;
	server = gethostbyname(server_name);
	if (server == NULL) {
		fprintf(stderr,"ERROR, no such host\n");
		return; 
	}
	bzero((char *) addr, sizeof(struct sockaddr_in));
	addr->sin_family = AF_INET;
	bcopy((char *)server->h_addr, 
		(char *)&(addr->sin_addr.s_addr),
		server->h_length);
	addr->sin_port = htons(portno);
}

