Matlab with Phidgets
April 18, 2008

Matlab gets access to the Phidgets via the Phidget21 C library.

In Matlab, we use .m files as 'code' files to hold the script to access a phidget.

To set things up all you need to do is change the working directory of Matlab to
wherever the examples are and then run the example by typing the filename in the
command window.

So servo.m which moves a servo is run by typing 'servo'

The code editor opens automatically when you double click a .m file 

Details about coding for matlab:

To open a system library: 

	loadlibrary phidget21 phidget21Matlab.h;

where phidget21Matlab.h is the header file located in the local directory and plib is a
handle to refer to the library from now on.

Note that phidget21Matlab.h is not the same as phidget21.h and has special modifications to
work properly with Matlab.

here we create a generic pointer which functions as a CPhidgetServoHandle 
(which is just a typedef of long anyways) and then use calllib to call the create function
from the library for initializing the ptr:

	ptr = libpointer('int32Ptr',0);
	open = calllib('plib', 'CPhidgetServo_create', ptr);

This gets the handle from the Phidget ptr, which we need for basically all function
ie: the handle is what the ptr points to:

	handle = get(ptr, 'Value');

We then need to open the servo motor and wait until it's status indicated an attach.

Here we use the handle and also an int32 pointer to call getSerialNumber, since
we need to pass a pointer to int for the serial number:

    serial = libpointer('int32Ptr',0);
    calllib('plib', 'CPhidget_getSerialNumber', handle, serial);

We also use a timer to time the setmotorposition's but that's a matlab thing, not really important.

Note that there is no concept of funtion pointers in matlab, so we can't use events at all.
This means that we have to poll for the data. This also means that we can't use the attach event.
Since we have to use some sort of method to wait for attachment, we can use the CPhidget_waitForAttachment
method to wait for the attachment. This method takes in a handle and a timeout, with a time of 0 meaning
infinite and it won't return until the phidget is attached or the timeout expires, so you need to check
the return value - see the examples for this.