#ifndef _INCLUDE_PO8ECONF_
#define _INCLUDE_PO8ECONF_

#include <vector>
#include "po8e.pb.h"
#include "lconf.h"

using namespace std;

class po8eConf : public luaConf
{
public:
	po8eConf();
	~po8eConf();
	const char *name();
	bool loadConf(const char *conf);
	size_t numChannels(po8e::channel_DataTypes x);
	size_t numNeuralChannels();
	size_t numEventChannels();
	size_t numAnalogChannels();
	size_t numIgnoredChannels();
	vector <po8e::card *> cards;
	size_t readSize();
protected:
private:
	po8e::card *loadCard(size_t i);
	size_t numCards();
	bool isCard(int index);
	bool isChannel(int index);
};

#endif