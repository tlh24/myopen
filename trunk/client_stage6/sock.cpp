#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h> 
#include <netdb.h> 
#include <fcntl.h> 
#include "sock.h"

void error(const char *msg, int sockfd)
{
    perror(msg);
	close(sockfd); 
    exit(0);
}

void close_socket(int &sock){
	if(sock > 0){
		shutdown(sock,SHUT_RDWR);
		close(sock); 
	}
	sock = 0;
}
//sets up a UDP server socket. 
int setup_socket(int portno){
	int sock;
	struct sockaddr_in serv_addr;
	//these are both client sockets!! 
	//first, the outbound socket.
	sock = socket(AF_INET, SOCK_DGRAM, 0);
	if (sock < 0) {
		fprintf(stderr, "ERROR opening socket\n");
		return 0; 
	}
	fcntl(sock, F_SETFL, O_NONBLOCK); //set the socket to non-blocking. 
	
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
//sets up a udp client socket.
int connect_socket(int portno, const char* server_name){
	int sockfd;
	struct sockaddr_in serv_addr;
	
	sockfd = socket(AF_INET, SOCK_DGRAM, 0);
	if (sockfd < 0) {
		error("ERROR opening socket", sockfd);
		return 0; 
	}
	fcntl(sockfd, F_SETFL, O_NONBLOCK); //set the socket to non-blocking. 
	
	//get the address - 
	get_sockaddr(portno, server_name, &serv_addr); 
	
	if (connect(sockfd,(struct sockaddr*)&serv_addr,sizeof(serv_addr)) < 0) {
		error("ERROR connecting", sockfd);
		return 0; 
	}
	// n = send(sockfd,buffer,strlen(buffer), MSG_NOSIGNAL);
	// n = read(sockfd,buffer,255);
	return sockfd ; 
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
