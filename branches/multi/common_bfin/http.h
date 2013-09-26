#ifndef _HTTP_H_
#define _HTTP_H_
extern u32	g_httpHeaderLen; 
extern u32	g_httpContentLen; 
extern u8*	g_httpSendPtr; 
extern u32	g_httpRemainingLen; 

int	 	httpCollate(char* payload, int paylen); 
int 		httpResp(char* payload, int paylen); 
void 	httpHeader();
int 		html404();
int 		htmlGeneric(char* str); 
int 		htmlDefault();
char* 	htmlDiv(char* dest, int* len, char color);
char* 	htmlForm(char* dest, int* len);
char* 	htmlCursorSelect(char* dest, int* len, char* desc, 
				char* selectName, int selectedNum);
char* 	htmlCursorOption(char* dest, int* len, int num, int selectedNum);

#endif
