#ifndef _INCLUDE_PO8ECONF_
#define _INCLUDE_PO8ECONF_

#include <vector>
#include "po8e.pb.h"
#include "lconf.h"

using namespace std;
using namespace gtkclient;

class po8eConf : public luaConf
{
public:
	po8eConf();
	~po8eConf();
	const char *name();
	bool loadConf(const char *conf);
	vector <po8eCard *> cards;
protected:
private:
	po8eCard *loadCard(size_t i);
	size_t numCards();
	bool isCard(int index);
	bool isChannel(int index);
};

#endif