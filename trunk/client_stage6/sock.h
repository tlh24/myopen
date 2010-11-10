#ifndef __SOCK_H__
#define __SOCK_H__

void close_socket(int &sock); 
int setup_socket(int portno); 
int connect_socket(int portno, const char* server_name); 
void get_sockaddr(int portno, const char* server_name, struct sockaddr_in *addr); 
#endif