#include <boost/tokenizer.hpp>
#include "util.h"
#include "lconf.h"

using namespace std;
using namespace boost;

luaConf::luaConf()
{
	L = luaL_newstate();
	luaopen_base(L); 	// do we really need these?
	luaopen_math(L);	// maybe not?
	luaopen_string(L);	// but maybe yes?

}
luaConf::~luaConf()
{
	lua_close(L);
}
const char *luaConf::name()
{
	return "luaConf";
}
bool luaConf::loadConf(const char *conf)  	// returns true on success
{
	if (luaL_loadfile(L, conf) != 0) {
		goto error;
	}
	if (lua_pcall(L, 0, LUA_MULTRET, 0) != 0) {
		goto error;
	}
	debug("%s: loaded %s", name(), conf);
	return true;
error:
	error("%s: %s", name(), lua_tostring(L, -1));
	lua_pop(L, 1);	// pop error message from stack
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

	lua_getglobal(L, (*t).c_str());	// object to stack @ -1
	stack++;

	while (true) {
		if (lua_isstring(L, -1)) {
			varValue = lua_tostring(L, -1);
			break;
		} else if (lua_istable(L, -1)) {
			lua_pushnil(L); // nil key
			if (lua_next(L, -2)) { // puts k,v on stack
				lua_pop(L, 2); // pop off v
				t++;
				if (t != tokens.end()) {
					lua_getfield(L, -1, (*t).c_str());
					stack++;
				}
			} else {
				goto error;
			}
		} else {
			goto error;
		}
	}

	lua_pop(L, stack);
	debug("%s: loaded %s", name(), varName.c_str());
	return true;
error:
	lua_pop(L, stack);
	error("%s: variable '%s' is empty or does not exist",
	      name(), varName.c_str());
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

	lua_getglobal(L, (*t).c_str());	// object to stack @ -1
	stack++;

	while (true) {

		if (lua_isboolean(L, -1)) {
			b = lua_toboolean(L, -1) != 0;	// convert to bool (really)
			break;
		} else if (lua_istable(L, -1)) {
			lua_pushnil(L); // nil key
			if (lua_next(L, -2)) {
				lua_pop(L, 2); // pop off k,v
				t++;
				if (t != tokens.end()) {
					lua_getfield(L, -1, (*t).c_str());
					stack++;
				}
			} else {
				goto error;
			}
		} else {
			goto error;
		}
	}
	lua_pop(L, stack);
	debug("%s: loaded %s", name(), varName.c_str());
	return b;
error:
	lua_pop(L, stack);
	error("%s: variable '%s' is empty or does not exist",
	      name(), varName.c_str());
	return false;
}
// returns 0 if there is an error
int luaConf::getInt(string varName)
{
	size_t stack = 0;
	int x;

	char_separator<char> sep(".");
	tokenizer<char_separator<char>> tokens(varName, sep);

	auto t = tokens.begin();

	lua_getglobal(L, (*t).c_str());	// object to stack @ -1
	stack++;

	while (true) {
		if (lua_isnumber(L, -1)) {
			x = lua_tointeger(L, -1);
			break;
		} else if (lua_istable(L, -1)) {
			lua_pushnil(L); // nil key
			if (lua_next(L, -2)) {
				lua_pop(L, 2); // pop off k,v
				t++;
				if (t != tokens.end()) {
					lua_getfield(L, -1, (*t).c_str());
					stack++;
				}
			} else {
				goto error;
			}
		} else {
			goto error;
		}
	}
	lua_pop(L, stack);
	debug("%s: loaded %s", name(), varName.c_str());
	return x;
error:
	lua_pop(L, stack);
	error("%s: variable '%s' is empty or does not exist",
	      name(), varName.c_str());
	return 0;
}