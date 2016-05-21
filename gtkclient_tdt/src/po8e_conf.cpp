#include <string>
#include <boost/tokenizer.hpp>
#include "util.h"
#include "po8e_conf.h"

using namespace std;
using namespace boost;

po8eConf::po8eConf()
{
}
po8eConf::~po8eConf()
{
	for (auto &c : cards) {
		delete c;
	}
}
const char *po8eConf::name()
{
	return "po8eConf";
}
bool po8eConf::loadConf(const char *conf)
{
	if (!luaConf::loadConf(conf))
		return false;

	for (size_t i=0; i<numCards(); i++) {
		auto card = loadCard(i);
		cards.push_back(card);
	}
	return true;
}
// returns the number of channels over all cards
size_t po8eConf::numChannels(po8e::channel_DataTypes x)
{
	size_t n = 0;
	for (auto &c : cards) {
		if (c->enabled()) {
			for (auto i=0; i<c->channel_size(); i++) {
				if (c->channel(i).data_type() == x) {
					n += 1;
				}
			}
		}
	}
	return n;
}
size_t po8eConf::numNeuralChannels() // helper
{
	return numChannels(po8e::channel::NEURAL);
}
size_t po8eConf::numEventChannels() // helper
{
	return numChannels(po8e::channel::EVENTS);
}
size_t po8eConf::numAnalogChannels() // helper
{
	return numChannels(po8e::channel::ANALOG);
}
size_t po8eConf::numIgnoredChannels() // helper
{
	return numChannels(po8e::channel::IGNORE);
}
size_t po8eConf::readSize()
{
	size_t read_size = getInt("po8e.read_size");
	if (read_size < 1) {
		read_size = 16;	// reasonable default
	}
	return read_size;
}
string po8eConf::neuralSocketName()
{
	string s = "tcp://*:1337"; // reasonable default
	getString("po8e.neural_socket", s); // s unchanged on error
	return s;
}
string po8eConf::eventsSocketName()
{
	string s = "tcp://*:1338"; // reasonable default
	getString("po8e.events_socket", s); // s unchanged on error
	return s;
}
// allocates memory
po8e::card *po8eConf::loadCard(size_t idx)
{
	auto card = new po8e::card;
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

		lua_getfield(L, -1, "enabled");
		stack++;
		if (lua_isboolean(L, -1)) {
			card->set_enabled(lua_toboolean(L, -1));
		}
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

				lua_getfield(L, -1, "name");
				stack++;
				if (lua_isstring(L, -1)) {
					chan->set_name(lua_tostring(L, -1));
				} else { // no name field set
					char s[8];
					sprintf(s, "Ch %03lu", chan->id());
					chan->set_name(s);
				}
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
					int v = (int)lua_tointeger(L, -1);
					if (po8e::channel_DataTypes_IsValid(v)) {
						chan->set_data_type(po8e::channel_DataTypes(v));
					}
				}
				lua_pop(L, 1);
				stack--;
			}
			lua_pop(L, 1);
			stack--;
		}
	} else
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
	size_t num_cards = 0;
	lua_getglobal(L, "po8e_cards");
	stack++;
	if (lua_istable(L, -1)) {
		for (size_t i=1; i<=lua_objlen(L, -1); i++) { // lua is 1-indexed
			lua_rawgeti(L, -1, i);
			stack++;
			if (isCard(-1)) {
				num_cards++;
			}
			lua_pop(L, 1);
			stack--;
		}
	}
	lua_pop(L, stack);
	return num_cards;
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
		warn("%s: card missing or malformed field 'id'", name());
		goto error;
	}
	lua_pop(L, 1);
	stack--;
	lua_getfield(L, index, "channels");
	stack++;
	if (!lua_istable(L, -1)) {
		warn("%s: card missing or malformed field 'channels'", name());
		goto error;
	}
	lua_pop(L, stack);
	return true;
error:
	lua_pop(L, stack);
	return false;
}
// the Channel struct needs at least:
// - "id" (integer)
bool po8eConf::isChannel(int index)
{
	size_t stack = 0;
	if (!lua_istable(L, index))
		return false;
	lua_getfield(L, index, "id");
	stack++;
	if (!lua_isnumber(L, -1)) {
		warn("%s: channel missing or malformed field 'id'", name());
		goto error;
	}
	lua_pop(L, stack);
	return true;
error:
	lua_pop(L, stack);
	return false;
}
