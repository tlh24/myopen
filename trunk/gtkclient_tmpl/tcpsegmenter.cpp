/* 
 * File:   tcpsegmenter.cpp
 * Author: zheng
 * 
 * Created on July 6, 2010, 12:27 PM
 */

#include "tcpsegmenter.h"
#include <string.h>
#include <fstream>
#include <assert.h>
#include <google/protobuf/message.h>

#ifdef _WINDOWS
	#include <winsock2.h>
#else
	#include <sys/socket.h>
	#include <unistd.h>
#endif

#ifndef min
	#define min(a,b) (((a)<(b))?(a):(b))
#endif

TCPSegmenter::TCPSegmenter(int _fd, unsigned int bufsize) {
    cmdbuf=0;
    size=bufsize;
    cmdbuf=new unsigned char[size];
    cmdbuf2=new unsigned char[size];
    if (!cmdbuf || !cmdbuf2) {
        fprintf(stderr,"TCPSegmenter: failed to allocate memory\n");
    }
    wptr=0; //needs both a read and write buffer because the next* commands need to cleanup after the previous call of next*
    rptr=0;
    fd=_fd;
}

TCPSegmenter::~TCPSegmenter() {
    if (cmdbuf!=NULL) delete[] cmdbuf;
    if (cmdbuf2!=NULL) delete[] cmdbuf2;
}

//blocking version, waits for token if no token in buffer
const unsigned char * TCPSegmenter::nextSegment(int &res) {
    if (fd<0 || cmdbuf==NULL  || cmdbuf2==NULL) return 0;

    //first, we need to clean up after the previous call
    //check if everything in buffer was consumed:
     if (rptr>0 && rptr<wptr) {
        //not everything was consumed
        //shift stuff towards the front

        memcpy(cmdbuf2, &cmdbuf[rptr], (int) wptr - (int) rptr);

        //now swap the two buffers
        unsigned char *swap;
        swap = cmdbuf;
        cmdbuf = cmdbuf2;
        cmdbuf2 = swap;
        
        //update the buffer ptr
        wptr=wptr-rptr;

        //zero the rest
        memset(&cmdbuf[wptr],0,size-wptr);
    } else if (rptr>0) {
        //if everything in buffer was consumed, zero it
        memset(cmdbuf,0,size);
        wptr=0;

    }
    rptr=0;
    
    unsigned short *s=(unsigned short*)cmdbuf;
    unsigned int  end_pos=(*s)+2; 

    //now grab stuff from the socket until there is a full segment
    while (wptr<sizeof(unsigned short) || end_pos > wptr) { //no full segment in buffer

        if (size - wptr == 0) {
            //no more space in buffer
            fprintf(stderr,"TCPSegmenter: buffer too small for wptr: %u\n",wptr);

            //flush, this may cause problems
            memset(cmdbuf,0, size);
            wptr = 0;

            res=0;
            
            return 0;
        }

        memset(sockbuf, 0,sizeof (sockbuf));

        //this call is blocking, it copies data from the OS to sockbuf, a fixed
        //width buffer.
#ifdef _WINDOWS
        int ret = recv(fd, (char*) sockbuf, min(sizeof (sockbuf), size - wptr),0);
        if (ret == SOCKET_ERROR || ret==0) {
            if (ret==0)
				res=0;
			else
				res=-1;
            return 0;
        }
#else
        int ret = read(fd, sockbuf, min(sizeof (sockbuf), size - wptr));
        if (ret <= 0) {
            res=ret;
            return 0;
        }
#endif

        //copy new input from sockbuf to cmdbuf
        memcpy(&cmdbuf[wptr], &sockbuf, min((unsigned int) ret, size - wptr));

        //set up the pointers
        wptr += ret;
        assert(wptr<=size);
        end_pos=(*s)+2;
    }

    //gets here if there is a full segment in cmdbuf, that is

    //position of the end of the segment, we will use this value on the next call of next*
    rptr = end_pos;

    //set the size of the segment
    res=*s;
    
    return cmdbuf+2;//return the segement (without the size delimiter)
}


//nonblocking version. returns 0 if no token in buffer
const unsigned char * TCPSegmenter::nextSegmentNonblock(int &res) {
     if (fd<0 || cmdbuf==NULL || cmdbuf2==NULL ) return 0;

     //mostly similar to nextSegement, see that for comments.
    //check if everything in buffer was consumed:
     if (rptr>0 && rptr<wptr) {
        //not everything was consumed
        //shift stuff towards the front

        memcpy(cmdbuf2, &cmdbuf[rptr], (int) wptr - (int) rptr);

        //now swap the two buffers
        unsigned char *swap;
        swap = cmdbuf;
        cmdbuf = cmdbuf2;
        cmdbuf2 = swap;
        
        //update the buffer ptr
        wptr=wptr-rptr;

        //zero the rest
        memset(&cmdbuf[wptr],0,size-wptr);
    } else if (rptr>0) {
        //if everything in buffer was consumed, zero it
        memset(cmdbuf,0,size);
        wptr=0;

    }
    rptr=0;

    //does not actually make an OS call to check socket,
    //only checks to see if there is stuff in the local buffer

    unsigned short *s=(unsigned short*)cmdbuf;
    unsigned int  end_pos=(*s)+2;

    if (end_pos > wptr) { //no full segment in buffer
        return 0;
    }

    //position of the end of the segment
    rptr = end_pos;

    //set the size of the segment
    res=*s;

    return cmdbuf+2;
}


//send a segment to given socket in a format that TCPSegementer can
//parse
int TCPSegmenter::send(int fd, unsigned char *buf, unsigned short len)
{
    if (buf==0 || fd <0 || len==0) return 0;
    int ret;
    unsigned short s=len;
#ifdef _WINDOWS
    ret=::send(fd,(const char *)&s,2,0);
    if (ret!=2) {
            if (ret==SOCKET_ERROR) return -1;
            return ret;
    }
    ret=::send(fd,(const char *)buf,len,0);
    if (ret==SOCKET_ERROR) ret=-1;
    return ret+2;
#else
    //write the size
    ret=write(fd,&s,2);
    if (ret<2) return ret;

    //write the message
    ret=write(fd,buf,len);
	return ret+2;
#endif        
    
}

int TCPSegmenter::send(int fd, const ::google::protobuf::Message & msg) {
    if (fd<0) return 0;
    if (msg.ByteSize()>65535) return 0;//too big
#ifdef _WINDOWS
   	unsigned char * tempbuf=new unsigned char[msg.ByteSize()+1];
	if (!tempbuf) return 0;
	//memset(tempbuf,0,msg.ByteSize()+1);
	if (!msg.SerializeToArray(tempbuf,msg.ByteSize())) {
		delete[] tempbuf;
		return 0;
	}
	int ret=send(fd,(unsigned char *)tempbuf,(unsigned short)msg.ByteSize());
	delete[] tempbuf;
	return ret;
#else
    int ret=0;
    unsigned short sz=(unsigned short)msg.ByteSize();
    //write the size
    ret=write(fd,&sz,sizeof(sz));
    if (ret<=0) return ret;
    //write the message
    if (!msg.SerializeToFileDescriptor(fd)) {
        return 0;
    }

    return sizeof(sz)+sz;
#endif
    
}