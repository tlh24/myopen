#ifndef __SQL_H__
#define __SQL_H__

extern sqlite3* g_db;

void sqliteCreateTableDouble(const char* name);
void sqliteCreateTableDouble2(const char* name);
void sqliteCreateTableBlob(const char* name);
float sqliteGetValue(int ch, const char* name, float def);
void sqliteSetValue(int ch, const char* name, float v);
float sqliteGetValue2(int ch, int un, const char* name, float def);
void sqliteSetValue2(int ch, int un, const char* name, float v);
void sqliteGetBlob(int ch, int un, const char* name, float* v, int siz);
void sqliteSetBlob(int ch, int un, const char* name, float* v, int siz);


#endif