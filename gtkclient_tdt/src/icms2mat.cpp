#include <stdlib.h>
#include <stdarg.h>
#include <string.h>
#include <memory.h>
#include <math.h>
#include <matio.h>
#include <atomic>
#include <iostream>
#include "icms.pb.h"
#include "stimchan.h"
#include "matStor.h"
#include "datawriter.h"

#define u64 unsigned long long
#define i64 long long
#define u32 unsigned int

//#define _LARGEFILE_SOURCE enabled by default.
#define _FILE_OFFSET_BITS 64

#define MY_BUFFER	262144

using namespace std;
using namespace google::protobuf;
using namespace gtkclient;

int main(int argn, char **argc)
{

	GOOGLE_PROTOBUF_VERIFY_VERSION;

	ifstream in;

	if (argn != 3 && argn != 2) {
		printf("usage: icms2mat infile.pbd outfile.mat\n");
		printf(" or just: icms2mat infile.pbd\n");
		return EXIT_FAILURE;
	}

	// in file
	in.open(argc[1]);
	if (!in.good()) {
		fprintf(stderr,"Could not open %s\n", argc[1]);
		return EXIT_FAILURE;
	}

	// out file
	int nn = strlen(argc[1]);
	if (nn < 5 || nn > 511) {
		printf(" infile not .pbd?\n");
		return EXIT_FAILURE;
	}
	char s[512];
	if (argn == 2) {
		strncpy(s, argc[1], 512);
		s[nn-3] = 'm';
		s[nn-2] = 'a';
		s[nn-1] = 't';
	} else {
		strncpy(s, argc[2], 512);
	}
	MatStor ms(s);

	unsigned long packets=0;
	map<unsigned int,StimChan *> stimchans;

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
			return EXIT_FAILURE;
		}
		if (magic != ICMS_MAGIC) {
			fprintf(stderr, "packet %ld: magic value, %X, does not match expected value, %X. aborting here.\n",
			        packets+1, magic, ICMS_MAGIC);
			break;
		}

		// read size
		unsigned int sz;
		in.read((char *) &sz, sizeof (sz));
		if (in.eof())
			return EXIT_FAILURE;
		if (in.fail() || in.gcount() != sizeof (sz)) {
			fprintf(stderr, "read size failure. gcount: %ld at %d\n",
			        in.gcount(), (int) in.tellg());
			return EXIT_FAILURE;
		}
		if (sz > MY_BUFFER) {
			fprintf(stderr, "single packet too long for buffer: %u.\n", sz);
			return EXIT_FAILURE;
		}

		// read protobuf packet
		// max int32 is  2,147,483,647
		// max uint32 is 4,294,967,295
		char buf[MY_BUFFER];
		in.read(buf, sz);
		if (in.fail() || in.eof() || in.gcount() != sz) {
			fprintf(stderr, "read protobuf packet failure\n");
			return EXIT_FAILURE;
		}

		// parse protobuf
		ICMS o;
		o.Clear();
		if (!o.ParseFromArray(buf, sz)) {
			fprintf(stderr, "failed to parse protobuf packet %ld (%d bytes). aborting here.\n",
			        packets+1, sz);
			break;
		}

		unsigned int key = o.stim_chan();

		// try to find the stim chan in our map
		StimChan *sc = nullptr;
		if (stimchans.find(key) == stimchans.end()) {
			// not found, it is a new unit
			sc = new StimChan();
			if (!sc) {
				fprintf(stderr, "Out of memory\n");
				continue;
			}
			stimchans[key] = sc;
			sc->stim_chan = key;
		} else {
			// found, set pointer to exisiting stim chan
			sc = stimchans[key];
		}

		// if it exists, add stim artifact
		for (int i=0; i<o.artifact_size(); i++) {
			RecArtifact *ra = nullptr;
			ICMS_artifact a = o.artifact(i);
			ra = new RecArtifact();
			ra->rec_chan = a.rec_chan();
			ra->samples_per_wf = a.sample_size();
			for (int j=0; j<a.sample_size(); j++) {
				ra->add_wf_sample(a.sample(j));
			}
			ra->num_wf++;
			if (!sc->add_artifact(ra)) {
				fprintf(stderr, "Error for stimchan %u\n", key);
			}
		}
		// just add timestamp/tick to the stimchan's array
		if (!sc->add_event( o.ts(), o.tick())) {
			fprintf(stderr, "Error for stimchan %u\n", key);
		}

		packets++;
		//printf("parsed %ld packets\n", packets);
	}
	in.close();

	ShutdownProtobufLibrary();

	printf("Parsing complete. %lu total pulses from %lu stim chans.\n",
	       packets, stimchans.size());

	// now write each stim chan
	map<unsigned int, StimChan *>::iterator it;
	for (it = stimchans.begin(); it != stimchans.end(); ++it) {
		printf("stim ch: %d\n", (*it).second->stim_chan);
		(*it).second->save(&ms);
		ms.save(true);	// append to file
		ms.clear();
	}

	return EXIT_SUCCESS;
}
