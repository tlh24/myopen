#ifndef _INCLUDE_LCONF_
#define _INCLUDE_LCONF_

#include <lua.hpp>

using namespace std;

class luaConf
{
public:

	luaConf();
	~luaConf();
	bool loadConf(const char *conf);
	bool getString(string varName, string &varValue);
	bool getBool(string varName);
private:
	lua_State *m_L;
};

#endif
