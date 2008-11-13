// for serving up configuration pages.  
#include "memory.h"
#include "util.h"
#include "lcd.h"
#include "http.h"
#include "ethernet.h"

u8 g_enableUDP; 
u32	g_httpHeaderLen; 
u32	g_httpContentLen; 
u8*	g_httpSendPtr; 
u32	g_httpRemainingLen; 
u32	g_httpRxed;  //number of bytes received in a multi-packet transfer.

int httpCollate(char* payload, int paylen){
	if( g_httpRxed ){
		//then there is already data buffered -- merge it. 
		u8* p = (u8*)HTTP_RX; 
		p += g_httpRxed; 
		memcpy((u8*)payload, p, paylen); 
		g_httpRxed += paylen; 
		//see if the new data is a complete request. 
		if( httpResp((char*)HTTP_RX, g_httpRxed) ){
			g_httpRxed = 0; //used the data.
			return 1;
		}
	}else {
		//see if this individual packet is a request. 
		//if it is not, copy it over. 
		if( httpResp(payload, paylen) ){
			g_httpRxed = 0; //used the data.
			return 1;
		} else {
			//copy the data to the buffer, multiple packets.  
			memcpy((u8*)payload, (u8*)HTTP_RX, paylen); 
			g_httpRxed = paylen; 
		}
	}
	return 0; 
}

int httpResp( char* payload, int paylen ){
	if( paylen > 14 && strcmp(payload, "GET / HTTP")){ 
		//start ( '/' is the trailing part of the URL )
		if(substr("\r\n\r\n", payload, paylen)){ //end
			//requested a webpage, in one packet.
			//printf_str("requested a webpage!\n"); 
			g_httpContentLen = htmlDefault(); 
			//content length seems to be minus the headers, the actual content length (surprise!)
			httpHeader(); 
			//printf_int("header length:", g_httpHeaderLen); 
			//printf_str("\n"); 
			//printf_int("content length:", g_httpContentLen); 
			//printf_str("\n"); 
			return 1; 
		}
	}else if(paylen >= 18 && substr("POST /data", payload, paylen)){
		// get the specified past # ms of data. 
		int pos = substr("rawLen=", payload, paylen); 
		if(pos){
			char* p; 
			p = payload; p+= pos; 
			int rawlen = atoi(p, 10); 
			if(rawlen >= 32 && rawlen <= 4000){
				u32* wr_ptr = (u32*)WR_PTR; 
				u32 ptr = ((*wr_ptr) & 0x3ffe0) - (rawlen*16*2); 
				u32* dest = (u32*)HTTP_CONTENT; 
				u32* src = (u32*)ptr; 
				int i; 
				for(i=0; i< rawlen*8; i++){
					src = (u32*) ( ((u32)src) & 0x3ffff ); 
					*dest++ = *src++;
				}
				g_httpContentLen = rawlen * 32; 
				httpHeader(); 
			} else {
				char* dest = (char*)HTTP_CONTENT; 
				int len = 0; 
				dest = strcpy(dest, &len, "/data: rawLen unspecified or out of range"); 
				g_httpContentLen = len; 
				httpHeader(); 
			}
			return 1; 
		} 
	}else if(paylen >= 18 && substr("POST",payload,paylen) ){
		char paramChanged = 0; 
		if(substr("data_stream=",payload, paylen) ){
			if(substr("=Enable",payload, paylen) ){
				//then turn on the data stream! 
				u32* wr_ptr = (u32*)WR_PTR; 
				u32* tr_ptr = (u32*)TR_PTR; 
				g_streamEnabled = 1; 
				(*tr_ptr) = (*wr_ptr);  //so that we don't spend a long time catching up.
				paramChanged = 1; 
			}
			if(substr("=Disable",payload, paylen)){
				g_streamEnabled = 0; 
				paramChanged = 1; 
			}
		}
		if(substr("filter_data",payload,paylen)){
			u8* raw_enab = (u8*)RAW_ENAB; 
			if(substr("=Enable",payload, paylen) ){
				*raw_enab = 0; //enable filter = disable raw.
				paramChanged = 1; 
			}
			if(substr("=Disable",payload, paylen)){
				*raw_enab = 1; //enable filter = disable raw.
				paramChanged = 1; 
			}
		}
		// --- look at the mouse channels. 
		char* p; 
		int pos ; 
		pos = substr("xpos_chan=",payload,paylen); 
		if(pos){
			p = payload; p += pos; 
			g_mouseXpos = (u8)(PhysicalToLogicalChan(atoi( p, 3)) & 0xff); 
			paramChanged = 1; 
		}
		pos = substr("ypos_chan=",payload,paylen); 
		if(pos){
			p = payload; p += pos; 
			g_mouseYpos = (u8)(PhysicalToLogicalChan(atoi( p, 3)) & 0xff); 
			paramChanged = 1; 
		}
		pos = substr("xneg_chan=",payload,paylen); 
		if(pos){
			p = payload; p += pos; 
			g_mouseXneg = (u8)(PhysicalToLogicalChan(atoi( p, 3)) & 0xff); 
			paramChanged = 1; 
		}
		pos = substr("yneg_chan=",payload,paylen); 
		if(pos){
			p = payload; p += pos; 
			g_mouseYneg = (u8)(PhysicalToLogicalChan(atoi( p, 3)) & 0xff); 
			paramChanged = 1; 
		}
		//set the destination IP
		pos = substr("ip1=",payload,paylen); 
		if(pos){
			p = payload; p+= pos; 
			u32 tip = atoi(p,3) & 0xff; 
			NetDataDestIP &= 0xffffff00 ; //big-endian order.
			NetDataDestIP += tip; 
			paramChanged = 1; 
		}
		pos = substr("ip2=",payload,paylen); 
		if(pos){
			p = payload; p+= pos; 
			u32 tip = atoi(p,3) & 0xff; 
			NetDataDestIP &= 0xffff00ff ; 
			NetDataDestIP += tip << 8; 
			paramChanged = 1; 
		}
		pos = substr("ip3=",payload,paylen); 
		if(pos){
			p = payload; p+= pos; 
			u32 tip = atoi(p,3) & 0xff; 
			NetDataDestIP &= 0xff00ffff ; 
			NetDataDestIP += tip << 16; 
			paramChanged = 1; 
		}
		pos = substr("ip4=",payload,paylen); 
		if(pos){
			p = payload; p+= pos; 
			u32 tip = atoi(p,3) & 0xff; 
			NetDataDestIP &= 0x00ffffff ; 
			NetDataDestIP += tip << 24; 
			paramChanged = 1; 
		}
		// --------------------------
		if(paramChanged){
			g_httpContentLen = htmlDefault(); 
			httpHeader(); 
			return 1; 
		}
		// calibrate thresholds! 
		if(substr("calibrate=Cal",payload,paylen)){
			//look at the last 2 seconds of data & measure mean. 
			//*assuming that the absolute value has been taken*
			int sum[16]; 
			int i,j; 
			for(i=0; i<16;i++){ sum[i] = 0; }
			u32* wr_ptr = (u32*)WR_PTR; 
			u32 ptr = ((*wr_ptr) & 0x3ffe0) - (16*2048*2); 
			ptr &= 0x3ffff; 
			u16* p = (u16*)ptr; 
			for(j=0; j<2048; j++){
				for(i=0; i<16; i++){
					sum[i] += *p++; 
					p = (u16*)((u32)p & 0x3ffff); 
				}
			}
			for(i=0; i<16;i++){
				sum[i] = sum[i] >> 11; 
			}
			int len = htmlDefault(); 
			char* dest = ((char*)HTTP_CONTENT); 
			len -= 19;  //overwrite the </body> </html>
			dest += len;
			dest = strcpy(dest, &len, "<table>\n"); 
			for(i=0; i<16; i++){
				int logical = PhysicalToLogicalChan(i); 
				dest = strcpy(dest, &len, "<tr><td>Channel "); 
				dest = strprintf_int(dest, &len, i ); 
				dest = strcpy(dest, &len, "</td><td>mean "); 
				dest = strprintf_int(dest, &len, sum[logical]); 
				dest = strcpy(dest, &len, "</td></tr>\n"); 
			}
			dest = strcpy( dest, &len, "</table></body></html>\r\n" ); 
			g_httpContentLen = len ; 
			httpHeader(); 
			return 1; 
		}
	} else {
		if(substr("\r\n\r\n", payload, paylen)){ //end .. of some sort of request! 
			g_httpContentLen = html404(); 
			httpHeader(); 
			return 1; 
		}
	}
	return 0; //nope, was not able to do anything with it.
}

void httpHeader(){
	char* h = ((char*)HTTP_HEADER); 
	int txlen = 0; 
	h = strcpy(h, &txlen, "HTTP/1.1 200 OK\r\n"); 
	h = strcpy(h, &txlen, "Server: Myopen\r\n");
	h = strcpy(h, &txlen, "Content-Length: "); 
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
int htmlGeneric(char* str){
	char* dest = ((char*)HTTP_CONTENT); 
	int len = 0; 
	strcpy(dest, &len, str); 
	g_httpContentLen = len; 
	httpHeader(); 
	return len;
}
int htmlDefault(){
	char* dest = ((char*)HTTP_CONTENT); 
	//fills *dest with the default webpage.
	int len = 0; 
	int j = 0; 
	dest = strcpy(dest, &len, 
	"<html><head><title>myopen</title></head>\n<body>\n<h1>Myopen configuration</h1>\n"); 
	//------------------
	dest = htmlDiv(dest, &len, 'b'); 
	dest = htmlForm(dest, &len); 
	dest = strcpy(dest, &len, 
		"Data Stream (port 4340, UDP)\n\
		<input type=\"submit\" name=\"data_stream\" value="); 
	if(g_streamEnabled){
		dest = strcpy(dest, &len, "\"Disable\""); 
	}else {
		dest = strcpy(dest, &len, "\"Enable\""); 
	}
	dest = strcpy(dest, &len, "/>\n</form></div>\n"); 
	//------------------
	dest = htmlDiv(dest, &len, 'b'); 
	dest = htmlForm(dest, &len); 
	dest = strcpy(dest, &len, "Data Stream Destination IP\n"); 
	for( j=1; j<=4; j++){
		dest = strcpy(dest, &len, "<input type=\"text\" name=\"ip"); 
		dest = strprintf_int(dest, &len, j); 
		dest = strcpy(dest, &len, "\" size=\"2\"/ value=\""); 
		dest = strprintf_int(dest, &len, (NetDataDestIP >> (j-1)*8)& 0xff ) ; //big endian format.
		dest = strcpy(dest, &len, "\"/>\n"); 
	}
	dest = strcpy(dest, &len, "<input type=\"submit\" value=\"Set\""); 
	dest = strcpy(dest, &len, "/>\n</form></div>\n"); 
	//------------------
	u8* raw_enab = (u8*)RAW_ENAB; 
	dest = htmlDiv(dest, &len, 'g'); 
	dest = htmlForm(dest, &len); 
	dest = strcpy(dest, &len, 
		"Filter Data\n\
		<input type=\"submit\" name=\"filter_data\" value="); 
	if( (*raw_enab) & 0x1){
		dest = strcpy(dest, &len, "\"Enable\""); 
	}else {
		dest = strcpy(dest, &len, "\"Disable\""); 
	}
	dest = strcpy(dest, &len, "/>\n</form></div>\n"); 
	//------------------
	dest = htmlDiv(dest, &len, 'b'); 
	dest = htmlForm(dest, &len); 
	dest = strcpy(dest, &len, "Cursor control channels:\n<table>\n"); 
	dest = htmlCursorSelect(dest, &len, "+X (right)", "xpos_chan", 
		LogicalToPhysicalChan(g_mouseXpos) ); 
	dest = htmlCursorSelect(dest, &len, "-X (left)", "xneg_chan", 
		LogicalToPhysicalChan(g_mouseXneg) ); 
	dest = htmlCursorSelect(dest, &len, "+Y (down)", "ypos_chan", 
		LogicalToPhysicalChan(g_mouseYpos) ); 
	dest = htmlCursorSelect(dest, &len, "-Y (up)", "yneg_chan", 
		LogicalToPhysicalChan(g_mouseYneg) ); 
	dest = strcpy(dest, &len, 
		"</table>\n<input type=\"submit\" value=\"Save\"/>\n</form></div>\n");
	
	dest = htmlDiv(dest, &len, 'g'); 
	dest = htmlForm(dest, &len); 
	dest = strcpy(dest, &len, 
		"<input type=\"submit\" name=\"calibrate\" value=\"Calibrate Thresholds\"/>\n\
		</form>\n</div>\n"); 
		
	dest = htmlDiv(dest, &len, 'b'); 
	dest = strcpy(dest, &len, "<form action=\"/data\" method=\"POST\"/>\n"); 
	dest = strcpy(dest, &len, "get last<input type=\"submit\" name=\"rawLen\" value=\"1500\"/> samples<br"); 
	dest = strcpy(dest, &len, "/>\n</form></div>\n"); 
	//printout an 'uptime' indicator. 
	j = GTIME; 
	dest = strcpy(dest, &len, " uptime "); 
	int s = j/1000;
	int m = s/60; 
	dest = strprintf_int(dest, &len, m);
	dest = strcpy(dest, &len, ":"); 
	dest = strprintf_int(dest, &len, s - m*60);
	dest = strcpy(dest, &len, "."); 
	dest = strprintf_int(dest, &len, j - s*1000); 
	//
	dest = strcpy(dest, &len, "\n</body>\n</html>\r\n\r\n"); 
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
	return strcpy(dest, len, "<form action=\"/\" method=\"POST\">"); 
}
char* htmlCursorSelect(char* dest, int* len, char* desc, 
			char* selectName, int selectedNum){
	dest = strcpy(dest, len, "<tr><td>"); 
	dest = strcpy(dest, len, desc); 
	dest = strcpy(dest, len, "</td>\n<td><select name=\""); 
	dest = strcpy(dest, len, selectName); 
	dest = strcpy(dest, len, "\">\n"); 
	int i; 
	for(i=0; i<16; i++){
		dest = htmlCursorOption(dest, len, i, selectedNum); 
	}
	dest = strcpy(dest, len, "</select></td></tr>\n"); 
	return dest; 
}
char* htmlCursorOption(char* dest, int* len, int num, int selectedNum){
	dest = strcpy(dest, len, "<option value="); 
	dest = strprintf_int(dest, len, num); 
	if(num == selectedNum ){
		dest = strcpy(dest, len, " selected=\"selected\""); 
	}
	dest = strcpy(dest, len, ">"); 
	dest = strprintf_int(dest, len, num); 
	dest = strcpy(dest, len, "</option>\n"); 
	return dest; 
}
