// for serving up configuration pages.  
#include "memory.h"
#include "util.h"
#include "lcd.h"
#include "http.h"

u8 g_enableUDP; 
u32	g_httpHeaderLen; 
u32	g_httpContentLen; 
u8*	g_httpSendPtr; 
u32	g_httpRemainingLen; 

void httpResp(char* payload, int inlen){
	u8* p = (u8*)HTTP_HEADER; 
	int i; 
	for(i=0; i<256; i++){
		*p++ = 'c'; 
	}
	if( inlen > 10 && strcmp(payload, "GET / HTTP")){
		//requested a webpage.
		printf_str("requested a webpage!\n"); 
		g_httpContentLen = htmlDefault(); 
		//content length seems to be minus the headers, the actual content length (surprise!)
		httpHeader(); 
		printf_int("header length:", g_httpHeaderLen); 
		printf_str("\n"); 
		printf_int("content length:", g_httpContentLen); 
		printf_str("\n"); 
	} else {
		g_httpContentLen = html404(); 
		httpHeader(); 
	}
	//asm volatile("emuexcpt"); 
}

void httpHeader(){
	char* h = ((char*)HTTP_HEADER); 
	int txlen = 0; 
	h = strcpy(h, &txlen, "HTTP/1.1 200 OK\r\n"); 
	h = strcpy(h, &txlen, "Server: Myopen\r\n");
	h = strcpy(h, &txlen, "Content-Length "); 
	h = strprintf_int(h, &txlen, g_httpContentLen); 
	h = strcpy(h, &txlen, "\r\nContent-Type: text/html\r\n\r\n"); 
	g_httpHeaderLen = txlen; 
}
int html404(){
	char* dest = ((char*)HTTP_CONTENT); 
	int len = 0; 
	dest = strcpy(dest, &len, "HTTP/1.1 404 Not Found\r\n");
	return len; 
}
int htmlDefault(){
	char* dest = ((char*)HTTP_CONTENT); 
	//fills *dest with the default webpage.
	int len = 0; 
	dest = strcpy(dest, &len, 
	"<html><head><title>myopen</title></head>\n<body>\n<h1>Myopen configuration</h1>\n"); 
	
	dest = htmlDiv(dest, &len, 'b'); 
	dest = htmlForm(dest, &len); 
	dest = strcpy(dest, &len, 
		"Data Stream (port 4340, UDP)\n\
		<input type=\"submit\" name=\"data_stream\" value="); 
	if(g_enableUDP){
		dest = strcpy(dest, &len, "\"Disable\""); 
	}else {
		dest = strcpy(dest, &len, "\"Enable\""); 
	}
	dest = strcpy(dest, &len, "/>\n</form></div>\n"); 
	
	dest = htmlDiv(dest, &len, 'g'); 
	dest = htmlForm(dest, &len); 
	dest = strcpy(dest, &len, "Cursor control channels:\n<table>\n"); 
	dest = htmlCursorSelect(dest, &len, "+X (right)", "xpos_chan", g_mouseXpos); 
	dest = htmlCursorSelect(dest, &len, "-X (left)", "xneg_chan", g_mouseXneg); 
	dest = htmlCursorSelect(dest, &len, "+Y (down)", "ypos_chan", g_mouseYpos); 
	dest = htmlCursorSelect(dest, &len, "-Y (up)", "yneg_chan", g_mouseYneg); 
	dest = strcpy(dest, &len, 
		"</table>\n<input type=\"submit\" value=\"Save\"/>\n</form></div>\n");
	
	dest = htmlDiv(dest, &len, 'b'); 
	dest = htmlForm(dest, &len); 
	dest = strcpy(dest, &len, 
		"<input type=\"submit\" name=\"calibrate\" value=\"Calibrate Thresholds\"/>\n\
		</form>\n</div>\n</body>\n</html>"); 
	return len; 
}
char* htmlDiv(char* dest, int* len, char color){
	if(color == 'b'){
		dest = strcpy(dest, len, 
			"<div style=\"background:#dedeee\" align=\"center\">\n"); 
	}
	else {
		dest = strcpy(dest, len, 
			"<div style=\"background:#d8eee0\" align=\"center\">\n"); 
	}
	return dest; 
}
char* htmlForm(char* dest, int* len){
	return strcpy(dest, len, "<form action=\"test.pl\" method=\"get\">"); 
}
char* htmlCursorSelect(char* dest, int* len, char* desc, 
			char* selectName, int selectedNum){
	dest = strcpy(dest, len, "<tr><td>"); 
	dest = strcpy(dest, len, desc); 
	dest = strcpy(dest, len, "</td>\n<td><select name=\""); 
	dest = strcpy(dest, len, selectName); 
	dest = strcpy(dest, len, "\">\n"); 
	int i; 
	for(i=0; i<15; i++){
		htmlCursorOption(dest, len, i, selectedNum); 
	}
	dest = strcpy(dest, len, "</select></td></tr>\n"); 
	return dest; 
}
char* htmlCursorOption(char* dest, int* len, int num, int selectedNum){
	dest = strcpy(dest, len, "<option value="); 
	dest = strprintf_int(dest, len, num); 
	if(num == selectedNum){
		dest = strcpy(dest, len, " selected=\"selected\""); 
	}
	dest = strcpy(dest, len, ">"); 
	dest = strprintf_int(dest, len, num); 
	dest = strcpy(dest, len, "</option>\n"); 
	return dest; 
}
