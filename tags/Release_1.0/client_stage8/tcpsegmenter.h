/* 
 * File:   tcpsegmenter.h
 * Author: zheng
 *
 * Created on July 6, 2010, 12:27 PM
 *
 * This class acts as a segmenter for a TCP socket.
 * It is designed to work with google protocol buffers,
 * deliniated using 2 byte length indicators.
 *
 * The core function, nextSegment(), grabs the next segment from
 * the socket buffer, and returns a const char pointer to it.
 *
 * When there are no more tokens, the nextToken() call blocks
 * and waits. Errors are signaled by null pointer return. The
 * caller should pass in an integer pointer to get the length
 * of the segment.
 *
 * Also includes functions to write to the socket in the format
 * that another TCPSegmenter can read.
 *
 * Largest segment is 2^16-1 in size.
 */
#include <google/protobuf/message.h>

#ifndef TCPSEGMENTER_H
#define	TCPSEGMENTER_H

#define TCPSEGMENTER_BUFFER_SIZE 65537 //2^16-1 +2

class TCPSegmenter {
protected:
    int     fd;     //the socket

    unsigned char*      cmdbuf;     //buffer for next message from socket
    unsigned char*      cmdbuf2;     //buffer of the same size for swapping
    unsigned char       sockbuf[TCPSEGMENTER_BUFFER_SIZE]; //buffer for everything we got from socket

    unsigned int    size; //size of buffer (cmdbuf)
    unsigned int    wptr; //pointer to where to write into cmdbuf
    unsigned int    rptr; //pointer to where to read from cmdbuf
    //at the end of a nextSegment* call, rptr points to the beginning of the next
    //segment, after the separator character.

public:
    TCPSegmenter(int fd, unsigned int bufsize);
    //fd is socket, bufsize is buffer size, should be larger than
    //the largest expected segment

    virtual ~TCPSegmenter();

    const unsigned char * nextSegment(int &res);
    //grabs next segment from socket. May block until a segment is available,
    //On error, returns null. res is alias of integer to hold number of
    //bytes in the segment. Also holds error code on error.

    const unsigned char * nextSegmentNonblock(int &res);
    //grabs next segment from buffer. If no segment is available, returns
    //null. Does not query the socket and so does not block, but
    //only looks at data already retrieved from socket.
    //res is alias of integer to hold number of bytes in segment.

    static int send(int fd, unsigned char *buf, unsigned short len);
    //sends a segment to to socket with file descriptor fd.
    //segment is held in buffer pointed to by buf, with length len.
    //returns the return value of write(), that is, if successful,
    //the number of bytes written, or 0 or less if fail. Note the
    //number of bytes written is len+2 if everything went correctly.


    static int send(int fd, const ::google::protobuf::Message& msg);
    //writes a google protocol buffer message to file fd.
    //length is figured out from the msg. Return value is
    //bytes written (total), or 0 or less if fail.
};

#endif	/* TCPSEGMENTER_H */

