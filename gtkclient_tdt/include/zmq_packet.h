#ifndef __ZMQ_PACKET_H__
#define	__ZMQ_PACKET_H__

#include "util.h"

typedef struct zmq_cont_packet {
	u64 nc; 	// 8 bytes
	u64 ns; 	// 8 bytes
	i64 tk; 	// 8 bytes
	float f;	// 4 bytes
} zmq_cont_packet;

typedef struct zmq_event_packet {
	u16 ec;		// 2 bytes
	i64 tk; 	// 8 bytes
	u16 ev;		// 2 bytes
} zmq_event_packet;

#endif