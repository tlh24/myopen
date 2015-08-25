#include <boost/tokenizer.hpp>
#include "po8e_conf.h"

using namespace std;
using namespace boost;

po8eConf::po8eConf()
{
}
po8eConf::~po8eConf()
{
}
const char *po8eConf::name()
{
	return "po8eConf";
}
bool po8eConf::loadConf(const char *conf)
{
	if (!luaConf::loadConf(conf))
		return false;

	for (size_t i=0; i<numCards();i++) {
		auto card = loadCard(i);
		cards.push_back(card);
	}
	return true;
}
// calling function should free memory
po8e_card * po8eConf::loadCard(size_t idx)
{
	auto card = new po8e_card;
	size_t stack = 0;
	lua_getglobal(L, "po8e_cards");
	stack++;
	if (!lua_istable(L, -1))
		goto error;
	lua_rawgeti(L, -1, idx+1);	// lua is 1-indexed
	stack++;
	if (isCard(-1)) {
		lua_getfield(L, -1, "id");
		stack++;
		card->set_id(lua_tointeger(L, -1));
		lua_pop(L, 1);
		stack--;
		lua_getfield(L, -1, "channels");
		stack++;
		for (size_t i=1; i<=lua_objlen(L, -1); i++) { // lua is 1-indexed
			lua_rawgeti(L, -1, i);
			stack++;
			if (isChannel(-1)) {
				auto chan = card->add_channel();
				lua_getfield(L, -1, "id");
				stack++;
				chan->set_id(lua_tointeger(L, -1));
				lua_pop(L, 1);
				stack--;
				lua_getfield(L, -1, "scale_factor");
				stack++;
				if (lua_isnumber(L, -1))
					chan->set_scale_factor(lua_tointeger(L, -1));
				lua_pop(L, 1);
				stack--;
				lua_getfield(L, -1, "data_type");
				stack++;
				if (lua_isnumber(L, -1)) {
					switch (lua_tointeger(L, -1)) {
						case 0:
							chan->set_data_type(po8e_channel::NEURAL);
							break;
						case 1:
							chan->set_data_type(po8e_channel::EVENT);
							break;
						case 2:
							chan->set_data_type(po8e_channel::ANALOG);
							break;
						case 3:
							chan->set_data_type(po8e_channel::STIM_PULSES);
							break;
						case 4:
							chan->set_data_type(po8e_channel::BLANK_CLOCK);
							break;
						default:
							chan->set_data_type(po8e_channel::NEURAL);
					}
				}
				lua_pop(L, 1);
				stack--;
			}
			lua_pop(L, 1);
			stack--;
		}
	}
	else
		goto error;
	lua_pop(L, stack);
	return card;
error:
	lua_pop(L, stack);
	delete card;
	return nullptr;
}
size_t po8eConf::numCards()
{
	size_t stack = 0;
	lua_getglobal(L, "po8e_cards");
	stack++;
	if (lua_istable(L, -1)) {
		size_t num_cards = 0;
		for (size_t i=1; i<=lua_objlen(L, -1); i++) { // lua is 1-indexed
			lua_rawgeti(L, -1, i);
			stack++;
			if (isCard(-1)) {
				num_cards++;
			}
			lua_pop(L, 1);
			stack--;
		}
		lua_pop(L, stack);
		return num_cards;
	}
	lua_pop(L, stack);
	return 0;
}
// the card struct needs:
// - "id" (integer)
// - "channels" (table) of "channel" objects
bool po8eConf::isCard(int index)
{
	size_t stack = 0;
	if (!lua_istable(L, index))
		return false;
	lua_getfield(L, index, "id");
	stack++;
	if (!lua_isnumber(L, -1)) {
		printf("%s: card missing or malformed field 'id'\n", name());
		goto error;
	}
	lua_pop(L, 1);
	stack--;
	lua_getfield(L, index, "channels");
	stack++;
	if (!lua_istable(L, -1)) {
		printf("%s: card missing or malformed field 'channels'\n", name());
		goto error;
	}
	lua_pop(L, stack);
	return true;
error:
	lua_pop(L, stack);
	return false;
}
// the channel struct needs at least:
// - "id" (integer)
bool po8eConf::isChannel(int index)
{
	size_t stack = 0;
	if (!lua_istable(L, index))
		return false;
	lua_getfield(L, index, "id");
	stack++;
	if (!lua_isnumber(L, -1)) {
		printf("%s: channel missing or malformed field 'id'\n", name());
		goto error;
	}
	lua_pop(L, stack);
	return true;
error:
	lua_pop(L, stack);
	return false;
}