#include <stdlib.h>
#include <stdarg.h>
#include <string.h>
#include <memory.h>
#include <math.h>
#include <matio.h>
#include <atomic>
#include <iostream>
#include "analog.pb.h"
//#include "analogchan.h"
#include "analogwriter.h"

#define u64 unsigned long long
#define i64 long long
#define u32 unsigned int

//#define _LARGEFILE_SOURCE enabled by default.
#define _FILE_OFFSET_BITS 64

using namespace std;
using namespace google::protobuf;
using namespace gtkclient;

int main(int argn, char **argc)
{

	GOOGLE_PROTOBUF_VERIFY_VERSION;

	ifstream in;

	if (argn != 2) {
		printf("usage: analogdebug infile.dat\n");
		exit(0);
	}

	// in file
	in.open(argc[1]);
	if (!in.good()) {
		fprintf(stderr,"Could not open %s\n", argc[1]);
		exit(0);
	}

	unsigned long packets=0;

	while (!in.eof()) {

		// read magic
		unsigned int magic;
		in.read((char *) &magic, sizeof(magic));
		if (in.eof())
			break;
		if (in.fail() || in.gcount() != sizeof (magic)) {
			fprintf(stderr,
			        "read magic failure. gcount: %ld at %d\n",
			        in.gcount(), (int) in.tellg());
			exit(0);
		}
		if (magic != ANALOG_MAGIC) {
			fprintf(stderr, "packet %ld: magic value, %X, does not match expected value, %X. aborting here.\n",
			        packets+1, magic, ANALOG_MAGIC);

			// check backwards and forwards 100 bytes
			int i=-100;
			in.clear();
			in.seekg(i, in.cur);
			while (i<=100) {
				in.read((char *) &magic, sizeof(magic));
				fprintf(stderr, "shift %d byte(s): %X\n", i, magic);
				in.clear();
				in.seekg(+1, in.cur);
				i++;
			}

			break;
		}

		// read size
		unsigned int sz;
		in.read((char *) &sz, sizeof (sz));
		if (in.eof())
			exit(0);
		if (in.fail() || in.gcount() != sizeof (sz)) {
			fprintf(stderr, "read size failure. gcount: %ld at %d\n",
			        in.gcount(), (int) in.tellg());
			exit(0);
		}
		if (sz > 131072) { // hardcoded for now xxx
			fprintf(stderr, "single packet too long for buffer: %u.\n", sz);
			exit(0);
		}
		fprintf(stdout, "%u\n", sz);

		// read protobuf packet
		// max int32 is  2,147,483,647
		// max uint32 is 4,294,967,295
		char buf[131072]; // xxx
		in.read(buf, sz);
		if (in.fail() || in.eof() || in.gcount() != sz) {
			fprintf(stderr, "read protobuf packet failure\n");
			exit(0);
		}

		// parse protobuf
		Analog a;
		a.Clear();
		if (!a.ParseFromArray(buf, sz)) {
			fprintf(stderr, "failed to parse protobuf packet %ld (%d bytes). aborting here.\n",
			        packets+1, sz);
			break;
		}

		packets++;

	}
	in.close();

	ShutdownProtobufLibrary();

	fprintf(stderr, "Parsing complete. %lu total packets.\n", packets+1);

	return 0;
}