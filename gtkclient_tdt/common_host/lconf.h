#ifndef _INCLUDE_LCONF_
#define _INCLUDE_LCONF_

#include <string>
#include <lua.hpp>

using namespace std;

class luaConf
{
public:

	luaConf();
	~luaConf();
	virtual const char *name();
	virtual bool loadConf(const char *conf);
	bool getString(string varName, string &varValue);
	bool getBool(string varName);
	int getInt(string varName);
protected:
	lua_State *L;
private:
};

#endif
