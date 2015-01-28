#include <boost/tokenizer.hpp>
#include "lconf.h"

using namespace std;
using namespace boost;

luaConf::luaConf()
{
	m_L = luaL_newstate();
	luaopen_base(m_L); 	// do we really need these?
	luaopen_math(m_L);	// maybe not?
}
luaConf::~luaConf()
{
	lua_close(m_L);
}
bool luaConf::loadConf(const char *conf)  	// returns true on success
{
	if (luaL_loadfile(m_L, conf) != 0) {
		goto error;
	}
	if (lua_pcall(m_L, 0, LUA_MULTRET, 0) != 0) {
		goto error;
	}
	printf("luaconf: loaded %s\n", conf);
	return true;
error:
	printf("luaconf: error %s\n", lua_tostring(m_L, -1));
	lua_pop(m_L, 1);	// pop error message from stack
	return false;
}
// output in varValue
// returns false if there is an error
bool luaConf::getString(string varName, string &varValue)
{

	int stack = 0;

	char_separator<char> sep(".");
	tokenizer<char_separator<char>> tokens(varName, sep);

	auto t = tokens.begin();

	lua_getglobal(m_L, (*t).c_str());	// object to stack @ -1
	stack++;

	while (true) {

		if (lua_isstring(m_L, -1)) {
			varValue = lua_tostring(m_L, -1);
			break;
		} else if (lua_istable(m_L, -1)) {
			lua_pushnil(m_L); // nil key
			if (lua_next(m_L, -2)) {
				lua_pop(m_L, 2); // pop off k,v
				t++;
				if (t != tokens.end()) {
					lua_getfield(m_L, -1, (*t).c_str());
					stack++;
				}
			} else {
				goto error;
			}
		} else {
			goto error;
		}
	}

	lua_pop(m_L, stack);
#ifdef DEBUG
	printf("luaconf: loaded %s\n",varName.c_str());
#endif
	return true;

error:
	lua_pop(m_L, stack);
	printf("luaconf: variable '%s' is empty or does not exist\n", varName.c_str());
	return false;
}
// returns false if there is an error
bool luaConf::getBool(string varName)
{

	int stack = 0;
	bool b;

	char_separator<char> sep(".");
	tokenizer<char_separator<char>> tokens(varName, sep);

	auto t = tokens.begin();

	lua_getglobal(m_L, (*t).c_str());	// object to stack @ -1
	stack++;

	while (true) {

		if (lua_isboolean(m_L, -1)) {
			b = lua_toboolean(m_L, -1) != 0;	// convert to bool (really)
			break;
		} else if (lua_istable(m_L, -1)) {
			lua_pushnil(m_L); // nil key
			if (lua_next(m_L, -2)) {
				lua_pop(m_L, 2); // pop off k,v
				t++;
				if (t != tokens.end()) {
					lua_getfield(m_L, -1, (*t).c_str());
					stack++;
				}
			} else {
				goto error;
			}
		} else {
			goto error;
		}
	}
	lua_pop(m_L, stack);
#ifdef DEBUG
	printf("luaconf: loaded %s\n",varName.c_str());
#endif
	return b;

error:
	lua_pop(m_L, stack);
	printf("luaconf: variable '%s' is empty or does not exist\n", varName.c_str());
	return false;
}
