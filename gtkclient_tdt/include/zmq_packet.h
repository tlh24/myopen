#ifndef __ZMQ_PACKET_H__
#define	__ZMQ_PACKET_H__

#include "util.h"

// nb it's important that the members of these structs are ordered from
// largest to smallest so that the compiler does not silently add padding
// for byte alignment. This is because the structs are serialized
// and sent over zmq packets
//
// a more general solution would use protobufs or flatbufs or thrift or ...

typedef struct zmq_packet_header {
	u64 nc; 	// 8 bytes, number of channels
	u64 ns; 	// 8 bytes, number of samples
	i64 tk; 	// 8 bytes, tick of the first sample
} zmq_packet_header;

#endif