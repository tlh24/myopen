#ifdef __cplusplus
extern "C" {
#endif

 /*! \mainpage Phidget21 C API Documentation
  *
  * Describes the Application Program Interface (API) for each Phidget device.  
  * The API can be used by a number of languages; 
  * this manual discusses use via C and the code examples reflect this.
  *
  * \section howto_sec How to use Phidgets
  Phidgets are an easy to use set of building blocks for low cost sensing and control from your PC.  
  Using the Universal Serial Bus (USB) as the basis for all Phidgets, the complexity is managed behind 
  this easy to use and robust Application Program Interface (API) library.

  The library was written originally for Windows, but has been ported to MacOS and Linux.  
  Although the library is written in C, the functions can be called from a number of languages including C, C++, Objective-C, Matlab, etc.  
  The source code is freely available for reference/debugging purposes.

  See the <a class="el" href="modules.html">Modules</a> section for the API documentation.

  See \ref phidcommon for calls common to all phidgets.

  Refer to the <a class="el" href="http://www.phidgets.com/information.php#products" target="_blank">Product manual</a> for your Phidget and the 
  <a class="el" href="http://www.phidgets.com/documentation/Programming_Manual.pdf" target="_blank">Programming Manual</a> for more detailed, language inspecific API documentation. 
  Also, there are a set of C/C++ examples available for download.

  \section general_sec General Usage
  Phidgets in C are accessed/controlled via handles. Every Phidget has it's own Handle, as well as a generic Phidget handle. These handles are simply pointers
  from the user's perspective - internally, they point to structures. Almost every function in the API takes a Phidget handle as the first argument.

  phidget21.h contains the API calls for all Phidgets. It should be included in any programs which need to access the Phidget C Library from C/C++.

  Note that this file is not distributed in the source, this file is generated from the source using the C preproccessor. It is installed with the libraries.

  The first step is to create the handle. Every phidget has it's own _create function. This creates space for the structure internally and gives you a 
  valid Handle for passing to all other Phidget functions.

  The next step is to register event handlers. These need to be registered now, because they only throw events in the future, 
  and if they are registered later, you will miss events. Every Phidget event takes a Phidget handle, a function callback pointer and
  a user defined pointer, which is passed back from within the callback.

  The next step is to open the Phidget. This is done with either \ref CPhidget_open, \ref CPhidget_openRemote or \ref CPhidget_openRemoteIP, depending on whether you want
  to open the Phidget locally or over the network. Open returns right away (is asynchronous) so you have to either wait for the attach event, 
  or call \ref CPhidget_waitForAttachment before using the handle further.

  The next step it to actually use the Phidget. Once attached, all functions can be called. Device specific handles should be cast to \ref CPhidgetHandle for use
  with the common API functions.

  Once finished, you should call first \ref CPhidget_close and then \ref CPhidget_delete to clean up the connection to the Phidget and the Handle before exiting.

  \section return_sec Return Codes
  Every Phidget function returns an int. A return code of 0 means success, anything else means failure. The failure codes are documented here: \ref phidconst.

  When a value is unknown, in addition to returning an error code, the pointer will be set to one of the unknonwn values documented here: \ref phidconst.
  *
  */

/** \defgroup phidgets Specific Phidgets
 */

/** \defgroup phidcommon Phidget Common
 * Calls common to all Phidgets. See the programming manual for more specific API details, supported functionality, units, etc.
 * @{
 */

/**
 * A phidget handle.
 */
typedef struct _CPhidget *CPhidgetHandle;

/**
 * Timestamp structure - usually initialized to 0.
 */
typedef struct _CPhidget_Timestamp
{
 int seconds;			/**< Number of seconds since timing began */
 int microseconds;		/**< Number of microseconds since last second passed - range is 0 - 999999 */
} CPhidget_Timestamp, *CPhidget_TimestampHandle;

/** \addtogroup phidconst
 * @{
 */

/**
 * Phidget device class uniquely identifies a class of Phidgets.
 */
typedef enum
{
 PHIDCLASS_NOTHING = 1,			/**< Nothing */
 PHIDCLASS_ACCELEROMETER,		/**< Phidget Accelerometer */
 PHIDCLASS_ADVANCEDSERVO,		/**< Phidget Advanced Servo */
 PHIDCLASS_ENCODER,				/**< Phidget Encoder */
 PHIDCLASS_GPS,					/**< Phidget GPS */
 PHIDCLASS_GYROSCOPE,			/**< Phidget Gyroscope */
 PHIDCLASS_INTERFACEKIT,		/**< Phidget Interface Kit */
 PHIDCLASS_LED,					/**< Phidget LED */
 PHIDCLASS_MOTORCONTROL,		/**< Phidget Motor Control */
 PHIDCLASS_PHSENSOR,				/**< Phidget PH Sensor */
 PHIDCLASS_RFID,				/**< Phidget RFID */
 PHIDCLASS_SERVO,				/**< Phidget Servo */
 PHIDCLASS_STEPPER,				/**< Phidget Stepper */
 PHIDCLASS_TEMPERATURESENSOR,	    /**< Phidget Temperature Sensor */
 PHIDCLASS_TEXTLCD,				/**< Phidget TextLCD */
 PHIDCLASS_TEXTLED,				/**< Phidget TextLED */
 PHIDCLASS_WEIGHTSENSOR,		/**< Phidget Weight Sensor */

} CPhidget_DeviceClass;

/**
 * Phidget device id uniquely identifies a specific type of Phidget.
 */
typedef enum
{

 /* These are all current devices */
 PHIDID_ACCELEROMETER_2AXIS = 0x071,						/**< Phidget 2-axis Accelerometer (1053, 1054) */
 PHIDID_ACCELEROMETER_3AXIS = 0x07E,						/**< Phidget 3-axis Accelerometer (1059) */
 PHIDID_ADVANCEDSERVO_1MOTOR = 0x082,						/**< Phidget 1 Motor Advanced Servo (1066) */
 PHIDID_ADVANCEDSERVO_8MOTOR = 0x03A,						/**< Phidget 8 Motor Advanced Servo (1061) */
 PHIDID_BIPOLAR_STEPPER_1MOTOR = 0x07B,					/**< Phidget 1 Motor Bipolar Stepper Controller with 4 Digital Inputs (1063) */
 PHIDID_ENCODER_1ENCODER_1INPUT = 0x04B,				/**< Phidget Encoder - Mechanical (1052) */
 PHIDID_ENCODER_HS_1ENCODER = 0x080,						/**< Phidget High Speed Encoder (1057) */
 PHIDID_INTERFACEKIT_0_0_4 = 0x040,						/**< Phidget Interface Kit 0/0/4 (1014) */
 PHIDID_INTERFACEKIT_0_0_8 = 0x081,						/**< Phidget Interface Kit 0/0/8 (1017) */
 PHIDID_INTERFACEKIT_0_16_16 = 0x044,						/**< Phidget Interface Kit 0/16/16 (1012) */
 PHIDID_INTERFACEKIT_8_8_8 = 0x045,						/**< Phidget Interface Kit 8/8/8 (1013, 1018, 1019) */
 PHIDID_INTERFACEKIT_8_8_8_w_LCD = 0x07D,				/**< Phidget Interface Kit 8/8/8 with TextLCD (1201, 1202, 1203) */
 PHIDID_LED_64 = 0x04A,									/**< Phidget LED 64 (1030) */
 PHIDID_LINEAR_TOUCH = 0x076,								/**< Phidget Linear Touch (1015) */
 PHIDID_MOTORCONTROL_HC_2MOTOR = 0x059,					/**< Phidget 2 Motor High Current Motor Controller (1064) */
 PHIDID_MOTORCONTROL_LV_2MOTOR_4INPUT = 0x058,			/**< Phidget 2 Motor Low Voltage Motor Controller with 4 Digital Inputs (1060) */
 PHIDID_PHSENSOR = 0x074,								/**< Phidget PH Sensor (1058) */
 PHIDID_RFID_2OUTPUT = 0x031,								/**< Phidget RFID with Digital Outputs and Onboard LED (1023) */
 PHIDID_ROTARY_TOUCH = 0x077,								/**< Phidget Rotary Touch (1016) */
 PHIDID_SERVO_1MOTOR = 0x039,								/**< Phidget 1 Motor Servo Controller (1000) */
 PHIDID_TEMPERATURESENSOR = 0x070,						/**< Phidget Temperature Sensor (1051) */
 PHIDID_TEXTLCD_2x20_w_8_8_8 = 0x17D,						/**< Phidget TextLCD with Interface Kit 8/8/8 (1201, 1202, 1203) */
 PHIDID_UNIPOLAR_STEPPER_4MOTOR = 0x07A,				/**< Phidget 4 Motor Unipolar Stepper Controller (1062) */

 /* These are all past devices (no longer sold) */
 PHIDID_INTERFACEKIT_0_8_8_w_LCD = 0x053,				/**< Phidget Interface Kit 0/8/8 with TextLCD (1219, 1220, 1221) */
 PHIDID_INTERFACEKIT_4_8_8 = 4,							/**< Phidget Interface Kit 4/8/8 */
 PHIDID_RFID = 0x030,										/**< Phidget RFID without Digital Outputs */
 PHIDID_SERVO_1MOTOR_OLD = 2,							/**< Phidget 1 Motor Servo Controller - Old Version */
 PHIDID_SERVO_4MOTOR = 0x038,								/**< Phidget 4 Motor Servo Controller (1001) */
 PHIDID_SERVO_4MOTOR_OLD = 3,							/**< Phidget 4 Motor Servo Controller - Old Version */
 PHIDID_TEXTLCD_2x20 = 0x052,								/**< Phidget TextLCD without Interface Kit (1210) */
 PHIDID_TEXTLCD_2x20_w_0_8_8 = 0x153,						/**< Phidget TextLCD with Interface Kit 0/8/8 (1219, 1220, 1221) */
 PHIDID_TEXTLED_1x8 = 0x049,								/**< Phidget TextLED 1x8 */
 PHIDID_TEXTLED_4x8 = 0x048,								/**< Phidget TextLED 4x8 (1040) */
 PHIDID_WEIGHTSENSOR = 0x072,								/**< Phidget Weight Sensor (1050) */

} CPhidget_DeviceID;
/** @} */

//Regular Versions

//Versions for Deprecation

/* used in network events */

/**
 * Opens a Phidget.
 * @param phid A phidget handle.
 * @param serialNumber Serial number. Specify -1 to open any.
 */
__declspec (dllimport)
     int __stdcall CPhidget_open (CPhidgetHandle phid, int serialNumber);
/**
 * Closes a Phidget.
 * @param phid An opened phidget handle.
 */
__declspec (dllimport)
     int __stdcall CPhidget_close (CPhidgetHandle phid);
/**
 * Frees a Phidget handle.
 * @param phid A closed phidget handle.
 */
__declspec (dllimport)
     int __stdcall CPhidget_delete (CPhidgetHandle phid);
/**
 * Sets a detach handler callback function. This is called when this Phidget is unplugged from the system.
 * @param phid A phidget handle.
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidget_set_OnDetach_Handler (CPhidgetHandle phid, int (__stdcall * fptr) (CPhidgetHandle phid, void *userPtr), void *userPtr);
/**
 * Sets an attach handler callback function. This is called when this Phidget is plugged into the system, and is ready for use.
 * @param phid A phidget handle.
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidget_set_OnAttach_Handler (CPhidgetHandle phid, int (__stdcall * fptr) (CPhidgetHandle phid, void *userPtr), void *userPtr);
/**
 * Sets a server connect handler callback function. This is used for opening Phidgets remotely, and is called when a connection to the sever has been made.
 * @param phid A phidget handle.
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidget_set_OnServerConnect_Handler (CPhidgetHandle phid, int (__stdcall * fptr) (CPhidgetHandle phid, void *userPtr), void *userPtr);
/**
 * Sets a server disconnect handler callback function. This is used for opening Phidgets remotely, and is called when a connection to the server has been lost.
 * @param phid A phidget handle.
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidget_set_OnServerDisconnect_Handler (CPhidgetHandle phid, int (__stdcall * fptr) (CPhidgetHandle phid, void *userPtr), void *userPtr);
/**
 * Sets the error handler callback function. This is called when an asynchronous error occurs.
 * @param phid A phidget handle.
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidget_set_OnError_Handler (CPhidgetHandle phid, int (__stdcall * fptr) (CPhidgetHandle phid, void *userPtr, int errorCode, const char *errorString), void *userPtr);
/**
 * Gets the specific name of a Phidget.
 * @param phid An attached phidget handle.
 * @param deviceName A pointer which will be set to point to a char array containing the device name.
 */
__declspec (dllimport)
     int __stdcall CPhidget_getDeviceName (CPhidgetHandle phid, const char **deviceName);
/**
 * Gets the serial number of a Phidget.
 * @param phid An attached phidget handle.
 * @param serialNumber An int pointer for returning the serial number.
 */
__declspec (dllimport)
     int __stdcall CPhidget_getSerialNumber (CPhidgetHandle phid, int *serialNumber);
/**
 * Gets the firmware version of a Phidget.
 * @param phid An attached phidget handle.
 * @param deviceVersion An int pointer for returning the device version.
 */
__declspec (dllimport)
     int __stdcall CPhidget_getDeviceVersion (CPhidgetHandle phid, int *deviceVersion);
/**
 * Gets the attached status of a Phidget.
 * @param phid A phidget handle.
 * @param deviceStatus An int pointer for returning the device status. Possible codes are \ref PHIDGET_ATTACHED and \ref PHIDGET_NOTATTACHED.
 */
__declspec (dllimport)
     int __stdcall CPhidget_getDeviceStatus (CPhidgetHandle phid, int *deviceStatus);
/**
 * Gets the library version. This contains a version number and a build date.
 * @param libraryVersion A pointer which will be set to point to a char array containing the library version string.
 */
__declspec (dllimport)
     int __stdcall CPhidget_getLibraryVersion (const char **libraryVersion);
/**
 * Gets the type (class) of a Phidget.
 * @param phid An attached phidget handle.
 * @param deviceType A pointer which will be set to a char array containing the device type string.
 */
__declspec (dllimport)
     int __stdcall CPhidget_getDeviceType (CPhidgetHandle phid, const char **deviceType);
/**
 * Gets the label of a Phidget.
 * @param phid An attached phidget handle.
 * @param deviceLabel A pointer which will be set to a char array containing the device label string.
 */
__declspec (dllimport)
     int __stdcall CPhidget_getDeviceLabel (CPhidgetHandle phid, const char **deviceLabel);
/**
 * Sets the label of a Phidget. Note that this is nut supported on very old Phidgets, and not yet supported in Windows.
 * @param phid An attached phidget handle.
 * @param deviceLabel A string containing the label to be set.
 */
__declspec (dllimport)
     int __stdcall CPhidget_setDeviceLabel (CPhidgetHandle phid, const char *deviceLabel);
/**
 * Gets the description for an error code.
 * @param errorCode The error code to get the description of.
 * @param errorString A pointer which will be set to a char array containing the error description string.
 */
__declspec (dllimport)
     int __stdcall CPhidget_getErrorDescription (int errorCode, const char **errorString);
/**
 * Waits for attachment to happen. This can be called wirght after calling \ref CPhidget_open, as an alternative to using the attach handler.
 * @param phid An opened phidget handle.
 * @param milliseconds Time to wait for the attachment. Specify 0 to wait forever.
 */
__declspec (dllimport)
     int __stdcall CPhidget_waitForAttachment (CPhidgetHandle phid, int milliseconds);
/**
 * Gets the server ID of a remotely opened Phidget. This will fail if the Phidget was opened locally.
 * @param phid A connected phidget handle.
 * @param serverID A pointer which will be set to a char array containing the server ID string.
 */
__declspec (dllimport)
     int __stdcall CPhidget_getServerID (CPhidgetHandle phid, const char **serverID);
/**
 * Gets the address and port of a remotely opened Phidget. This will fail if the Phidget was opened locally.
 * @param phid A connected phidget handle.
 * @param address A pointer which will be set to a char array containing the address string.
 * @param port An int pointer for returning the port number.
 */
__declspec (dllimport)
     int __stdcall CPhidget_getServerAddress (CPhidgetHandle phid, const char **address, int *port);
/**
 * Gets the connected to server status of a remotely opened Phidget. This will fail if the Phidget was opened locally.
 * @param phid An opened phidget handle.
 * @param serverStatus An int pointer for returning the server status. Possible codes are \ref PHIDGET_ATTACHED and \ref PHIDGET_NOTATTACHED.
 */
__declspec (dllimport)
     int __stdcall CPhidget_getServerStatus (CPhidgetHandle phid, int *serverStatus);
/**
 * Gets the device ID of a Phidget.
 * @param phid An attached phidget handle.
 * @param deviceID The device ID constant.
 */
__declspec (dllimport)
     int __stdcall CPhidget_getDeviceID (CPhidgetHandle phid, CPhidget_DeviceID * deviceID);
/**
 * Gets the class of a Phidget.
 * @param phid An attached phidget handle.
 * @param deviceClass The device class constant.
 */
__declspec (dllimport)
     int __stdcall CPhidget_getDeviceClass (CPhidgetHandle phid, CPhidget_DeviceClass * deviceClass);
/** @} */

/** \defgroup phiddict Phidget Dictionary 
 * Calls specific to the Phidget Dictionary.
 * @{
 */

/**
 * Possible reasons for a key event.
 */
     typedef enum
     {
      PHIDGET_DICTIONARY_VALUE_CHANGED = 1,	/**< The value of an existing key/value pair changed. */
      PHIDGET_DICTIONARY_ENTRY_ADDED,			/**< A new key/value pair was added. */
      PHIDGET_DICTIONARY_ENTRY_REMOVING,		/**< A key is being removed. */
      PHIDGET_DICTIONARY_CURRENT_VALUE			/**< Initial state received once a handler was added. */
     } CPhidgetDictionary_keyChangeReason;

/**
 * A Phidget Dictionary handle.
 */
     typedef struct _CPhidgetDictionary *CPhidgetDictionaryHandle;
/**
 * A Dictionary key listener handle.
 */
     typedef struct _CPhidgetDictionaryListener *CPhidgetDictionaryListenerHandle;

/**
 * Creates a Phidget Dictionary handle.
 * @param dict A pointer to an unallocated phidget dictionary handle.
 */
__declspec (dllimport)
     int __stdcall CPhidgetDictionary_create (CPhidgetDictionaryHandle * dict);
/**
 * Closes the connection to a Phidget Dictionary.
 * @param dict An opened phidget dictionary handle.
 */
__declspec (dllimport)
     int __stdcall CPhidgetDictionary_close (CPhidgetDictionaryHandle dict);
/**
 * Frees a Phidget Dictionary handle.
 * @param dict A closed dictionary handle.
 */
__declspec (dllimport)
     int __stdcall CPhidgetDictionary_delete (CPhidgetDictionaryHandle dict);
/**
 * Sets the error handler callback function. This is called when an asynchronous error occurs.
 * @param dict A phidget dictionary handle.
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidgetDictionary_set_OnError_Handler (CPhidgetDictionaryHandle dict,
							   int (__stdcall * fptr) (CPhidgetDictionaryHandle, void *userPtr, int errorCode, const char *errorString), void *userPtr);
/**
 * Adds a key/value pair to the dictionary. Or, changes an existing key's value.
 * @param dict A connected dictionary handle.
 * @param key The key value.
 * @param value The value value.
 * @param persistent Whether the key stays in the dictionary after disconnection.
 */
__declspec (dllimport)
     int __stdcall CPhidgetDictionary_addKey (CPhidgetDictionaryHandle dict, const char *key, const char *value, int persistent);
/**
 * Removes a set of keys from the dictionary.
 * @param dict A connected dictionary handle.
 * @param pattern A regular expression representing th eset of keys to remove.
 */
__declspec (dllimport)
     int __stdcall CPhidgetDictionary_removeKey (CPhidgetDictionaryHandle dict, const char *pattern);
/**
 * Callback function for KeyChange events.
 * @param dict Dictionary from which this event originated.
 * @param userPtr User defined data.
 * @param key Key value.
 * @param value Value value.
 * @param reason Reason for KeyChange event.
 */
     typedef int (__stdcall * CPhidgetDictionary_OnKeyChange_Function) (CPhidgetDictionaryHandle dict, void *userPtr, const char *key, const char *value, CPhidgetDictionary_keyChangeReason reason);
/**
 * Adds a key listener to an opened dictionary. Note that this should only be called after the connection to the
 * dictionary has been made - unlike all other events.
 * @param dict A connected dictionary handle.
 * @param dictlistener A pointer to an unallocated dictionary key listener handle.
 * @param pattern A regular expression representing the set of keys to monitor.
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidgetDictionary_set_OnKeyChange_Handler (CPhidgetDictionaryHandle dict, CPhidgetDictionaryListenerHandle * dictlistener, const char *pattern,
							       CPhidgetDictionary_OnKeyChange_Function fptr, void *userPtr);
/**
 * Removes a key listener.
 * @param dictlistener The dictionary key listener created by \ref CPhidgetDictionary_set_OnKeyChange_Handler
 */
__declspec (dllimport)
     int __stdcall CPhidgetDictionary_remove_OnKeyChange_Handler (CPhidgetDictionaryListenerHandle dictlistener);
/**
 * Gets a key value. If more then one key matches, only the first value is returned.
 * @param dict A phidget dictionary handle.
 * @param key A key value to look up.
 * @param value A user array for the value to be stored in. Set to NULL if the key does not exist.
 * @param valuelen Length of the value array.
 */
__declspec (dllimport)
     int __stdcall CPhidgetDictionary_getKey (CPhidgetDictionaryHandle dict, const char *key, char *value, int valuelen);
/**
 * Sets a server connect handler callback function. This is called when a connection to the sever has been made.
 * @param dict A phidget dictionary handle.
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidgetDictionary_set_OnServerConnect_Handler (CPhidgetDictionaryHandle dict, int (__stdcall * fptr) (CPhidgetDictionaryHandle dict, void *userPtr), void *userPtr);
/**
 * Sets a server disconnect handler callback function. This is called when a connection to the server has been lost.
 * @param dict A phidget dictionary handle.
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidgetDictionary_set_OnServerDisconnect_Handler (CPhidgetDictionaryHandle dict, int (__stdcall * fptr) (CPhidgetDictionaryHandle dict, void *userPtr), void *userPtr);
/**
 * Gets the server ID.
 * @param dict A connected dictionary handle.
 * @param serverID A pointer which will be set to a char array containing the server ID string.
 */
__declspec (dllimport)
     int __stdcall CPhidgetDictionary_getServerID (CPhidgetDictionaryHandle dict, const char **serverID);
/**
 * Gets the address and port.
 * @param dict A connected dictionary handle.
 * @param address A pointer which will be set to a char array containing the address string.
 * @param port An int pointer for returning the port number.
 */
__declspec (dllimport)
     int __stdcall CPhidgetDictionary_getServerAddress (CPhidgetDictionaryHandle dict, const char **address, int *port);
/**
 * Gets the connected to server status.
 * @param dict An opened dictionary handle.
 * @param serverStatus An int pointer for returning the server status. Possible codes are \ref PHIDGET_ATTACHED and \ref PHIDGET_NOTATTACHED.
 */
__declspec (dllimport)
     int __stdcall CPhidgetDictionary_getServerStatus (CPhidgetDictionaryHandle dict, int *serverStatus);
/** @} */

/** \defgroup phidmanager Phidget Manager 
 * Calls specific to the Phidget Manager. The Phidget Manager allows enumeration of all connected devices and notification of device
 * attach and detach events.
 * @{
 */

/**
 * A Phidget Manager handle.
 */
     typedef struct _CPhidgetManager *CPhidgetManagerHandle;

/**
 * Creates a Phidget Manager handle.
 * @param phidm A pointer to an empty phidget manager handle.
 */
__declspec (dllimport)
     int __stdcall CPhidgetManager_create (CPhidgetManagerHandle * phidm);
/**
 * Opens a Phidget Manager.
 * @param phidm A phidget manager handle.
 */
__declspec (dllimport)
     int __stdcall CPhidgetManager_open (CPhidgetManagerHandle phidm);
/**
 * Closes a Phidget Manager.
 * @param phidm An opened phidget manager handle.
 */
__declspec (dllimport)
     int __stdcall CPhidgetManager_close (CPhidgetManagerHandle phidm);
/**
 * Frees a Phidget Manager handle.
 * @param phidm A closed phidget manager handle.
 */
__declspec (dllimport)
     int __stdcall CPhidgetManager_delete (CPhidgetManagerHandle phidm);
/**
 * Sets an attach handler callback function. This is called when a Phidget is plugged into the system.
 * @param phidm A phidget manager handle.
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidgetManager_set_OnAttach_Handler (CPhidgetManagerHandle phidm, int (__stdcall * fptr) (CPhidgetHandle phid, void *userPtr), void *userPtr);
/**
 * Sets a detach handler callback function. This is called when a Phidget is unplugged from the system.
 * @param phidm A phidget manager handle.
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidgetManager_set_OnDetach_Handler (CPhidgetManagerHandle phidm, int (__stdcall * fptr) (CPhidgetHandle phid, void *userPtr), void *userPtr);
/**
 * Gets a list of all currently attached Phidgets. When you are finished with the list, free it with CPhidgetManager_freeAttachedDevicesArray.
 * @param phidm An opened phidget manager handle.
 * @param phidArray An empty pointer for returning the list of Phidgets. Note that this list is created internally, you don't need to pass in a array.
 * @param count An int pointer for returning the list size
 */
__declspec (dllimport)
     int __stdcall CPhidgetManager_getAttachedDevices (CPhidgetManagerHandle phidm, CPhidgetHandle * phidArray[], int *count);
/**
 * Frees the array that is allocated when CPhidgetManager_getAttachedDevices is called. Since the array is malloced internally to the library, it
 * should also be freed internally to the library.
 * @param phidArray An array of CPhidgetHandles.
 */
__declspec (dllimport)
     int __stdcall CPhidgetManager_freeAttachedDevicesArray (CPhidgetHandle phidArray[]);
/**
 * Sets the error handler callback function. This is called when an asynchronous error occurs.
 * @param phidm A phidget manager handle.
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidgetManager_set_OnError_Handler (CPhidgetManagerHandle phidm, int (__stdcall * fptr) (CPhidgetManagerHandle phidm, void *userPtr, int errorCode, const char *errorString),
							void *userPtr);
/**
 * Sets a server connect handler callback function. This is used for opening Phidget Managers remotely, and is called when a connection to the sever has been made.
 * @param phidm A phidget manager handle.
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidgetManager_set_OnServerConnect_Handler (CPhidgetManagerHandle phidm, int (__stdcall * fptr) (CPhidgetManagerHandle phidm, void *userPtr), void *userPtr);
/**
 * Sets a server disconnect handler callback function. This is used for opening Phidget Managers remotely, and is called when a connection to the server has been lost.
 * @param phidm A phidget manager handle.
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidgetManager_set_OnServerDisconnect_Handler (CPhidgetManagerHandle phidm, int (__stdcall * fptr) (CPhidgetManagerHandle phidm, void *userPtr), void *userPtr);
/**
 * Gets the server ID of a remotely opened Phidget Manager. This will fail if the manager was opened locally.
 * @param phidm A connected phidget manager handle.
 * @param serverID A pointer which will be set to a char array containing the server ID string.
 */
__declspec (dllimport)
     int __stdcall CPhidgetManager_getServerID (CPhidgetManagerHandle phidm, const char **serverID);
/**
 * Gets the address and port of a remotely opened Phidget Manager. This will fail if the manager was opened locally.
 * @param phidm A connected phidget manager handle.
 * @param address A pointer which will be set to a char array containing the address string.
 * @param port An int pointer for returning the port number.
 */
__declspec (dllimport)
     int __stdcall CPhidgetManager_getServerAddress (CPhidgetManagerHandle phidm, const char **address, int *port);
/**
 * Gets the connected to server status of a remotely opened Phidget Manager. This will fail if the manager was opened locally.
 * @param phidm An opened phidget manager handle.
 * @param serverStatus An int pointer for returning the server status. Possible codes are \ref PHIDGET_ATTACHED and \ref PHIDGET_NOTATTACHED.
 */
__declspec (dllimport)
     int __stdcall CPhidgetManager_getServerStatus (CPhidgetManagerHandle phidm, int *serverStatus);

/** @} */

/** \addtogroup phidcommon
 * @{
 */
/**
 * Opens a Phidget remotely by ServerID. Note that this requires Bonjour (mDNS) to be running on both the host and the server.
 * @param phid A phidget handle.
 * @param serial Serial number. Specify -1 to open any.
 * @param serverID Server ID. Specify NULL to open any.
 * @param password Password. Can be NULL if the server is running unsecured.
 */
__declspec (dllimport)
     int __stdcall CPhidget_openRemote (CPhidgetHandle phid, int serial, const char *serverID, const char *password);
/**
 * Opens a Phidget remotely by address and port.
 * @param phid A phidget handle.
 * @param serial Serial number. Specify -1 to open any.
 * @param address Address. This can be a hostname or IP address.
 * @param port Port number. Default is 5001.
 * @param password Password. Can be NULL if the server is running unsecured.
 */
__declspec (dllimport)
     int __stdcall CPhidget_openRemoteIP (CPhidgetHandle phid, int serial, const char *address, int port, const char *password);
/** @} */

/** \addtogroup phidmanager
 * @{
 */
/**
 * Opens a Phidget manager remotely by ServerID. Note that this requires Bonjour (mDNS) to be running on both the host and the server.
 * @param phidm A phidget manager handle.
 * @param serverID Server ID. Specify NULL to open any.
 * @param password Password. Can be NULL if the server is running unsecured.
 */
__declspec (dllimport)
     int __stdcall CPhidgetManager_openRemote (CPhidgetManagerHandle phidm, const char *serverID, const char *password);
/**
 * Opens a Phidget manager remotely by address and port.
 * @param phidm A phidget manager handle.
 * @param address Address. This can be a hostname or IP address.
 * @param port Port number. Default is 5001.
 * @param password Password. Can be NULL if the server is running unsecured.
 */
__declspec (dllimport)
     int __stdcall CPhidgetManager_openRemoteIP (CPhidgetManagerHandle phidm, const char *address, int port, const char *password);
/** @} */

/** \addtogroup phiddict
 * @{
 */
/**
 * Opens a Phidget dictionary by ServerID. Note that this requires Bonjour (mDNS) to be running on both the host and the server.
 * @param dict A phidget dictionary handle.
 * @param serverID Server ID. Specify NULL to open any.
 * @param password Password. Can be NULL if the server is running unsecured.
 */
__declspec (dllimport)
     int __stdcall CPhidgetDictionary_openRemote (CPhidgetDictionaryHandle dict, const char *serverID, const char *password);
/**
 * Opens a Phidget dictionary by address and port.
 * @param dict A phidget dictionary handle.
 * @param address Address. This can be a hostname or IP address.
 * @param port Port number. Default is 5001.
 * @param password Password. Can be NULL if the server is running unsecured.
 */
__declspec (dllimport)
     int __stdcall CPhidgetDictionary_openRemoteIP (CPhidgetDictionaryHandle dict, const char *address, int port, const char *password);
/** @} */

/** \defgroup phidlog Phidget Logging 
 * Logging is provided mainly for debugging purposes. Enabling logging will output internal library
 * information that can be used to find bugs with the help of Phidgetd Inc. Alternatively, the user
 * can enable and write to the log for their own uses.
 * @{
 */

     typedef enum
     {
      PHIDGET_LOG_CRITICAL = 1,		/**< Really important errors that can't be recovered. */
      PHIDGET_LOG_ERROR,			/**< Errors that are recovered from. */
      PHIDGET_LOG_WARNING,		/**< Warning's about weird things that aren't neccesarily wrong. */
      PHIDGET_LOG_DEBUG,			/**< Should only be used during development - only shows up in the debug library. */
      PHIDGET_LOG_INFO,				/**< Info about the going on's in the library. */
      PHIDGET_LOG_VERBOSE			/**< Everything, including very common messages. */
     } CPhidgetLog_level;

/**
 * Enables logging.
 * @param level The highest level of logging to output. All lower levels will also be output.
 * @param outputFile File to output log to. This should be a full pathname, not a relative pathname. Specify NULL to output to stdout.
 */
__declspec (dllimport)
     int __stdcall CPhidget_enableLogging (CPhidgetLog_level level, const char *outputFile);
/**
 * Disables logging.
 */
__declspec (dllimport)
     int __stdcall CPhidget_disableLogging ();
/**
 * Appends a message to the log.
 * @param level The level at which to log the message.
 * @param id An arbitrary identifier.
 * @param message The message (printf style).
 */
__declspec (dllimport)
     int __stdcall CPhidget_log (CPhidgetLog_level level, const char *id, const char *message, ...);

/** @} */

/** \defgroup phidaccel Phidget Accelerometer 
 * \ingroup phidgets
 * Calls specific to the Phidget Accelerometer. See the product manual for more specific API details, supported functionality, units, etc.
 * @{
 */

     typedef struct _CPhidgetAccelerometer *CPhidgetAccelerometerHandle;
__declspec (dllimport)
     int __stdcall CPhidgetAccelerometer_create (CPhidgetAccelerometerHandle * phid);

/**
 * Gets the number of acceleration axes supported by this accelerometer.
 * @param phid An attached phidget accelerometer handle.
 * @param count The axis count.
 */
__declspec (dllimport)
     int __stdcall CPhidgetAccelerometer_getAxisCount (CPhidgetAccelerometerHandle phid, int *count);

/**
 * Gets the current acceleration of an axis.
 * @param phid An attached phidget accelerometer handle.
 * @param index The acceleration index.
 * @param acceleration The acceleration.
 */
__declspec (dllimport)
     int __stdcall CPhidgetAccelerometer_getAcceleration (CPhidgetAccelerometerHandle phid, int index, double *acceleration);
/**
 * Gets the maximum accleration supported by an axis.
 * @param phid An attached phidget accelerometer handle.
 * @param index The acceleration index
 * @param max The maximum acceleration
 */
__declspec (dllimport)
     int __stdcall CPhidgetAccelerometer_getAccelerationMax (CPhidgetAccelerometerHandle phid, int index, double *max);
/**
 * Gets the minimum acceleraiton supported by an axis.
 * @param phid An attached phidget accelerometer handle.
 * @param index The acceleration index
 * @param min The minimum acceleraion
 */
__declspec (dllimport)
     int __stdcall CPhidgetAccelerometer_getAccelerationMin (CPhidgetAccelerometerHandle phid, int index, double *min);
/**
 * Sets an acceleration change event handler. This is called when the acceleration changes by more then the change trigger.
 * @param phid A phidget accelerometer handle.
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidgetAccelerometer_set_OnAccelerationChange_Handler (CPhidgetAccelerometerHandle phid,
									   int (__stdcall * fptr) (CPhidgetAccelerometerHandle phid, void *userPtr, int index, double acceleration), void *userPtr);
/**
 * Gets the change trigger for an axis.
 * @param phid An attached phidget accelerometer handle.
 * @param index The acceleration index
 * @param trigger The change trigger.
 */
__declspec (dllimport)
     int __stdcall CPhidgetAccelerometer_getAccelerationChangeTrigger (CPhidgetAccelerometerHandle phid, int index, double *trigger);
/**
 * Sets the change trigger for an axis.
 * @param phid An attached phidget accelerometer handle.
 * @param index The acceleration index
 * @param trigger The change trigger.
 */
__declspec (dllimport)
     int __stdcall CPhidgetAccelerometer_setAccelerationChangeTrigger (CPhidgetAccelerometerHandle phid, int index, double trigger);

__declspec (deprecated ("Deprecated - use CPhidgetAccelerometer_getAxisCount")) __declspec (dllimport)
     int __stdcall
     CPhidgetAccelerometer_getNumAxis (CPhidgetAccelerometerHandle, int *);

/** @} */

/** \defgroup phidadvservo Phidget Advanced Servo 
 * \ingroup phidgets
 * Calls specific to the Phidget Advanced Servo. See the product manual for more specific API details, supported functionality, units, etc.
 * @{
 */

     typedef struct _CPhidgetAdvancedServo *
      CPhidgetAdvancedServoHandle;
__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_create (CPhidgetAdvancedServoHandle * phid);

/**
 * Gets the number of motors supported by this controller
 * @param phid An attached phidget advanced servo handle.
 * @param count The motor count.
 */
__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_getMotorCount (CPhidgetAdvancedServoHandle phid, int *count);

/**
 * Gets the last set acceleration for a motor.
 * @param phid An attached phidget advanced servo handle
 * @param index The motor index.
 * @param acceleration The acceleration
 */
__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_getAcceleration (CPhidgetAdvancedServoHandle phid, int index, double *acceleration);
/**
 * Sets the acceleration for a motor.
 * @param phid An attached phidget advanced servo handle
 * @param index The motor index.
 * @param acceleration The acceleration
 */
__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_setAcceleration (CPhidgetAdvancedServoHandle phid, int index, double acceleration);
/**
 * Gets the maximum acceleration supported by a motor
 * @param phid An attached phidget advanced servo handle
 * @param index The motor index.
 * @param max The maximum acceleration.
 */
__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_getAccelerationMax (CPhidgetAdvancedServoHandle phid, int index, double *max);
/**
 * Gets the minimum acceleration supported by a motor.
 * @param phid An attached phidget advanced servo handle
 * @param index The motor index.
 * @param min The minimum acceleration
 */
__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_getAccelerationMin (CPhidgetAdvancedServoHandle phid, int index, double *min);

//set velocity
/**
 * Gets the last set velocity limit for a motor.
 * @param phid An attached phidget advanced servo handle
 * @param index The motor index.
 * @param limit The velocity limit.
 */
__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_getVelocityLimit (CPhidgetAdvancedServoHandle phid, int index, double *limit);
/**
 * Sets the velocity limit for a motor.
 * @param phid An attached phidget advanced servo handle
 * @param index The motor index.
 * @param limit The velocity limit.
 */
__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_setVelocityLimit (CPhidgetAdvancedServoHandle phid, int index, double limit);
//Actual velocity
/**
 * Gets the current velocity of a motor.
 * @param phid An attached phidget advanced servo handle
 * @param index The motor index.
 * @param velocity The current velocity.
 */
__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_getVelocity (CPhidgetAdvancedServoHandle phid, int index, double *velocity);
/**
 * Gets the maximum velocity that can be set for a motor.
 * @param phid An attached phidget advanced servo handle
 * @param index The motor index.
 * @param max The maximum velocity
 */
__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_getVelocityMax (CPhidgetAdvancedServoHandle phid, int index, double *max);
/**
 * Gets the minimum velocity that can be set for a motor.
 * @param phid An attached phidget advanced servo handle
 * @param index The motor index.
 * @param min The minimum velocity.
 */
__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_getVelocityMin (CPhidgetAdvancedServoHandle phid, int index, double *min);
/**
 * Sets a velocity change event handler. This is called when the velocity changes.
 * @param phid An attached phidget advanced servo handle
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_set_OnVelocityChange_Handler (CPhidgetAdvancedServoHandle phid,
								       int (__stdcall * fptr) (CPhidgetAdvancedServoHandle phid, void *userPtr, int index, double velocity), void *userPtr);

/**
 * Gets the current position of a motor.
 * @param phid An attached phidget advanced servo handle
 * @param index The motor index.
 * @param position The position.
 */
__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_getPosition (CPhidgetAdvancedServoHandle phid, int index, double *position);
/**
 * Sets the position of a motor.
 * @param phid An attached phidget advanced servo handle
 * @param index The motor index.
 * @param position The position.
 */
__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_setPosition (CPhidgetAdvancedServoHandle phid, int index, double position);
/**
 * Gets the maximum position that a motor can go to.
 * @param phid An attached phidget advanced servo handle
 * @param index The motor index.
 * @param max The maximum position.
 */
__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_getPositionMax (CPhidgetAdvancedServoHandle phid, int index, double *max);
/**
 * Sets the maximum position that a motor can go to.
 * @param phid An attached phidget advanced servo handle
 * @param index The motor index.
 * @param max The Maximum position.
 */
__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_setPositionMax (CPhidgetAdvancedServoHandle phid, int index, double max);
/**
 * Gets the minimum position that a motor can go to.
 * @param phid An attached phidget advanced servo handle
 * @param index The motor index.
 * @param min The minimum position
 */
__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_getPositionMin (CPhidgetAdvancedServoHandle phid, int index, double *min);
/**
 * Sets the minimum position that a motor can go to.
 * @param phid An attached phidget advanced servo handle
 * @param index The motor index.
 * @param min The minimum position
 */
__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_setPositionMin (CPhidgetAdvancedServoHandle phid, int index, double min);
/**
 * Sets a position change event handler. This is called when the position changes.
 * @param phid An attached phidget advanced servo handle
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_set_OnPositionChange_Handler (CPhidgetAdvancedServoHandle phid,
								       int (__stdcall * fptr) (CPhidgetAdvancedServoHandle phid, void *userPtr, int index, double position), void *userPtr);

/**
 * Gets the current current draw for a motor.
 * @param phid An attached phidget advanced servo handle
 * @param index The motor index.
 * @param current The current.
 */
__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_getCurrent (CPhidgetAdvancedServoHandle phid, int index, double *current);
/**
 * Sets a current change event handler. This is called when the current draw changes.
 * @param phid An attached phidget advanced servo handle
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_set_OnCurrentChange_Handler (CPhidgetAdvancedServoHandle phid,
								      int (__stdcall * fptr) (CPhidgetAdvancedServoHandle phid, void *userPtr, int index, double current), void *userPtr);

/**
 * Gets the speed ramping state for a motor. This is whether or not velocity and acceleration are used.
 * @param phid An attached phidget advanced servo handle
 * @param index The motor index.
 * @param rampingState The speed ramping state. Possible values are \ref PTRUE and \ref PFALSE.
 */
__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_getSpeedRampingOn (CPhidgetAdvancedServoHandle phid, int index, int *rampingState);
/**
 * Sets the speed ramping state for a motor. This is whether or not velocity and acceleration are used.
 * @param phid An attached phidget advanced servo handle
 * @param index The motor index.
 * @param rampingState The speed ramping state. Possible values are \ref PTRUE and \ref PFALSE.
 */
__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_setSpeedRampingOn (CPhidgetAdvancedServoHandle phid, int index, int rampingState);
/**
 * Gets the engaged state of a motor. This is whether the motor is powered or not.
 * @param phid An attached phidget advanced servo handle
 * @param index The motor index.
 * @param engagedState The engaged state. Possible values are \ref PTRUE and \ref PFALSE.
 */
__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_getEngaged (CPhidgetAdvancedServoHandle phid, int index, int *engagedState);
/**
 * Sets the engaged state of a motor. This is whether the motor is powered or not.
 * @param phid An attached phidget advanced servo handle
 * @param index The motor index.
 * @param engagedState The engaged state. Possible values are \ref PTRUE and \ref PFALSE.
 */
__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_setEngaged (CPhidgetAdvancedServoHandle phid, int index, int engagedState);
/**
 * Gets the stopped state of a motor. This is true when the motor is not moving and there are no outstanding commands.
 * @param phid An attached phidget advanced servo handle
 * @param index The motor index.
 * @param stoppedState The stopped state. Possible values are \ref PTRUE and \ref PFALSE.
 */
__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_getStopped (CPhidgetAdvancedServoHandle phid, int index, int *stoppedState);

/** @} */

/** \defgroup phidenc Phidget Encoder 
 * \ingroup phidgets
 * Calls specific to the Phidget Encoder. See the product manual for more specific API details, supported functionality, units, etc.
 * @{
 */

     typedef struct _CPhidgetEncoder *CPhidgetEncoderHandle;
__declspec (dllimport)
     int __stdcall CPhidgetEncoder_create (CPhidgetEncoderHandle * phid);

/**
 * Gets the number of digital inputs supported by this board.
 * @param phid An attached phidget encoder handle
 * @param count The input count.
 */
__declspec (dllimport)
     int __stdcall CPhidgetEncoder_getInputCount (CPhidgetEncoderHandle phid, int *count);
/**
 * Gets the state of a digital input.
 * @param phid An attached phidget encoder handle
 * @param index The input index.
 * @param inputState The input state. Possible values are \ref PTRUE and \ref PFALSE.
 */
__declspec (dllimport)
     int __stdcall CPhidgetEncoder_getInputState (CPhidgetEncoderHandle phid, int index, int *inputState);
/**
 * Sets an input change handler. This is called when a digital input changes.
 * @param phid An attached phidget encoder handle
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidgetEncoder_set_OnInputChange_Handler (CPhidgetEncoderHandle phid, int (__stdcall * fptr) (CPhidgetEncoderHandle phid, void *userPtr, int index, int inputState), void *userPtr);

/**
 * Gets the number of encoder inputs supported by this board.
 * @param phid An attached phidget encoder handle
 * @param count The encoder input count.
 */
__declspec (dllimport)
     int __stdcall CPhidgetEncoder_getEncoderCount (CPhidgetEncoderHandle phid, int *count);
/**
 * Gets the current position of an encoder.
 * @param phid An attached phidget encoder handle
 * @param index The encoder input index.
 * @param position The current position
 */
__declspec (dllimport)
     int __stdcall CPhidgetEncoder_getPosition (CPhidgetEncoderHandle phid, int index, int *position);
/**
 * Sets the current position of an encoder.
 * @param phid An attached phidget encoder handle
 * @param index The encoder input index.
 * @param position The new position
 */
__declspec (dllimport)
     int __stdcall CPhidgetEncoder_setPosition (CPhidgetEncoderHandle phid, int index, int position);
/**
 * Sets an encoder change handler. This is called when an encoder position changes.
 * @param phid An attached phidget encoder handle
 * @param fptr Callback function pointer. Note that positionChange is a relative not absolute change and time is the time
 *	in ms since the last position change event.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidgetEncoder_set_OnPositionChange_Handler (CPhidgetEncoderHandle phid,
								 int (__stdcall * fptr) (CPhidgetEncoderHandle phid, void *userPtr, int index, int time, int positionChange), void *userPtr);

__declspec (deprecated ("Deprecated - use CPhidgetEncoder_getPosition")) __declspec (dllimport)
     int __stdcall
     CPhidgetEncoder_getEncoderPosition (CPhidgetEncoderHandle, int index, int *);
__declspec (deprecated ("Deprecated - use CPhidgetEncoder_setPosition")) __declspec (dllimport)
     int __stdcall
     CPhidgetEncoder_setEncoderPosition (CPhidgetEncoderHandle, int index, int);
__declspec (deprecated ("Deprecated - use CPhidgetEncoder_getInputCount")) __declspec (dllimport)
     int __stdcall
     CPhidgetEncoder_getNumInputs (CPhidgetEncoderHandle, int *);
__declspec (deprecated ("Deprecated - use CPhidgetEncoder_getEncoderCount")) __declspec (dllimport)
     int __stdcall
     CPhidgetEncoder_getNumEncoders (CPhidgetEncoderHandle, int *);

/** @} */

/** \defgroup phidifkit Phidget InterfaceKit 
 * \ingroup phidgets
 * Calls specific to the Phidget InterfaceKit. See the product manual for more specific API details, supported functionality, units, etc.
 * @{
 */

     typedef struct _CPhidgetInterfaceKit *
      CPhidgetInterfaceKitHandle;
__declspec (dllimport)
     int __stdcall CPhidgetInterfaceKit_create (CPhidgetInterfaceKitHandle * phid);

/**
 * Gets the number of digital inputs supported by this board.
 * @param phid An attached phidget interface kit handle.
 * @param count The ditial input count.
 */
__declspec (dllimport)
     int __stdcall CPhidgetInterfaceKit_getInputCount (CPhidgetInterfaceKitHandle phid, int *count);
/**
 * Gets the state of a digital input.
 * @param phid An attached phidget interface kit handle.
 * @param index The input index.
 * @param inputState The input state. Possible values are \ref PTRUE and \ref PFALSE.
 */
__declspec (dllimport)
     int __stdcall CPhidgetInterfaceKit_getInputState (CPhidgetInterfaceKitHandle phid, int index, int *inputState);
/**
 * Set a digital input change handler. This is called when a digital input changes.
 * @param phid An attached phidget interface kit handle.
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidgetInterfaceKit_set_OnInputChange_Handler (CPhidgetInterfaceKitHandle phid, int (__stdcall * fptr) (CPhidgetInterfaceKitHandle phid, void *userPtr, int index, int inputState),
								   void *userPtr);

/**
 * Gets the number of digital outputs supported by this board.
 * @param phid An attached phidget interface kit handle.
 * @param count The output count.
 */
__declspec (dllimport)
     int __stdcall CPhidgetInterfaceKit_getOutputCount (CPhidgetInterfaceKitHandle phid, int *count);
/**
 * Gets the state of a digital output.
 * @param phid An attached phidget interface kit handle.
 * @param index The output index.
 * @param outputState The output state. Possible values are \ref PTRUE and \ref PFALSE.
 */
__declspec (dllimport)
     int __stdcall CPhidgetInterfaceKit_getOutputState (CPhidgetInterfaceKitHandle phid, int index, int *outputState);
/**
 * Sets the state of a digital output.
 * @param phid An attached phidget interface kit handle.
 * @param index The otuput index.
 * @param outputState The output state. Possible values are \ref PTRUE and \ref PFALSE.
 */
__declspec (dllimport)
     int __stdcall CPhidgetInterfaceKit_setOutputState (CPhidgetInterfaceKitHandle phid, int index, int outputState);
/**
 * Set a digital output change handler. This is called when a digital output changes.
 * @param phid An attached phidget interface kit handle.
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidgetInterfaceKit_set_OnOutputChange_Handler (CPhidgetInterfaceKitHandle phid,
								    int (__stdcall * fptr) (CPhidgetInterfaceKitHandle phid, void *userPtr, int index, int outputState), void *userPtr);

/**
 * Gets the number of sensor (analog) inputs supported by this board.
 * @param phid An attached phidget interface kit handle.
 * @param count The sensor input count.
 */
__declspec (dllimport)
     int __stdcall CPhidgetInterfaceKit_getSensorCount (CPhidgetInterfaceKitHandle phid, int *count);
/**
 * Gets a sensor value (0-1000).
 * @param phid An attached phidget interface kit handle.
 * @param index The sensor index.
 * @param sensorValue The sensor value.
 */
__declspec (dllimport)
     int __stdcall CPhidgetInterfaceKit_getSensorValue (CPhidgetInterfaceKitHandle phid, int index, int *sensorValue);
/**
 * Gets a sensor raw value (12-bit).
 * @param phid An attached phidget interface kit handle.
 * @param index The sensor index.
 * @param sensorRawValue The sensor value.
 */
__declspec (dllimport)
     int __stdcall CPhidgetInterfaceKit_getSensorRawValue (CPhidgetInterfaceKitHandle phid, int index, int *sensorRawValue);
/**
 * Set a sensor change handler. This is called when a sensor value changes by more then the change trigger.
 * @param phid An attached phidget interface kit handle.
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidgetInterfaceKit_set_OnSensorChange_Handler (CPhidgetInterfaceKitHandle phid,
								    int (__stdcall * fptr) (CPhidgetInterfaceKitHandle phid, void *userPtr, int index, int sensorValue), void *userPtr);
/**
 * Gets a sensor change trigger.
 * @param phid An attached phidget interface kit handle.
 * @param index The sensor index.
 * @param trigger The change trigger.
 */
__declspec (dllimport)
     int __stdcall CPhidgetInterfaceKit_getSensorChangeTrigger (CPhidgetInterfaceKitHandle phid, int index, int *trigger);
/**
 * Sets a sensor change trigger.
 * @param phid An attached phidget interface kit handle.
 * @param index The sensor index.
 * @param trigger The change trigger.
 */
__declspec (dllimport)
     int __stdcall CPhidgetInterfaceKit_setSensorChangeTrigger (CPhidgetInterfaceKitHandle phid, int index, int trigger);
/**
 * Gets the ratiometric state for this board.
 * @param phid An attached phidget interface kit handle.
 * @param ratiometric The ratiometric state. Possible values are \ref PTRUE and \ref PFALSE.
 */
__declspec (dllimport)
     int __stdcall CPhidgetInterfaceKit_getRatiometric (CPhidgetInterfaceKitHandle phid, int *ratiometric);
/**
 * Sets the ratiometric state for this board.
 * @param phid An attached phidget interface kit handle.
 * @param ratiometric The ratiometric state. Possible values are \ref PTRUE and \ref PFALSE.
 */
__declspec (dllimport)
     int __stdcall CPhidgetInterfaceKit_setRatiometric (CPhidgetInterfaceKitHandle phid, int ratiometric);

__declspec (deprecated ("Deprecated - use CPhidgetInterfaceKit_getInputCount")) __declspec (dllimport)
     int __stdcall
     CPhidgetInterfaceKit_getNumInputs (CPhidgetInterfaceKitHandle, int *);
__declspec (deprecated ("Deprecated - use CPhidgetInterfaceKit_getOutputCount")) __declspec (dllimport)
     int __stdcall
     CPhidgetInterfaceKit_getNumOutputs (CPhidgetInterfaceKitHandle, int *);
__declspec (deprecated ("Deprecated - use CPhidgetInterfaceKit_getSensorCount")) __declspec (dllimport)
     int __stdcall
     CPhidgetInterfaceKit_getNumSensors (CPhidgetInterfaceKitHandle, int *);

/** @} */

/** \defgroup phidled Phidget LED 
 * \ingroup phidgets
 * Calls specific to the Phidget LED. See the product manual for more specific API details, supported functionality, units, etc.
 * @{
 */

     typedef struct _CPhidgetLED *
      CPhidgetLEDHandle;
__declspec (dllimport)
     int __stdcall CPhidgetLED_create (CPhidgetLEDHandle * phid);

/**
 * Gets the number of LEDs supported by this board.
 * @param phid An attached phidget LED handle.
 * @param count The led count.
 */
__declspec (dllimport)
     int __stdcall CPhidgetLED_getLEDCount (CPhidgetLEDHandle phid, int *count);
/**
 * Gets the brightness of an LED.
 * @param phid An attached phidget LED handle.
 * @param index The LED index.
 * @param brightness The LED brightness (0-100).
 */
__declspec (dllimport)
     int __stdcall CPhidgetLED_getDiscreteLED (CPhidgetLEDHandle phid, int index, int *brightness);
/**
 * Sets the brightness of an LED.
 * @param phid An attached phidget LED handle.
 * @param index The LED index.
 * @param brightness The LED brightness (0-100).
 */
__declspec (dllimport)
     int __stdcall CPhidgetLED_setDiscreteLED (CPhidgetLEDHandle phid, int index, int brightness);

__declspec (deprecated ("Deprecated - use CPhidgetLED_getLEDCount")) __declspec (dllimport)
     int __stdcall
     CPhidgetLED_getNumLEDs (CPhidgetLEDHandle, int *);

//These are for a prototype device - hide until it's released

/** @} */

/** \defgroup phidmotorcontrol Phidget Motor Control 
 * \ingroup phidgets
 * Calls specific to the Phidget Motor Control. See the product manual for more specific API details, supported functionality, units, etc.
 * @{
 */

     typedef struct _CPhidgetMotorControl *
      CPhidgetMotorControlHandle;
__declspec (dllimport)
     int __stdcall CPhidgetMotorControl_create (CPhidgetMotorControlHandle * phid);

/**
 * Gets the number of motors supported by this controller.
 * @param phid An attached phidget motor control handle.
 * @param count The motor count.
 */
__declspec (dllimport)
     int __stdcall CPhidgetMotorControl_getMotorCount (CPhidgetMotorControlHandle phid, int *count);

/**
 * Gets the current velocity of a motor.
 * @param phid An attached phidget motor control handle.
 * @param index The motor index.
 * @param velocity The current velocity.
 */
__declspec (dllimport)
     int __stdcall CPhidgetMotorControl_getVelocity (CPhidgetMotorControlHandle phid, int index, double *velocity);
/**
 * Sets the velocity of a motor.
 * @param phid An attached phidget motor control handle.
 * @param index The motor index.
 * @param velocity The velocity.
 */
__declspec (dllimport)
     int __stdcall CPhidgetMotorControl_setVelocity (CPhidgetMotorControlHandle phid, int index, double velocity);
/**
 * Sets a velocity change event handler. This is called when the velocity changes.
 * @param phid An attached phidget motor control handle.
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidgetMotorControl_set_OnVelocityChange_Handler (CPhidgetMotorControlHandle phid,
								      int (__stdcall * fptr) (CPhidgetMotorControlHandle phid, void *userPtr, int index, double velocity), void *userPtr);

/**
 * Gets the last set acceleration of a motor.
 * @param phid An attached phidget motor control handle.
 * @param index The motor index.
 * @param acceleration The acceleration.
 */
__declspec (dllimport)
     int __stdcall CPhidgetMotorControl_getAcceleration (CPhidgetMotorControlHandle phid, int index, double *acceleration);
/**
 * Sets the last set acceleration of a motor.
 * @param phid An attached phidget motor control handle.
 * @param index The motor index.
 * @param acceleration The acceleration.
 */
__declspec (dllimport)
     int __stdcall CPhidgetMotorControl_setAcceleration (CPhidgetMotorControlHandle phid, int index, double acceleration);
/**
 * Gets the maximum acceleration supported by a motor
 * @param phid An attached phidget motor control handle
 * @param index The motor index.
 * @param max The maximum acceleration.
 */
__declspec (dllimport)
     int __stdcall CPhidgetMotorControl_getAccelerationMax (CPhidgetMotorControlHandle phid, int index, double *max);
/**
 * Gets the minimum acceleration supported by a motor.
 * @param phid An attached phidget motor control handle
 * @param index The motor index.
 * @param min The minimum acceleration
 */
__declspec (dllimport)
     int __stdcall CPhidgetMotorControl_getAccelerationMin (CPhidgetMotorControlHandle phid, int index, double *min);

/**
 * Gets the current current draw for a motor.
 * @param phid An attached phidget motor control handle
 * @param index The motor index.
 * @param current The current.
 */
__declspec (dllimport)
     int __stdcall CPhidgetMotorControl_getCurrent (CPhidgetMotorControlHandle phid, int index, double *current);
/**
 * Sets a current change event handler. This is called when the current draw changes.
 * @param phid An attached phidget motor control handle
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidgetMotorControl_set_OnCurrentChange_Handler (CPhidgetMotorControlHandle phid,
								     int (__stdcall * fptr) (CPhidgetMotorControlHandle phid, void *userPtr, int index, double current), void *userPtr);

/**
 * Gets the number of digital inputs supported by this board.
 * @param phid An attached phidget motor control handle.
 * @param count The ditial input count.
 */
__declspec (dllimport)
     int __stdcall CPhidgetMotorControl_getInputCount (CPhidgetMotorControlHandle phid, int *count);
/**
 * Gets the state of a digital input.
 * @param phid An attached phidget motor control handle.
 * @param index The input index.
 * @param inputState The input state. Possible values are \ref PTRUE and \ref PFALSE.
 */
__declspec (dllimport)
     int __stdcall CPhidgetMotorControl_getInputState (CPhidgetMotorControlHandle phid, int index, int *inputState);
/**
 * Set a digital input change handler. This is called when a digital input changes.
 * @param phid An attached phidget motor control handle.
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidgetMotorControl_set_OnInputChange_Handler (CPhidgetMotorControlHandle phid, int (__stdcall * fptr) (CPhidgetMotorControlHandle phid, void *userPtr, int index, int inputState),
								   void *userPtr);

__declspec (deprecated ("Deprecated - use CPhidgetMotorControl_getMotorCount")) __declspec (dllimport)
     int __stdcall
     CPhidgetMotorControl_getNumMotors (CPhidgetMotorControlHandle, int *);
__declspec (deprecated ("Deprecated - use CPhidgetMotorControl_getInputCount")) __declspec (dllimport)
     int __stdcall
     CPhidgetMotorControl_getNumInputs (CPhidgetMotorControlHandle, int *);
__declspec (deprecated ("Deprecated - use CPhidgetMotorControl_getVelocity")) __declspec (dllimport)
     int __stdcall
     CPhidgetMotorControl_getMotorSpeed (CPhidgetMotorControlHandle, int index, double *);
__declspec (deprecated ("Deprecated - use CPhidgetMotorControl_setVelocity")) __declspec (dllimport)
     int __stdcall
     CPhidgetMotorControl_setMotorSpeed (CPhidgetMotorControlHandle, int index, double);
__declspec (deprecated ("Deprecated - use CPhidgetMotorControl_set_OnVelocityChange_Handler")) __declspec (dllimport)
     int __stdcall
     CPhidgetMotorControl_set_OnMotorChange_Handler (CPhidgetMotorControlHandle, int (__stdcall * fptr) (CPhidgetMotorControlHandle, void *userPtr, int index, double motorSpeed), void *userPtr);

/** @} */

/** \defgroup phidph Phidget PH Sensor 
 * \ingroup phidgets
 * Calls specific to the Phidget PH Sensor. See the product manual for more specific API details, supported functionality, units, etc.
 * @{
 */

     typedef struct _CPhidgetPHSensor *
      CPhidgetPHSensorHandle;
__declspec (dllimport)
     int __stdcall CPhidgetPHSensor_create (CPhidgetPHSensorHandle * phid);

/**
 * Gets the sensed PH.
 * @param phid An attached phidget ph sensor handle.
 * @param ph The PH.
 */
__declspec (dllimport)
     int __stdcall CPhidgetPHSensor_getPH (CPhidgetPHSensorHandle phid, double *ph);
/**
 * Gets the maximum PH that the sensor could report.
 * @param phid An attached phidget ph sensor handle.
 * @param max The maximum PH.
 */
__declspec (dllimport)
     int __stdcall CPhidgetPHSensor_getPHMax (CPhidgetPHSensorHandle phid, double *max);
/**
 * Gets the minimum PH that the sensor could report.
 * @param phid An attached phidget ph sensor handle.
 * @param min The minimum PH.
 */
__declspec (dllimport)
     int __stdcall CPhidgetPHSensor_getPHMin (CPhidgetPHSensorHandle phid, double *min);
/**
 * Set a PH change handler. This is called when the PH changes by more then the change trigger.
 * @param phid An attached phidget ph sensor handle.
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidgetPHSensor_set_OnPHChange_Handler (CPhidgetPHSensorHandle phid, int (__stdcall * fptr) (CPhidgetPHSensorHandle phid, void *userPtr, double ph), void *userPtr);
/**
 * Gets the PH change trigger.
 * @param phid An attached phidget ph sensor handle.
 * @param trigger The change trigger.
 */
__declspec (dllimport)
     int __stdcall CPhidgetPHSensor_getPHChangeTrigger (CPhidgetPHSensorHandle phid, double *trigger);
/**
 * Sets the PH change trigger.
 * @param phid An attached phidget ph sensor handle.
 * @param trigger The change trigger.
 */
__declspec (dllimport)
     int __stdcall CPhidgetPHSensor_setPHChangeTrigger (CPhidgetPHSensorHandle phid, double trigger);

/**
 * Gets the sensed potential.
 * @param phid An attached phidget ph sensor handle.
 * @param potential The potential.
 */
__declspec (dllimport)
     int __stdcall CPhidgetPHSensor_getPotential (CPhidgetPHSensorHandle phid, double *potential);
/**
 * Gets the maximum potential that can be sensed.
 * @param phid An attached phidget ph sensor handle.
 * @param max The maximum potential.
 */
__declspec (dllimport)
     int __stdcall CPhidgetPHSensor_getPotentialMax (CPhidgetPHSensorHandle phid, double *max);
/**
 * Gets the minimum potential that can be sensed.
 * @param phid An attached phidget ph sensor handle.
 * @param min The minimum potential.
 */
__declspec (dllimport)
     int __stdcall CPhidgetPHSensor_getPotentialMin (CPhidgetPHSensorHandle phid, double *min);

/**
 * Sets the temperature to be used for PH calculations.
 * @param phid An attached phidget ph sensor handle.
 * @param temperature The temperature (degrees celcius). By default this is 20.
 */
__declspec (dllimport)
     int __stdcall CPhidgetPHSensor_setTemperature (CPhidgetPHSensorHandle phid, double temperature);

/** @} */

/** \defgroup phidrfid Phidget RFID 
 * \ingroup phidgets
 * Calls specific to the Phidget RFID. See the product manual for more specific API details, supported functionality, units, etc.
 * @{
 */

     typedef struct _CPhidgetRFID *CPhidgetRFIDHandle;
__declspec (dllimport)
     int __stdcall CPhidgetRFID_create (CPhidgetRFIDHandle * phid);

/**
 * Gets the number of outputs supported by this board.
 * @param phid An attached phidget rfid handle.
 * @param count The output count.
 */
__declspec (dllimport)
     int __stdcall CPhidgetRFID_getOutputCount (CPhidgetRFIDHandle phid, int *count);
/**
 * Gets the state of an output.
 * @param phid An attached phidget rfid handle.
 * @param index The output index.
 * @param outputState The output state. Possible values are \ref PTRUE and \ref PFALSE.
 */
__declspec (dllimport)
     int __stdcall CPhidgetRFID_getOutputState (CPhidgetRFIDHandle phid, int index, int *outputState);
/**
 * Sets the state of an output.
 * @param phid An attached phidget rfid handle.
 * @param index The output index.
 * @param outputState The output state. Possible values are \ref PTRUE and \ref PFALSE.
 */
__declspec (dllimport)
     int __stdcall CPhidgetRFID_setOutputState (CPhidgetRFIDHandle phid, int index, int outputState);
/**
 * Set an output change handler. This is called when an output changes.
 * @param phid An attached phidget rfid handle.
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidgetRFID_set_OnOutputChange_Handler (CPhidgetRFIDHandle phid, int (__stdcall * fptr) (CPhidgetRFIDHandle phid, void *userPtr, int index, int outputState), void *userPtr);

/**
 * Gets the state of the antenna.
 * @param phid An attached phidget rfid handle.
 * @param antennaState The antenna state. Possible values are \ref PTRUE and \ref PFALSE.
 */
__declspec (dllimport)
     int __stdcall CPhidgetRFID_getAntennaOn (CPhidgetRFIDHandle phid, int *antennaState);
/**
 * Sets the state of the antenna. Note that the antenna must be enabled before tags will be read.
 * @param phid An attached phidget rfid handle.
 * @param antennaState The antenna state. Possible values are \ref PTRUE and \ref PFALSE.
 */
__declspec (dllimport)
     int __stdcall CPhidgetRFID_setAntennaOn (CPhidgetRFIDHandle phid, int antennaState);
/**
 * Gets the state of the onboard LED.
 * @param phid An attached phidget rfid handle.
 * @param LEDState The LED state. Possible values are \ref PTRUE and \ref PFALSE.
 */
__declspec (dllimport)
     int __stdcall CPhidgetRFID_getLEDOn (CPhidgetRFIDHandle phid, int *LEDState);
/**
 * Sets the state of the onboard LED.
 * @param phid An attached phidget rfid handle.
 * @param LEDState The LED state. Possible values are \ref PTRUE and \ref PFALSE.
 */
__declspec (dllimport)
     int __stdcall CPhidgetRFID_setLEDOn (CPhidgetRFIDHandle phid, int LEDState);

/**
 * Gets the last tag read by the reader. This tag may or may not still be on the reader.
 * @param phid An attached phidget rfid handle.
 * @param tag The tag. This must be an unsigned char array of size 5.
 */
__declspec (dllimport)
     int __stdcall CPhidgetRFID_getLastTag (CPhidgetRFIDHandle phid, unsigned char *tag);
/**
 * Gets the tag present status. This is whether or not a tag is being read by the reader.
 * @param phid An attached phidget rfid handle.
 * @param status The tag status. Possible values are \ref PTRUE and \ref PFALSE.
 */
__declspec (dllimport)
     int __stdcall CPhidgetRFID_getTagStatus (CPhidgetRFIDHandle phid, int *status);
/**
 * Set a tag handler. This is called when a tag is first detected by the reader.
 * @param phid An attached phidget rfid handle.
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidgetRFID_set_OnTag_Handler (CPhidgetRFIDHandle phid, int (__stdcall * fptr) (CPhidgetRFIDHandle phid, void *userPtr, unsigned char *tag), void *userPtr);
/**
 * Set a tag lost handler. This is called when a tag is no longer detected by the reader.
 * @param phid An attached phidget rfid handle.
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidgetRFID_set_OnTagLost_Handler (CPhidgetRFIDHandle phid, int (__stdcall * fptr) (CPhidgetRFIDHandle phid, void *userPtr, unsigned char *tag), void *userPtr);

__declspec (deprecated ("Deprecated - use CPhidgetRFID_getOutputCount")) __declspec (dllimport)
     int __stdcall
     CPhidgetRFID_getNumOutputs (CPhidgetRFIDHandle, int *);

/** @} */

/** \defgroup phidservo Phidget Servo 
 * \ingroup phidgets
 * Calls specific to the Phidget Servo. See the product manual for more specific API details, supported functionality, units, etc.
 * @{
 */

     typedef struct _CPhidgetServo *
      CPhidgetServoHandle;
__declspec (dllimport)
     int __stdcall CPhidgetServo_create (CPhidgetServoHandle * phid);

/**
 * Gets the number of motors supported by this controller.
 * @param phid An attached phidget servo handle.
 * @param count The motor count.
 */
__declspec (dllimport)
     int __stdcall CPhidgetServo_getMotorCount (CPhidgetServoHandle phid, int *count);

/**
 * Gets the current position of a motor.
 * @param phid An attached phidget servo handle.
 * @param index The motor index.
 * @param position The motor position.
 */
__declspec (dllimport)
     int __stdcall CPhidgetServo_getPosition (CPhidgetServoHandle phid, int index, double *position);
/**
 * Sets the current position of a motor.
 * @param phid An attached phidget servo handle.
 * @param index The motor index.
 * @param position The motor position.
 */
__declspec (dllimport)
     int __stdcall CPhidgetServo_setPosition (CPhidgetServoHandle phid, int index, double position);
/**
 * Gets the maximum position that a motor can be set to.
 * @param phid An attached phidget servo handle.
 * @param index The motor index.
 * @param max The maximum position.
 */
__declspec (dllimport)
     int __stdcall CPhidgetServo_getPositionMax (CPhidgetServoHandle phid, int index, double *max);
/**
 * Gets the minimum position that a motor can be set to.
 * @param phid An attached phidget servo handle.
 * @param index The motor index.
 * @param min The minimum position.
 */
__declspec (dllimport)
     int __stdcall CPhidgetServo_getPositionMin (CPhidgetServoHandle phid, int index, double *min);
/**
 * Sets a position change event handler. This is called when the position changes.
 * @param phid An attached phidget servo handle
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidgetServo_set_OnPositionChange_Handler (CPhidgetServoHandle phid, int (__stdcall * fptr) (CPhidgetServoHandle phid, void *userPtr, int index, double position), void *userPtr);
/**
 * Gets the engaged state of a motor. This is whether the motor is powered or not.
 * @param phid An attached phidget servo handle
 * @param index The motor index.
 * @param engagedState The engaged state. Possible values are \ref PTRUE and \ref PFALSE.
 */
__declspec (dllimport)
     int __stdcall CPhidgetServo_getEngaged (CPhidgetServoHandle phid, int index, int *engagedState);
/**
 * Sets the engaged state of a motor. This is whether the motor is powered or not.
 * @param phid An attached phidget servo handle
 * @param index The motor index.
 * @param engagedState The engaged state. Possible values are \ref PTRUE and \ref PFALSE.
 */
__declspec (dllimport)
     int __stdcall CPhidgetServo_setEngaged (CPhidgetServoHandle phid, int index, int engagedState);

__declspec (deprecated ("Deprecated - use CPhidgetServo_getMotorCount")) __declspec (dllimport)
     int __stdcall
     CPhidgetServo_getNumMotors (CPhidgetServoHandle, int *);
__declspec (deprecated ("Deprecated - use CPhidgetServo_setPosition")) __declspec (dllimport)
     int __stdcall
     CPhidgetServo_setMotorPosition (CPhidgetServoHandle, int index, double);
__declspec (deprecated ("Deprecated - use CPhidgetServo_getPosition")) __declspec (dllimport)
     int __stdcall
     CPhidgetServo_getMotorPosition (CPhidgetServoHandle, int index, double *);
__declspec (deprecated ("Deprecated - use CPhidgetServo_getPositionMax")) __declspec (dllimport)
     int __stdcall
     CPhidgetServo_getMotorPositionMax (CPhidgetServoHandle, int index, double *);
__declspec (deprecated ("Deprecated - use CPhidgetServo_getPositionMin")) __declspec (dllimport)
     int __stdcall
     CPhidgetServo_getMotorPositionMin (CPhidgetServoHandle, int index, double *);
__declspec (deprecated ("Deprecated - use CPhidgetServo_set_OnPositionChange_Handler")) __declspec (dllimport)
     int __stdcall
     CPhidgetServo_set_OnMotorPositionChange_Handler (CPhidgetServoHandle, int (__stdcall * fptr) (CPhidgetServoHandle, void *userPtr, int index, double motorPosition), void *userPtr);
__declspec (deprecated ("Deprecated - use CPhidgetServo_setEngaged")) __declspec (dllimport)
     int __stdcall
     CPhidgetServo_setMotorOn (CPhidgetServoHandle, int index, int);
__declspec (deprecated ("Deprecated - use CPhidgetServo_getEngaged")) __declspec (dllimport)
     int __stdcall
     CPhidgetServo_getMotorOn (CPhidgetServoHandle, int index, int *);

/** @} */

/** \defgroup phidstepper Phidget Stepper 
 * \ingroup phidgets
 * Calls specific to the Phidget Stepper. See the product manual for more specific API details, supported functionality, units, etc.
 * @{
 */

     typedef struct _CPhidgetStepper *
      CPhidgetStepperHandle;
__declspec (dllimport)
     int __stdcall CPhidgetStepper_create (CPhidgetStepperHandle * phid);

/**
 * Gets the number of digital inputs supported by this board.
 * @param phid An attached phidget stepper handle.
 * @param count The ditial input count.
 */
__declspec (dllimport)
     int __stdcall CPhidgetStepper_getInputCount (CPhidgetStepperHandle phid, int *count);
/**
 * Gets the state of a digital input.
 * @param phid An attached phidget stepper handle.
 * @param index The input index.
 * @param inputState The input state. Possible values are \ref PTRUE and \ref PFALSE.
 */
__declspec (dllimport)
     int __stdcall CPhidgetStepper_getInputState (CPhidgetStepperHandle phid, int index, int *inputState);
/**
 * Set a digital input change handler. This is called when a digital input changes.
 * @param phid An attached phidget stepper handle.
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidgetStepper_set_OnInputChange_Handler (CPhidgetStepperHandle phid, int (__stdcall * fptr) (CPhidgetStepperHandle phid, void *userPtr, int index, int inputState), void *userPtr);

/**
 * Gets the number of motors supported by this controller
 * @param phid An attached phidget stepper handle.
 * @param count The motor count.
 */
__declspec (dllimport)
     int __stdcall CPhidgetStepper_getMotorCount (CPhidgetStepperHandle phid, int *count);

/**
 * Gets the last set acceleration for a motor.
 * @param phid An attached phidget stepper handle
 * @param index The motor index.
 * @param acceleration The acceleration
 */
__declspec (dllimport)
     int __stdcall CPhidgetStepper_getAcceleration (CPhidgetStepperHandle phid, int index, double *acceleration);
/**
 * Sets the acceleration for a motor.
 * @param phid An attached phidget stepper handle
 * @param index The motor index.
 * @param acceleration The acceleration
 */
__declspec (dllimport)
     int __stdcall CPhidgetStepper_setAcceleration (CPhidgetStepperHandle phid, int index, double acceleration);
/**
 * Gets the maximum acceleration supported by a motor
 * @param phid An attached phidget stepper handle
 * @param index The motor index.
 * @param max The maximum acceleration.
 */
__declspec (dllimport)
     int __stdcall CPhidgetStepper_getAccelerationMax (CPhidgetStepperHandle phid, int index, double *max);
/**
 * Gets the minimum acceleration supported by a motor.
 * @param phid An attached phidget stepper handle
 * @param index The motor index.
 * @param min The minimum acceleration
 */
__declspec (dllimport)
     int __stdcall CPhidgetStepper_getAccelerationMin (CPhidgetStepperHandle phid, int index, double *min);

/**
 * Gets the last set velocity limit for a motor.
 * @param phid An attached phidget stepper handle
 * @param index The motor index.
 * @param limit The velocity limit.
 */
__declspec (dllimport)
     int __stdcall CPhidgetStepper_getVelocityLimit (CPhidgetStepperHandle phid, int index, double *limit);
/**
 * Sets the velocity limit for a motor.
 * @param phid An attached phidget stepper handle
 * @param index The motor index.
 * @param limit The velocity limit.
 */
__declspec (dllimport)
     int __stdcall CPhidgetStepper_setVelocityLimit (CPhidgetStepperHandle phid, int index, double limit);
/**
 * Gets the current velocity of a motor.
 * @param phid An attached phidget stepper handle
 * @param index The motor index.
 * @param velocity The current velocity.
 */
__declspec (dllimport)
     int __stdcall CPhidgetStepper_getVelocity (CPhidgetStepperHandle phid, int index, double *velocity);
/**
 * Gets the maximum velocity that can be set for a motor.
 * @param phid An attached phidget stepper handle
 * @param index The motor index.
 * @param max The maximum velocity
 */
__declspec (dllimport)
     int __stdcall CPhidgetStepper_getVelocityMax (CPhidgetStepperHandle phid, int index, double *max);
/**
 * Gets the minimum velocity that can be set for a motor.
 * @param phid An attached phidget stepper handle
 * @param index The motor index.
 * @param min The minimum velocity.
 */
__declspec (dllimport)
     int __stdcall CPhidgetStepper_getVelocityMin (CPhidgetStepperHandle phid, int index, double *min);
/**
 * Sets a velocity change event handler. This is called when the velocity changes.
 * @param phid An attached phidget stepper handle
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidgetStepper_set_OnVelocityChange_Handler (CPhidgetStepperHandle phid, int (__stdcall * fptr) (CPhidgetStepperHandle phid, void *userPtr, int index, double velocity),
								 void *userPtr);

/**
 * Gets the last set target position of a motor.
 * @param phid An attached phidget stepper handle
 * @param index The motor index.
 * @param position The position.
 */
__declspec (dllimport)
     int __stdcall CPhidgetStepper_getTargetPosition (CPhidgetStepperHandle phid, int index, __int64 * position);
/**
 * Sets the target position of a motor.
 * @param phid An attached phidget stepper handle
 * @param index The motor index.
 * @param position The position.
 */
__declspec (dllimport)
     int __stdcall CPhidgetStepper_setTargetPosition (CPhidgetStepperHandle phid, int index, __int64 position);
/**
 * Gets the current position of a motor.
 * @param phid An attached phidget stepper handle
 * @param index The motor index.
 * @param position The position.
 */
__declspec (dllimport)
     int __stdcall CPhidgetStepper_getCurrentPosition (CPhidgetStepperHandle phid, int index, __int64 * position);
/**
 * Sets the current position of a motor. This will not move the motor, just update the position value.
 * @param phid An attached phidget stepper handle
 * @param index The motor index.
 * @param position The position.
 */
__declspec (dllimport)
     int __stdcall CPhidgetStepper_setCurrentPosition (CPhidgetStepperHandle phid, int index, __int64 position);
/**
 * Gets the maximum position that a motor can go to.
 * @param phid An attached phidget stepper handle
 * @param index The motor index.
 * @param max The maximum position.
 */
__declspec (dllimport)
     int __stdcall CPhidgetStepper_getPositionMax (CPhidgetStepperHandle phid, int index, __int64 * max);
/**
 * Gets the minimum position that a motor can go to.
 * @param phid An attached phidget stepper handle
 * @param index The motor index.
 * @param min The minimum position
 */
__declspec (dllimport)
     int __stdcall CPhidgetStepper_getPositionMin (CPhidgetStepperHandle phid, int index, __int64 * min);
/**
 * Sets a position change event handler. This is called when the position changes.
 * @param phid An attached phidget stepper handle
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidgetStepper_set_OnPositionChange_Handler (CPhidgetStepperHandle phid, int (__stdcall * fptr) (CPhidgetStepperHandle phid, void *userPtr, int index, __int64 position),
								 void *userPtr);

/**
 * Gets the current limit for a motor.
 * @param phid An attached phidget stepper handle.
 * @param index The motor index.
 * @param limit The current limit.
 */
__declspec (dllimport)
     int __stdcall CPhidgetStepper_getCurrentLimit (CPhidgetStepperHandle phid, int index, double *limit);
/**
 * Sets the current limit for a motor.
 * @param phid An attached phidget stepper handle.
 * @param index The motor index.
 * @param limit The current limit.
 */
__declspec (dllimport)
     int __stdcall CPhidgetStepper_setCurrentLimit (CPhidgetStepperHandle phid, int index, double limit);
/**
 * Gets the current current draw for a motor.
 * @param phid An attached phidget stepper handle
 * @param index The motor index.
 * @param current The current.
 */
__declspec (dllimport)
     int __stdcall CPhidgetStepper_getCurrent (CPhidgetStepperHandle phid, int index, double *current);
/**
 * Gets the maximum current limit.
 * @param phid An attached phidget stepper handle
 * @param index The motor index.
 * @param max The maximum current limit.
 */
__declspec (dllimport)
     int __stdcall CPhidgetStepper_getCurrentMax (CPhidgetStepperHandle phid, int index, double *max);
/**
 * Gets the minimum current limit.
 * @param phid An attached phidget stepper handle
 * @param index The motor index.
 * @param min The minimum current limit.
 */
__declspec (dllimport)
     int __stdcall CPhidgetStepper_getCurrentMin (CPhidgetStepperHandle phid, int index, double *min);
/**
 * Sets a current change event handler. This is called when the current draw changes.
 * @param phid An attached phidget stepper handle
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidgetStepper_set_OnCurrentChange_Handler (CPhidgetStepperHandle phid, int (__stdcall * fptr) (CPhidgetStepperHandle phid, void *userPtr, int index, double current),
								void *userPtr);

/**
 * Gets the engaged state of a motor. This is whether the motor is powered or not.
 * @param phid An attached phidget stepper handle
 * @param index The motor index.
 * @param engagedState The engaged state. Possible values are \ref PTRUE and \ref PFALSE.
 */
__declspec (dllimport)
     int __stdcall CPhidgetStepper_getEngaged (CPhidgetStepperHandle phid, int index, int *engagedState);
/**
 * Sets the engaged state of a motor. This is whether the motor is powered or not.
 * @param phid An attached phidget stepper handle
 * @param index The motor index.
 * @param engagedState The engaged state. Possible values are \ref PTRUE and \ref PFALSE.
 */
__declspec (dllimport)
     int __stdcall CPhidgetStepper_setEngaged (CPhidgetStepperHandle phid, int index, int engagedState);
/**
 * Gets the stopped state of a motor. This is true when the motor is not moving and there are no outstanding commands.
 * @param phid An attached phidget stepper handle
 * @param index The motor index.
 * @param stoppedState The stopped state. Possible values are \ref PTRUE and \ref PFALSE.
 */
__declspec (dllimport)
     int __stdcall CPhidgetStepper_getStopped (CPhidgetStepperHandle phid, int index, int *stoppedState);

/** @} */

/** \defgroup phidtemp Phidget Temperature Sensor 
 * \ingroup phidgets
 * Calls specific to the Phidget Temperature Sensor. See the product manual for more specific API details, supported functionality, units, etc.
 *
 * All temperatures are in degrees celcius.
 * @{
 */

     typedef struct _CPhidgetTemperatureSensor *CPhidgetTemperatureSensorHandle;
__declspec (dllimport)
     int __stdcall CPhidgetTemperatureSensor_create (CPhidgetTemperatureSensorHandle * phid);

/**
 * The Phidget Temperature Sensor supports these types of thermocouples.
 */
     typedef enum
     {
      PHIDGET_TEMPERATURE_SENSOR_K_TYPE = 1,	/**< K-Type thermocouple */
      PHIDGET_TEMPERATURE_SENSOR_J_TYPE,		/**< J-Type thermocouple */
      PHIDGET_TEMPERATURE_SENSOR_E_TYPE,		/**< E-Type thermocouple */
      PHIDGET_TEMPERATURE_SENSOR_T_TYPE			/**< T-Type thermocouple */
     } CPhidgetTemperatureSensor_ThermocoupleType;

/**
 * Gets the number of thermocouple inputs supported by this board.
 * @param phid An attached phidget themperature sensor handle.
 * @param count The thermocouple input count.
 */
__declspec (dllimport)
     int __stdcall CPhidgetTemperatureSensor_getTemperatureInputCount (CPhidgetTemperatureSensorHandle phid, int *count);
/**
 * Gets the temperature measured by a thermocouple input.
 * @param phid An attached phidget themperature sensor handle.
 * @param index The thermocouple index.
 * @param temperature The temperature.
 */
__declspec (dllimport)
     int __stdcall CPhidgetTemperatureSensor_getTemperature (CPhidgetTemperatureSensorHandle phid, int index, double *temperature);
/**
 * Gets the maximum temperature that can be measured by a thermocouple input. This depends on the type of thermocouple attached.
 * @param phid An attached phidget themperature sensor handle.
 * @param index The thermocouple index.
 * @param max The maximum temperature.
 */
__declspec (dllimport)
     int __stdcall CPhidgetTemperatureSensor_getTemperatureMax (CPhidgetTemperatureSensorHandle phid, int index, double *max);
/**
 * Gets the minimum temperature that can be measured by a thermocouple input. This depends on the type of thermocouple attached.
 * @param phid An attached phidget themperature sensor handle.
 * @param index The thermocouple index.
 * @param min The minimum temperature.
 */
__declspec (dllimport)
     int __stdcall CPhidgetTemperatureSensor_getTemperatureMin (CPhidgetTemperatureSensorHandle phid, int index, double *min);
/**
 * Set a temperature change handler. This is called when the temperature changes by more then the change trigger.
 * @param phid An attached phidget temperature sensor handle.
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidgetTemperatureSensor_set_OnTemperatureChange_Handler (CPhidgetTemperatureSensorHandle phid,
									      int (__stdcall * fptr) (CPhidgetTemperatureSensorHandle phid, void *userPtr, int index, double temperature),
									      void *userPtr);
/**
 * Gets the change trigger for a thermocouple input.
 * @param phid An attached phidget themperature sensor handle.
 * @param index The thermocouple index.
 * @param trigger The change trigger.
 */
__declspec (dllimport)
     int __stdcall CPhidgetTemperatureSensor_getTemperatureChangeTrigger (CPhidgetTemperatureSensorHandle phid, int index, double *trigger);
/**
 * Sets the change trigger for a thermocouple input.
 * @param phid An attached phidget themperature sensor handle.
 * @param index The thermocouple index.
 * @param trigger The change trigger.
 */
__declspec (dllimport)
     int __stdcall CPhidgetTemperatureSensor_setTemperatureChangeTrigger (CPhidgetTemperatureSensorHandle phid, int index, double trigger);

/**
 * Gets the currently sensed potential for a thermocouple input.
 * @param phid An attached phidget themperature sensor handle.
 * @param index The thermocouple index.
 * @param potential The potential.
 */
__declspec (dllimport)
     int __stdcall CPhidgetTemperatureSensor_getPotential (CPhidgetTemperatureSensorHandle phid, int index, double *potential);
/**
 * Gets the maximum potential that a thermocouple input can measure.
 * @param phid An attached phidget themperature sensor handle.
 * @param index The thermocouple index.
 * @param max The maximum potential.
 */
__declspec (dllimport)
     int __stdcall CPhidgetTemperatureSensor_getPotentialMax (CPhidgetTemperatureSensorHandle phid, int index, double *max);
/**
 * Gets the minimum potential that a thermocouple input can measure.
 * @param phid An attached phidget themperature sensor handle.
 * @param index The thermocouple index.
 * @param min The minimum potential.
 */
__declspec (dllimport)
     int __stdcall CPhidgetTemperatureSensor_getPotentialMin (CPhidgetTemperatureSensorHandle phid, int index, double *min);

/**
 * Gets the ambient (board) temperature.
 * @param phid An attached phidget themperature sensor handle.
 * @param ambient The ambient (board) temperature.
 */
__declspec (dllimport)
     int __stdcall CPhidgetTemperatureSensor_getAmbientTemperature (CPhidgetTemperatureSensorHandle phid, double *ambient);
/**
 * Gets the maximum temperature that the ambient onboard temperature sensor can measure.
 * @param phid An attached phidget themperature sensor handle.
 * @param max The maximum temperature.
 */
__declspec (dllimport)
     int __stdcall CPhidgetTemperatureSensor_getAmbientTemperatureMax (CPhidgetTemperatureSensorHandle phid, double *max);
/**
 * Gets the minimum temperature that the ambient onboard temperature sensor can measure.
 * @param phid An attached phidget themperature sensor handle.
 * @param min The minimum temperature.
 */
__declspec (dllimport)
     int __stdcall CPhidgetTemperatureSensor_getAmbientTemperatureMin (CPhidgetTemperatureSensorHandle phid, double *min);

/**
 * Gets the type of thermocouple set to be at a thermocouple input. By default this is K-Type.
 * @param phid An attached phidget themperature sensor handle.
 * @param index The thermocouple index.
 * @param type The thermocouple type.
 */
__declspec (dllimport)
     int __stdcall CPhidgetTemperatureSensor_getThermocoupleType (CPhidgetTemperatureSensorHandle phid, int index, CPhidgetTemperatureSensor_ThermocoupleType * type);
/**
 * Sets the type of thermocouple plugged into a thermocouple input. By default this is K-Type.
 * @param phid An attached phidget themperature sensor handle.
 * @param index The thermocouple index.
 * @param type The thermocouple type.
 */
__declspec (dllimport)
     int __stdcall CPhidgetTemperatureSensor_setThermocoupleType (CPhidgetTemperatureSensorHandle phid, int index, CPhidgetTemperatureSensor_ThermocoupleType type);

__declspec (deprecated ("Deprecated - use CPhidgetTemepratureSensor_getTemperatureInputCount")) __declspec (dllimport)
     int __stdcall
     CPhidgetTemperatureSensor_getNumTemperatureInputs (CPhidgetTemperatureSensorHandle, int *);

/** @} */

/** \defgroup phidtextlcd Phidget TextLCD 
 * \ingroup phidgets
 * Calls specific to the Phidget Text LCD. See the product manual for more specific API details, supported functionality, units, etc.
 * @{
 */

     typedef struct _CPhidgetTextLCD *
      CPhidgetTextLCDHandle;
__declspec (dllimport)
     int __stdcall CPhidgetTextLCD_create (CPhidgetTextLCDHandle * phid);

/**
 * Gets the number of rows supported by this display.
 * @param phid An attached phidget text lcd handle.
 * @param count The row count.
 */
__declspec (dllimport)
     int __stdcall CPhidgetTextLCD_getRowCount (CPhidgetTextLCDHandle phid, int *count);
/**
 * Gets the number of columns per supported by this display.
 * @param phid An attached phidget text lcd handle.
 * @param count The Column count.
 */
__declspec (dllimport)
     int __stdcall CPhidgetTextLCD_getColumnCount (CPhidgetTextLCDHandle phid, int *count);

/**
 * Gets the state of the backlight.
 * @param phid An attached phidget text lcd handle.
 * @param backlightState The backlight state. Possible values are \ref PTRUE and \ref PFALSE.
 */
__declspec (dllimport)
     int __stdcall CPhidgetTextLCD_getBacklight (CPhidgetTextLCDHandle phid, int *backlightState);
/**
 * Sets the state of the backlight.
 * @param phid An attached phidget text lcd handle.
 * @param backlightState The backlight state. Possible values are \ref PTRUE and \ref PFALSE.
 */
__declspec (dllimport)
     int __stdcall CPhidgetTextLCD_setBacklight (CPhidgetTextLCDHandle phid, int backlightState);
/**
 * Gets the last set contrast value.
 * @param phid An attached phidget text lcd handle.
 * @param contrast The contrast (0-255).
 */
__declspec (dllimport)
     int __stdcall CPhidgetTextLCD_getContrast (CPhidgetTextLCDHandle phid, int *contrast);
/**
 * Sets the last set contrast value.
 * @param phid An attached phidget text lcd handle.
 * @param contrast The contrast (0-255).
 */
__declspec (dllimport)
     int __stdcall CPhidgetTextLCD_setContrast (CPhidgetTextLCDHandle phid, int contrast);
/**
 * Gets the cursor visible state.
 * @param phid An attached phidget text lcd handle.
 * @param cursorState The state of the cursor.
 */
__declspec (dllimport)
     int __stdcall CPhidgetTextLCD_getCursorOn (CPhidgetTextLCDHandle phid, int *cursorState);
/**
 * Sets the cursor visible state.
 * @param phid An attached phidget text lcd handle.
 * @param cursorState The state of the cursor.
 */
__declspec (dllimport)
     int __stdcall CPhidgetTextLCD_setCursorOn (CPhidgetTextLCDHandle phid, int cursorState);
/**
 * Gets the cursor blink state.
 * @param phid An attached phidget text lcd handle.
 * @param cursorBlinkState The cursor blink state.
 */
__declspec (dllimport)
     int __stdcall CPhidgetTextLCD_getCursorBlink (CPhidgetTextLCDHandle phid, int *cursorBlinkState);
/**
 * Sets the cursor blink state.
 * @param phid An attached phidget text lcd handle.
 * @param cursorBlinkState The cursor blink state.
 */
__declspec (dllimport)
     int __stdcall CPhidgetTextLCD_setCursorBlink (CPhidgetTextLCDHandle phid, int cursorBlinkState);

/**
 * Sets a custom character. See the product manual for more information.
 * @param phid An attached phidget text lcd handle.
 * @param index The custom character index (8-15).
 * @param var1 The first part of the custom character.
 * @param var2 The second part of the custom character.
 */
__declspec (dllimport)
     int __stdcall CPhidgetTextLCD_setCustomCharacter (CPhidgetTextLCDHandle phid, int index, int var1, int var2);
/**
 * Sets a single character on the display.
 * @param phid An attached phidget text lcd handle.
 * @param index The row index.
 * @param column The column index.
 * @param character The character to display.
 */
__declspec (dllimport)
     int __stdcall CPhidgetTextLCD_setDisplayCharacter (CPhidgetTextLCDHandle phid, int index, int column, unsigned char character);
/**
 * Sets a row on the display.
 * @param phid An attached phidget text lcd handle.
 * @param index The row index.
 * @param displayString The string to display. Make sure this is not longer then \ref CPhidgetTextLCD_getColumnCount.
 */
__declspec (dllimport)
     int __stdcall CPhidgetTextLCD_setDisplayString (CPhidgetTextLCDHandle phid, int index, char *displayString);

__declspec (deprecated ("Deprecated - use CPhidgetTextLCD_getRowCount")) __declspec (dllimport)
     int __stdcall
     CPhidgetTextLCD_getNumRows (CPhidgetTextLCDHandle, int *);
__declspec (deprecated ("Deprecated - use CPhidgetTextLCD_getColumnCount")) __declspec (dllimport)
     int __stdcall
     CPhidgetTextLCD_getNumColumns (CPhidgetTextLCDHandle, int *);

/** @} */

/** \defgroup phidtextled Phidget TextLED 
 * \ingroup phidgets
 * Calls specific to the Phidget Text LED. See the product manual for more specific API details, supported functionality, units, etc.
 * @{
 */

     typedef struct _CPhidgetTextLED *
      CPhidgetTextLEDHandle;
__declspec (dllimport)
     int __stdcall CPhidgetTextLED_create (CPhidgetTextLEDHandle * phid);

/**
 * Gets the number of rows supported by this display.
 * @param phid An attached phidget text led handle.
 * @param count The row count.
 */
__declspec (dllimport)
     int __stdcall CPhidgetTextLED_getRowCount (CPhidgetTextLEDHandle phid, int *count);
/**
 * Gets the number of columns per supported by this display.
 * @param phid An attached phidget text led handle.
 * @param count The Column count.
 */
__declspec (dllimport)
     int __stdcall CPhidgetTextLED_getColumnCount (CPhidgetTextLEDHandle phid, int *count);

/**
 * Gets the last set brightness value.
 * @param phid An attached phidget text led handle.
 * @param brightness The brightness (0-100).
 */
__declspec (dllimport)
     int __stdcall CPhidgetTextLED_getBrightness (CPhidgetTextLEDHandle phid, int *brightness);
/**
 * Sets the last set brightness value.
 * @param phid An attached phidget text led handle.
 * @param brightness The brightness (0-100).
 */
__declspec (dllimport)
     int __stdcall CPhidgetTextLED_setBrightness (CPhidgetTextLEDHandle phid, int brightness);

/**
 * Sets a row on the display.
 * @param phid An attached phidget text led handle.
 * @param index The row index.
 * @param displayString The string to display. Make sure this is not longer then \ref CPhidgetTextLED_getColumnCount.
 */
__declspec (dllimport)
     int __stdcall CPhidgetTextLED_setDisplayString (CPhidgetTextLEDHandle phid, int index, char *displayString);

__declspec (deprecated ("Deprecated - use CPhidgetTextLED_getRowCount")) __declspec (dllimport)
     int __stdcall
     CPhidgetTextLED_getNumRows (CPhidgetTextLEDHandle, int *);
__declspec (deprecated ("Deprecated - use CPhidgetTextLED_getColumnCount")) __declspec (dllimport)
     int __stdcall
     CPhidgetTextLED_getNumColumns (CPhidgetTextLEDHandle, int *);

/** @} */

/** \defgroup phidweight Phidget Weight Sensor 
 * \ingroup phidgets
 * Calls specific to the Phidget Weight Sensor. See the product manual for more specific API details, supported functionality, units, etc.
 * @{
 */

     typedef struct _CPhidgetWeightSensor *
      CPhidgetWeightSensorHandle;
__declspec (dllimport)
     int __stdcall CPhidgetWeightSensor_create (CPhidgetWeightSensorHandle * phid);

/**
 * Gets the sensed weight.
 * @param phid An attached phidget weight sensor handle.
 * @param weight The weight.
 */
__declspec (dllimport)
     int __stdcall CPhidgetWeightSensor_getWeight (CPhidgetWeightSensorHandle phid, double *weight);
/**
 * Set a weight change handler. This is called when the weight changes by more then the change trigger.
 * @param phid An attached phidget weight sensor handle.
 * @param fptr Callback function pointer.
 * @param userPtr A pointer for use by the user - this value is passed back into the callback function.
 */
__declspec (dllimport)
     int __stdcall CPhidgetWeightSensor_set_OnWeightChange_Handler (CPhidgetWeightSensorHandle phid, int (__stdcall * fptr) (CPhidgetWeightSensorHandle phid, void *userPtr, double weight),
								    void *userPtr);
/**
 * Gets the weight change trigger.
 * @param phid An attached phidget weight sensor handle.
 * @param trigger The change trigger.
 */
__declspec (dllimport)
     int __stdcall CPhidgetWeightSensor_getWeightChangeTrigger (CPhidgetWeightSensorHandle phid, double *trigger);
/**
 * Sets the weight change trigger.
 * @param phid An attached phidget weight sensor handle.
 * @param trigger The change trigger.
 */
__declspec (dllimport)
     int __stdcall CPhidgetWeightSensor_setWeightChangeTrigger (CPhidgetWeightSensorHandle phid, double trigger);

/** @} */
#ifndef CPHIDGET_CONSTANTS
#define CPHIDGET_CONSTANTS

/** \defgroup phidconst Phidget Constants 
 * Various constants used throughout the library.
 * @{
 */

/** \name Phidget States
 * Returned by getStatus() functions
 * @{
 */
#define PHIDGET_ATTACHED				0x1 /**< Phidget attached */
#define PHIDGET_NOTATTACHED				0x0 /**< Phidget not attached */
/** @} */

/** \name Phidget Error Codes
 * Returned by all C API calls
 * @{
 */
#define	PHIDGET_ERROR_CODE_COUNT		20
#define EPHIDGET_OK						0	/**< Function completed successfully. */
#define EPHIDGET_NOTFOUND				1	/**< Phidget not found. "A Phidget matching the type and or serial number could not be found." This code is not currently used. */
#define EPHIDGET_NOMEMORY				2	/**< No memory. "Memory could not be allocated." */
#define EPHIDGET_UNEXPECTED				3	/**< Unexpected. "Unexpected Error. Contact Phidgets Inc. for support." */
#define EPHIDGET_INVALIDARG				4	/**< Invalid argument. "Invalid argument passed to function." */
#define EPHIDGET_NOTATTACHED			5	/**< Phidget not attached. "Phidget not physically attached." */
#define EPHIDGET_INTERRUPTED			6	/**< Interrupted. "Read/Write operation was interrupted." This code is not currently used. */
#define EPHIDGET_INVALID				7	/**< Invalid error code. "The Error Code is not defined." */
#define EPHIDGET_NETWORK				8	/**< Network. "Network Error." */
#define EPHIDGET_UNKNOWNVAL				9	/**< Value unknown. "Value is Unknown (State not yet received from device, or not yet set by user)." */
#define EPHIDGET_BADPASSWORD			10	/**< Authorization exception. "Authorization Failed." */
#define EPHIDGET_UNSUPPORTED			11	/**< Unsupported. "Not Supported." */
#define EPHIDGET_DUPLICATE				12	/**< Duplicate request. "Duplicated request." */
#define EPHIDGET_TIMEOUT				13	/**< Timeout. "Given timeout has been exceeded." */
#define EPHIDGET_OUTOFBOUNDS			14	/**< Out of bounds. "Index out of Bounds." */
#define EPHIDGET_EVENT					15	/**< Event. "A non-null error code was returned from an event handler." This code is not currently used. */
#define EPHIDGET_NETWORK_NOTCONNECTED	16	/**< Network not connected. "A connection to the server does not exist." */
#define EPHIDGET_WRONGDEVICE			17	/**< Wrong device. "Function is not applicable for this device." */
#define EPHIDGET_CLOSED					18	/**< Phidget Closed. "Phidget handle was closed." */
#define EPHIDGET_BADVERSION				19	/**< Version Mismatch. "Webservice and Client protocol versions don't match. Update to newest release." */
/** @} */

/** \name Phidget Unknown Constants
 * Data values will be set to these constants when a call fails with \ref EPHIDGET_UNKNOWNVAL.
 * @{
 */
#define PUNK_BOOL	0x02					/**< Unknown Boolean (unsigned char) */
#define PUNK_SHRT	0x7FFF					/**< Unknown Short	 (16-bit) */
#define PUNK_INT	0x7FFFFFFF				/**< Unknown Integer (32-bit) */
#define PUNK_INT64	0x7FFFFFFFFFFFFFFFLL	/**< Unknown Integer (64-bit) */
#define PUNK_DBL	1e300					/**< Unknown Double */
#define PUNK_FLT	1e30					/**< Unknown Float */
/** @} */

#define PFALSE		0x00	/**< False. Used for boolean values. */
#define PTRUE		0x01	/**< True. Used for boolean values. */

/** @} */

#endif

#ifdef __cplusplus
}
#endif
