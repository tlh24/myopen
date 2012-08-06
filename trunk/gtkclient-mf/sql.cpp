#include <stdio.h>
#include <stdlib.h>
#include <sqlite3.h>

sqlite3* g_db;

void sqliteCreateTableDouble(const char* name){
	sqlite3_stmt *plineInfo = 0;
	int rc; 
	char buf[256]; 
	snprintf(buf, 256, "create table %s(ch int PRIMARY KEY, d double);", name); 
	rc = sqlite3_prepare_v2(g_db,(const char*)buf,256, &plineInfo, 0);
	if(rc != SQLITE_OK || plineInfo == NULL)
		printf("table %s not created, probably exists\n",name); 
	else{
		sqlite3_step(plineInfo); 
	}
	sqlite3_finalize(plineInfo); 
}
void sqliteCreateTableDouble2(const char* name){
	sqlite3_stmt *plineInfo = 0;
	int rc; 
	char buf[256]; 
	snprintf(buf, 256, 
			 "create table %s(ch int, un int, d double, PRIMARY KEY(ch,un));", name); 
	rc = sqlite3_prepare_v2(g_db,(const char*)buf,256, &plineInfo, 0);
	if(rc != SQLITE_OK || plineInfo == NULL)
		printf("table %s not created, probably exists\n",name); 
	else{
		sqlite3_step(plineInfo); 
	}
	sqlite3_finalize(plineInfo); 
}
void sqliteCreateTableBlob(const char* name){
	sqlite3_stmt *plineInfo = 0;
	int rc; 
	char buf[256]; 
	snprintf(buf, 256,
			 "create table %s(ch int, un int, d BLOB, PRIMARY KEY(ch,un));", name); 
	rc = sqlite3_prepare_v2(g_db,(const char*)buf,256, &plineInfo, 0);
	if(rc != SQLITE_OK || plineInfo == NULL)
		printf("table %s not created, probably exists\n", name); 
	else{
		sqlite3_step(plineInfo); 
	}
	sqlite3_finalize(plineInfo); 
}
float sqliteGetValue(int ch, const char* name, float def){
	sqlite3_stmt *plineInfo = 0;
	int rc; 
	char buf[256]; 
	float f; 
	snprintf(buf, 256, "SELECT d FROM %s WHERE ch=%d LIMIT 1", name, ch); 
	rc = sqlite3_prepare_v2(g_db,(const char*)buf,256, &plineInfo, 0);
	if(rc != SQLITE_OK || plineInfo == NULL){
		printf("%s failed!\n", buf); 
		f = def; 
	}else{
		if(sqlite3_step(plineInfo) != SQLITE_ROW)
			f = def; 
		else {
			f = (float)sqlite3_column_double(plineInfo, 0);
		}
	}
	sqlite3_finalize(plineInfo); 
	return f; 
}
void sqliteSetValue(int ch, const char* name, float v){
	sqlite3_stmt *plineInfo = 0;
	int rc; 
	char buf[256]; 
	//first have to see if there is something in there .. if so update.
	snprintf(buf, 256, "SELECT d FROM %s WHERE ch=%d", name, ch); 
	rc = sqlite3_prepare_v2(g_db,(const char*)buf,256, &plineInfo, 0);
	rc = sqlite3_step(plineInfo); 
	sqlite3_finalize(plineInfo); 
	if(rc != SQLITE_ROW){
		snprintf(buf, 256, "INSERT INTO %s(ch,d) VALUES(%d,%f)", name, ch, v); 
		rc = sqlite3_prepare_v2(g_db,(const char*)buf,256, &plineInfo, 0);
		if(rc != SQLITE_OK || plineInfo == NULL)
			printf("%s failed!\n", buf); 
		else
			sqlite3_step(plineInfo); 
		sqlite3_finalize(plineInfo); 
	}else{
		snprintf(buf, 256, "UPDATE %s SET d=%f WHERE ch=%d;", name, v, ch); 
		rc = sqlite3_prepare_v2(g_db,(const char*)buf,256, &plineInfo, 0);
		if(rc != SQLITE_OK || plineInfo == NULL)
			printf("%s failed!\n", buf); 
		else
			sqlite3_step(plineInfo); 
		sqlite3_finalize(plineInfo); 
	}
}
float sqliteGetValue2(int ch, int un, const char* name, float def){
	sqlite3_stmt *plineInfo = 0;
	int rc; 
	char buf[256]; 
	float f; 
	snprintf(buf, 256, "SELECT d FROM %s WHERE ch=%d AND un=%d LIMIT 1", 
			 name, ch, un); 
	rc = sqlite3_prepare_v2(g_db,(const char*)buf,256, &plineInfo, 0);
	if(rc != SQLITE_OK || plineInfo == NULL){
		printf("%s failed!\n", buf); 
		f = def; 
	}else{
		if(sqlite3_step(plineInfo) != SQLITE_ROW)
			f = def; 
		else {
			f = (float)sqlite3_column_double(plineInfo, 0);
		}
	}
	sqlite3_finalize(plineInfo); 
	return f; 
}
void sqliteSetValue2(int ch, int un, const char* name, float v){
	sqlite3_stmt *plineInfo = 0;
	int rc; 
	char buf[256]; 
	//first have to see if there is something in there .. if so update.
	snprintf(buf, 256, "SELECT d FROM %s WHERE ch=%d AND un=%d", name, ch, un); 
	rc = sqlite3_prepare_v2(g_db,(const char*)buf,256, &plineInfo, 0);
	rc = sqlite3_step(plineInfo); 
	sqlite3_finalize(plineInfo); 
	if(rc != SQLITE_ROW){
		snprintf(buf, 256, "INSERT INTO %s(ch,un,d) VALUES(%d,%d,%f)", 
				 name, ch, un, v); 
		rc = sqlite3_prepare_v2(g_db,(const char*)buf,256, &plineInfo, 0);
		if(rc != SQLITE_OK || plineInfo == NULL)
			printf("%s failed!\n", buf); 
		else
			sqlite3_step(plineInfo); 
		sqlite3_finalize(plineInfo); 
	}else{
		snprintf(buf, 256, "UPDATE %s SET d=%f WHERE ch=%d AND un=%d;", 
				 name, v, ch, un); 
		rc = sqlite3_prepare_v2(g_db,(const char*)buf,256, &plineInfo, 0);
		if(rc != SQLITE_OK || plineInfo == NULL)
			printf("%s failed!\n", buf); 
		else
			sqlite3_step(plineInfo); 
		sqlite3_finalize(plineInfo); 
	}
}
void sqliteGetBlob(int ch, int un, const char* name, float* v, int siz){
	//siz is in 4 byte increments -- sizeof float.
	sqlite3_stmt *plineInfo = 0;
	int rc; 
	char buf[256]; 
	snprintf(buf, 256, "SELECT d FROM %s WHERE ch=%d AND un=%d LIMIT 1", 
			 name, ch, un); 
	rc = sqlite3_prepare_v2(g_db,(const char*)buf,256, &plineInfo, 0);
	if(rc != SQLITE_OK || plineInfo == NULL){
		printf("%s failed!\n", buf); 
	}else{
		if(sqlite3_step(plineInfo) == SQLITE_ROW){
			//check the size of the blob. 
			unsigned int s = (unsigned int)sqlite3_column_bytes(plineInfo, 0); 
			if(s != (siz * sizeof(float)))
				printf("wrong blob size! got %d\n", s); 
			else{
				float* f = (float*)sqlite3_column_blob(plineInfo, 0);
				for(int i=0; i<siz; i++)
					v[i] = f[i]; 
			}
		}
	}
	sqlite3_finalize(plineInfo); //this will free f.
}
void sqliteSetBlob(int ch, int un, const char* name, float* v, int siz){
	//size is not in bytes - it's the number of floats. 
	sqlite3_stmt *plineInfo = 0;
	int rc; 
	char buf[256]; 
	//first have to see if there is something in there .. if so update.
	snprintf(buf, 256, "SELECT d FROM %s WHERE ch=%d AND un=%d" , name, ch, un); 
	rc = sqlite3_prepare_v2(g_db,(const char*)buf,256, &plineInfo, 0);
	rc = sqlite3_step(plineInfo); 
	if(rc != SQLITE_ROW){
		snprintf(buf, 256, "INSERT INTO %s(ch,un,d) VALUES(%d,%d,?)", 
				 name, ch, un); 
		rc = sqlite3_prepare_v2(g_db,(const char*)buf,256, &plineInfo, 0);
		if(rc != SQLITE_OK || plineInfo == NULL){
			printf("%s failed!\n", buf); 
			return; 
		}
		rc = sqlite3_bind_blob(plineInfo, 1, v, siz*sizeof(float), SQLITE_STATIC);
		rc = sqlite3_step(plineInfo); 
		rc = sqlite3_finalize(plineInfo); 
	}else{
		snprintf(buf, 256, "UPDATE %s SET d=? WHERE ch=%d AND un=%d;",
				 name, ch, un); 
		rc = sqlite3_prepare_v2(g_db,(const char*)buf,256, &plineInfo, 0);
		if(rc != SQLITE_OK || plineInfo == NULL){
			printf("%s failed!\n", buf); 
			return; 
		}
		sqlite3_bind_blob(plineInfo, 1, v, siz*sizeof(float), SQLITE_STATIC);
		sqlite3_step(plineInfo); 
		sqlite3_finalize(plineInfo); 
	}
}
