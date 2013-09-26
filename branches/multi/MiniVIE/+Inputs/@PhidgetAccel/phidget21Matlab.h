/* 
 * Phidget21 Header for Matlab 
 * -All pointers to structs have been changed to long, as Matlab seems 
 *  to be unhappy with either the undefined stucts or the double pointers. 
 */ 

typedef long CPhidgetHandle;

typedef enum
{
 PHIDCLASS_NOTHING = 1,
 PHIDCLASS_ACCELEROMETER,
 PHIDCLASS_ADVANCEDSERVO,
 PHIDCLASS_ENCODER,
 PHIDCLASS_GPS,
 PHIDCLASS_GYROSCOPE,
 PHIDCLASS_INTERFACEKIT,
 PHIDCLASS_LED,
 PHIDCLASS_MOTORCONTROL,
 PHIDCLASS_PHSENSOR,
 PHIDCLASS_RFID,
 PHIDCLASS_SERVO,
 PHIDCLASS_STEPPER,
 PHIDCLASS_TEMPERATURESENSOR,
 PHIDCLASS_TEXTLCD,
 PHIDCLASS_TEXTLED,
 PHIDCLASS_WEIGHTSENSOR,

} CPhidget_DeviceClass;

typedef enum
{

 PHIDID_ACCELEROMETER_2AXIS = 0x071,
 PHIDID_ACCELEROMETER_3AXIS = 0x07E,
 PHIDID_ADVANCEDSERVO_8MOTOR = 0x03A,
 PHIDID_BIPOLAR_STEPPER_1MOTOR = 0x07B,
 PHIDID_ENCODER_1ENCODER_1INPUT = 0x04B,
 PHIDID_ENCODER_HS_1ENCODER = 0x080,
 PHIDID_INTERFACEKIT_0_0_4 = 0x040,
 PHIDID_INTERFACEKIT_0_0_8 = 0x081,
 PHIDID_INTERFACEKIT_0_16_16 = 0x044,
 PHIDID_INTERFACEKIT_8_8_8 = 0x045,
 PHIDID_INTERFACEKIT_8_8_8_w_LCD = 0x07D,
 PHIDID_LED_64 = 0x04A,
 PHIDID_LINEAR_TOUCH = 0x076,
 PHIDID_MOTORCONTROL_HC_2MOTOR = 0x059,
 PHIDID_MOTORCONTROL_LV_2MOTOR_4INPUT = 0x058,
 PHIDID_PHSENSOR = 0x074,
 PHIDID_RFID_2OUTPUT = 0x031,
 PHIDID_ROTARY_TOUCH = 0x077,
 PHIDID_SERVO_1MOTOR = 0x039,
 PHIDID_TEMPERATURESENSOR = 0x070,
 PHIDID_TEXTLCD_2x20_w_8_8_8 = 0x17D,
 PHIDID_UNIPOLAR_STEPPER_4MOTOR = 0x07A,

 PHIDID_INTERFACEKIT_0_8_8_w_LCD = 0x053,
 PHIDID_INTERFACEKIT_4_8_8 = 4,
 PHIDID_RFID = 0x030,
 PHIDID_SERVO_1MOTOR_OLD = 2,
 PHIDID_SERVO_4MOTOR = 0x038,
 PHIDID_SERVO_4MOTOR_OLD = 3,
 PHIDID_TEXTLCD_2x20 = 0x052,
 PHIDID_TEXTLCD_2x20_w_0_8_8 = 0x153,
 PHIDID_TEXTLED_1x8 = 0x049,
 PHIDID_TEXTLED_4x8 = 0x048,
 PHIDID_WEIGHTSENSOR = 0x072,

} CPhidget_DeviceID;

__declspec (dllimport)
     int __stdcall CPhidget_open (CPhidgetHandle phid, int serialNumber );

__declspec (dllimport)
     int __stdcall CPhidget_close (CPhidgetHandle phid);

__declspec (dllimport)
     int __stdcall CPhidget_delete (CPhidgetHandle phid);

__declspec (dllimport)
     int __stdcall CPhidget_set_OnDetach_Handler (CPhidgetHandle phid, int (__stdcall * fptr) (CPhidgetHandle phid, void *userPtr), void *userPtr);

__declspec (dllimport)
     int __stdcall CPhidget_set_OnAttach_Handler (CPhidgetHandle phid, int (__stdcall * fptr) (CPhidgetHandle phid, void *userPtr), void *userPtr);

__declspec (dllimport)
     int __stdcall CPhidget_set_OnServerConnect_Handler (CPhidgetHandle phid, int (__stdcall * fptr) (CPhidgetHandle phid, void *userPtr), void *userPtr);

__declspec (dllimport)
     int __stdcall CPhidget_set_OnServerDisconnect_Handler (CPhidgetHandle phid, int (__stdcall * fptr) (CPhidgetHandle phid, void *userPtr), void *userPtr);

__declspec (dllimport)
     int __stdcall CPhidget_set_OnError_Handler (CPhidgetHandle phid, int (__stdcall * fptr) (CPhidgetHandle phid, void *userPtr, int errorCode, const char *errorString), void *userPtr);

__declspec (dllimport)
     int __stdcall CPhidget_getDeviceName (CPhidgetHandle phid, const char **deviceName);

__declspec (dllimport)
     int __stdcall CPhidget_getSerialNumber (CPhidgetHandle phid, int *serialNumber);

__declspec (dllimport)
     int __stdcall CPhidget_getDeviceVersion (CPhidgetHandle phid, int *deviceVersion);

__declspec (dllimport)
     int __stdcall CPhidget_getDeviceStatus (CPhidgetHandle phid, int *deviceStatus);

__declspec (dllimport)
     int __stdcall CPhidget_getLibraryVersion (const char **libraryVersion);

__declspec (dllimport)
     int __stdcall CPhidget_getDeviceType (CPhidgetHandle phid, const char **deviceType);

__declspec (dllimport)
     int __stdcall CPhidget_getDeviceLabel (CPhidgetHandle phid, const char **deviceLabel);

__declspec (dllimport)
     int __stdcall CPhidget_setDeviceLabel (CPhidgetHandle phid, const char *deviceLabel);

__declspec (dllimport)
     int __stdcall CPhidget_getErrorDescription (int errorCode, const char **errorString);

__declspec (dllimport)
     int __stdcall CPhidget_waitForAttachment (CPhidgetHandle phid, int milliseconds);

__declspec (dllimport)
     int __stdcall CPhidget_getServerID (CPhidgetHandle phid, const char **serverID);

__declspec (dllimport)
     int __stdcall CPhidget_getServerAddress (CPhidgetHandle phid, const char **address, int *port);

__declspec (dllimport)
     int __stdcall CPhidget_getServerStatus (CPhidgetHandle phid, int *serverStatus);

__declspec (dllimport)
     int __stdcall CPhidget_getDeviceID (CPhidgetHandle phid, CPhidget_DeviceID * deviceID);

__declspec (dllimport)
     int __stdcall CPhidget_getDeviceClass (CPhidgetHandle phid, CPhidget_DeviceClass * deviceClass);

     typedef enum
     {
      PHIDGET_DICTIONARY_VALUE_CHANGED = 1,
      PHIDGET_DICTIONARY_ENTRY_ADDED,
      PHIDGET_DICTIONARY_ENTRY_REMOVING,
      PHIDGET_DICTIONARY_CURRENT_VALUE
     } CPhidgetDictionary_keyChangeReason;

     typedef long CPhidgetDictionaryHandle;

     typedef long CPhidgetDictionaryListenerHandle;

__declspec (dllimport)
     int __stdcall CPhidgetDictionary_create (CPhidgetDictionaryHandle * dict);

__declspec (dllimport)
     int __stdcall CPhidgetDictionary_close (CPhidgetDictionaryHandle dict);

__declspec (dllimport)
     int __stdcall CPhidgetDictionary_delete (CPhidgetDictionaryHandle dict);

__declspec (dllimport)
     int __stdcall CPhidgetDictionary_set_OnError_Handler (CPhidgetDictionaryHandle dict,
                                                           int (__stdcall * fptr) (CPhidgetDictionaryHandle, void *userPtr, int errorCode, const char *errorString), void *userPtr);

__declspec (dllimport)
     int __stdcall CPhidgetDictionary_addKey (CPhidgetDictionaryHandle dict, const char *key, const char *value, int persistent);

__declspec (dllimport)
     int __stdcall CPhidgetDictionary_removeKey (CPhidgetDictionaryHandle dict, const char *pattern);

     typedef int (__stdcall * CPhidgetDictionary_OnKeyChange_Function) (CPhidgetDictionaryHandle dict, void *userPtr, const char *key, const char *value, CPhidgetDictionary_keyChangeReason reason);

__declspec (dllimport)
     int __stdcall CPhidgetDictionary_set_OnKeyChange_Handler (CPhidgetDictionaryHandle dict, CPhidgetDictionaryListenerHandle * dictlistener, const char *pattern,
                                                               CPhidgetDictionary_OnKeyChange_Function fptr, void *userPtr);

__declspec (dllimport)
     int __stdcall CPhidgetDictionary_remove_OnKeyChange_Handler (CPhidgetDictionaryListenerHandle dictlistener);

__declspec (dllimport)
     int __stdcall CPhidgetDictionary_getKey (CPhidgetDictionaryHandle dict, const char *key, const char *value, int valueSize);

__declspec (dllimport)
     int __stdcall CPhidgetDictionary_set_OnServerConnect_Handler (CPhidgetDictionaryHandle dict, int (__stdcall * fptr) (CPhidgetDictionaryHandle dict, void *userPtr), void *userPtr);

__declspec (dllimport)
     int __stdcall CPhidgetDictionary_set_OnServerDisconnect_Handler (CPhidgetDictionaryHandle dict, int (__stdcall * fptr) (CPhidgetDictionaryHandle dict, void *userPtr), void *userPtr);

__declspec (dllimport)
     int __stdcall CPhidgetDictionary_getServerID (CPhidgetDictionaryHandle dict, const char **serverID);

__declspec (dllimport)
     int __stdcall CPhidgetDictionary_getServerAddress (CPhidgetDictionaryHandle dict, const char **address, int *port);

__declspec (dllimport)
     int __stdcall CPhidgetDictionary_getServerStatus (CPhidgetDictionaryHandle dict, int *serverStatus);

     typedef long CPhidgetManagerHandle;

__declspec (dllimport)
     int __stdcall CPhidgetManager_create (CPhidgetManagerHandle * phidm);

__declspec (dllimport)
     int __stdcall CPhidgetManager_open (CPhidgetManagerHandle phidm);

__declspec (dllimport)
     int __stdcall CPhidgetManager_close (CPhidgetManagerHandle phidm);

__declspec (dllimport)
     int __stdcall CPhidgetManager_delete (CPhidgetManagerHandle phidm);

__declspec (dllimport)
     int __stdcall CPhidgetManager_set_OnAttach_Handler (CPhidgetManagerHandle phidm, int (__stdcall * fptr) (CPhidgetHandle phid, void *userPtr), void *userPtr);

__declspec (dllimport)
     int __stdcall CPhidgetManager_set_OnDetach_Handler (CPhidgetManagerHandle phidm, int (__stdcall * fptr) (CPhidgetHandle phid, void *userPtr), void *userPtr);

__declspec (dllimport)
     int __stdcall CPhidgetManager_getAttachedDevices (CPhidgetManagerHandle phidm, CPhidgetHandle * phidArray[], int *count);

__declspec (dllimport)
     int __stdcall CPhidgetManager_freeAttachedDevicesArray (CPhidgetHandle phidArray[]);

__declspec (dllimport)
     int __stdcall CPhidgetManager_set_OnError_Handler (CPhidgetManagerHandle phidm, int (__stdcall * fptr) (CPhidgetManagerHandle phidm, void *userPtr, int errorCode, const char *errorString),
                                                        void *userPtr);

__declspec (dllimport)
     int __stdcall CPhidgetManager_set_OnServerConnect_Handler (CPhidgetManagerHandle phidm, int (__stdcall * fptr) (CPhidgetManagerHandle phidm, void *userPtr), void *userPtr);

__declspec (dllimport)
     int __stdcall CPhidgetManager_set_OnServerDisconnect_Handler (CPhidgetManagerHandle phidm, int (__stdcall * fptr) (CPhidgetManagerHandle phidm, void *userPtr), void *userPtr);

__declspec (dllimport)
     int __stdcall CPhidgetManager_getServerID (CPhidgetManagerHandle phidm, const char **serverID);

__declspec (dllimport)
     int __stdcall CPhidgetManager_getServerAddress (CPhidgetManagerHandle phidm, const char **address, int *port);

__declspec (dllimport)
     int __stdcall CPhidgetManager_getServerStatus (CPhidgetManagerHandle phidm, int *serverStatus);

__declspec (dllimport)
     int __stdcall CPhidget_openRemote (CPhidgetHandle phid, int serial, const char *serverID, const char *password);

__declspec (dllimport)
     int __stdcall CPhidget_openRemoteIP (CPhidgetHandle phid, int serial, const char *address, int port, const char *password);

__declspec (dllimport)
     int __stdcall CPhidgetManager_openRemote (CPhidgetManagerHandle phidm, const char *serverID, const char *password);

__declspec (dllimport)
     int __stdcall CPhidgetManager_openRemoteIP (CPhidgetManagerHandle phidm, const char *address, int port, const char *password);

__declspec (dllimport)
     int __stdcall CPhidgetDictionary_openRemote (CPhidgetDictionaryHandle dict, const char *serverID, const char *password);

__declspec (dllimport)
     int __stdcall CPhidgetDictionary_openRemoteIP (CPhidgetDictionaryHandle dict, const char *address, int port, const char *password);

     typedef enum
     {
      PHIDGET_LOG_CRITICAL = 1,
      PHIDGET_LOG_ERROR,
      PHIDGET_LOG_WARNING,
      PHIDGET_LOG_DEBUG,
      PHIDGET_LOG_INFO,
      PHIDGET_LOG_VERBOSE
     } CPhidgetLog_level;

__declspec (dllimport)
     int __stdcall CPhidget_enableLogging (CPhidgetLog_level level, const char *outputFile);

__declspec (dllimport)
     int __stdcall CPhidget_disableLogging ();

__declspec (dllimport)
     int __stdcall CPhidget_log (CPhidgetLog_level level, const char *id, const char *message);

     typedef long CPhidgetAccelerometerHandle;
__declspec (dllimport)
     int __stdcall CPhidgetAccelerometer_create (CPhidgetAccelerometerHandle * phid);

__declspec (dllimport)
     int __stdcall CPhidgetAccelerometer_getAxisCount (CPhidgetAccelerometerHandle phid, int *count);

__declspec (dllimport)
     int __stdcall CPhidgetAccelerometer_getAcceleration (CPhidgetAccelerometerHandle phid, int index, double *acceleration);

__declspec (dllimport)
     int __stdcall CPhidgetAccelerometer_getAccelerationMax (CPhidgetAccelerometerHandle phid, int index, double *max);

__declspec (dllimport)
     int __stdcall CPhidgetAccelerometer_getAccelerationMin (CPhidgetAccelerometerHandle phid, int index, double *min);

__declspec (dllimport)
     int __stdcall CPhidgetAccelerometer_set_OnAccelerationChange_Handler (CPhidgetAccelerometerHandle phid,
                                                                           int (__stdcall * fptr) (CPhidgetAccelerometerHandle phid, void *userPtr, int index, double acceleration), void *userPtr);

__declspec (dllimport)
     int __stdcall CPhidgetAccelerometer_getAccelerationChangeTrigger (CPhidgetAccelerometerHandle phid, int index, double *trigger);

__declspec (dllimport)
     int __stdcall CPhidgetAccelerometer_setAccelerationChangeTrigger (CPhidgetAccelerometerHandle phid, int index, double trigger);

     typedef long CPhidgetAdvancedServoHandle;
__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_create (CPhidgetAdvancedServoHandle * phid);

__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_getMotorCount (CPhidgetAdvancedServoHandle phid, int *count);

__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_getAcceleration (CPhidgetAdvancedServoHandle phid, int index, double *acceleration);

__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_setAcceleration (CPhidgetAdvancedServoHandle phid, int index, double acceleration);

__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_getAccelerationMax (CPhidgetAdvancedServoHandle phid, int index, double *max);

__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_getAccelerationMin (CPhidgetAdvancedServoHandle phid, int index, double *min);

__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_getVelocityLimit (CPhidgetAdvancedServoHandle phid, int index, double *limit);

__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_setVelocityLimit (CPhidgetAdvancedServoHandle phid, int index, double limit);

__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_getVelocity (CPhidgetAdvancedServoHandle phid, int index, double *velocity);

__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_getVelocityMax (CPhidgetAdvancedServoHandle phid, int index, double *max);

__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_getVelocityMin (CPhidgetAdvancedServoHandle phid, int index, double *min);

__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_set_OnVelocityChange_Handler (CPhidgetAdvancedServoHandle phid,
                                                                       int (__stdcall * fptr) (CPhidgetAdvancedServoHandle phid, void *userPtr, int index, double velocity), void *userPtr);

__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_getPosition (CPhidgetAdvancedServoHandle phid, int index, double *position);

__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_setPosition (CPhidgetAdvancedServoHandle phid, int index, double position);

__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_getPositionMax (CPhidgetAdvancedServoHandle phid, int index, double *max);

__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_setPositionMax (CPhidgetAdvancedServoHandle phid, int index, double max);

__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_getPositionMin (CPhidgetAdvancedServoHandle phid, int index, double *min);

__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_setPositionMin (CPhidgetAdvancedServoHandle phid, int index, double min);

__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_set_OnPositionChange_Handler (CPhidgetAdvancedServoHandle phid,
                                                                       int (__stdcall * fptr) (CPhidgetAdvancedServoHandle phid, void *userPtr, int index, double position), void *userPtr);

__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_getCurrent (CPhidgetAdvancedServoHandle phid, int index, double *current);

__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_set_OnCurrentChange_Handler (CPhidgetAdvancedServoHandle phid,
                                                                      int (__stdcall * fptr) (CPhidgetAdvancedServoHandle phid, void *userPtr, int index, double current), void *userPtr);

__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_getSpeedRampingOn (CPhidgetAdvancedServoHandle phid, int index, int *rampingState);

__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_setSpeedRampingOn (CPhidgetAdvancedServoHandle phid, int index, int rampingState);

__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_getEngaged (CPhidgetAdvancedServoHandle phid, int index, int *engagedState);

__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_setEngaged (CPhidgetAdvancedServoHandle phid, int index, int engagedState);

__declspec (dllimport)
     int __stdcall CPhidgetAdvancedServo_getStopped (CPhidgetAdvancedServoHandle phid, int index, int *stoppedState);

     typedef long CPhidgetEncoderHandle;
__declspec (dllimport)
     int __stdcall CPhidgetEncoder_create (CPhidgetEncoderHandle * phid);

__declspec (dllimport)
     int __stdcall CPhidgetEncoder_getInputCount (CPhidgetEncoderHandle phid, int *count);

__declspec (dllimport)
     int __stdcall CPhidgetEncoder_getInputState (CPhidgetEncoderHandle phid, int index, int *inputState);

__declspec (dllimport)
     int __stdcall CPhidgetEncoder_set_OnInputChange_Handler (CPhidgetEncoderHandle phid, int (__stdcall * fptr) (CPhidgetEncoderHandle phid, void *userPtr, int index, int inputState), void *userPtr);

__declspec (dllimport)
     int __stdcall CPhidgetEncoder_getEncoderCount (CPhidgetEncoderHandle phid, int *count);

__declspec (dllimport)
     int __stdcall CPhidgetEncoder_getPosition (CPhidgetEncoderHandle phid, int index, int *position);

__declspec (dllimport)
     int __stdcall CPhidgetEncoder_setPosition (CPhidgetEncoderHandle phid, int index, int position);

__declspec (dllimport)
     int __stdcall CPhidgetEncoder_set_OnPositionChange_Handler (CPhidgetEncoderHandle phid,
                                                                 int (__stdcall * fptr) (CPhidgetEncoderHandle phid, void *userPtr, int index, int time, int positionChange), void *userPtr);

     typedef long CPhidgetInterfaceKitHandle;
__declspec (dllimport)
     int __stdcall CPhidgetInterfaceKit_create (CPhidgetInterfaceKitHandle * phid);

__declspec (dllimport)
     int __stdcall CPhidgetInterfaceKit_getInputCount (CPhidgetInterfaceKitHandle phid, int *count);

__declspec (dllimport)
     int __stdcall CPhidgetInterfaceKit_getInputState (CPhidgetInterfaceKitHandle phid, int index, int *inputState);

__declspec (dllimport)
     int __stdcall CPhidgetInterfaceKit_set_OnInputChange_Handler (CPhidgetInterfaceKitHandle phid, int (__stdcall * fptr) (CPhidgetInterfaceKitHandle phid, void *userPtr, int index, int inputState),
                                                                   void *userPtr);

__declspec (dllimport)
     int __stdcall CPhidgetInterfaceKit_getOutputCount (CPhidgetInterfaceKitHandle phid, int *count);

__declspec (dllimport)
     int __stdcall CPhidgetInterfaceKit_getOutputState (CPhidgetInterfaceKitHandle phid, int index, int *outputState);

__declspec (dllimport)
     int __stdcall CPhidgetInterfaceKit_setOutputState (CPhidgetInterfaceKitHandle phid, int index, int outputState);

__declspec (dllimport)
     int __stdcall CPhidgetInterfaceKit_set_OnOutputChange_Handler (CPhidgetInterfaceKitHandle phid,
                                                                    int (__stdcall * fptr) (CPhidgetInterfaceKitHandle phid, void *userPtr, int index, int outputState), void *userPtr);

__declspec (dllimport)
     int __stdcall CPhidgetInterfaceKit_getSensorCount (CPhidgetInterfaceKitHandle phid, int *count);

__declspec (dllimport)
     int __stdcall CPhidgetInterfaceKit_getSensorValue (CPhidgetInterfaceKitHandle phid, int index, int *sensorValue);

__declspec (dllimport)
     int __stdcall CPhidgetInterfaceKit_getSensorRawValue (CPhidgetInterfaceKitHandle phid, int index, int *sensorRawValue);

__declspec (dllimport)
     int __stdcall CPhidgetInterfaceKit_set_OnSensorChange_Handler (CPhidgetInterfaceKitHandle phid,
                                                                    int (__stdcall * fptr) (CPhidgetInterfaceKitHandle phid, void *userPtr, int index, int sensorValue), void *userPtr);

__declspec (dllimport)
     int __stdcall CPhidgetInterfaceKit_getSensorChangeTrigger (CPhidgetInterfaceKitHandle phid, int index, int *trigger);

__declspec (dllimport)
     int __stdcall CPhidgetInterfaceKit_setSensorChangeTrigger (CPhidgetInterfaceKitHandle phid, int index, int trigger);

__declspec (dllimport)
     int __stdcall CPhidgetInterfaceKit_getRatiometric (CPhidgetInterfaceKitHandle phid, int *ratiometric);

__declspec (dllimport)
     int __stdcall CPhidgetInterfaceKit_setRatiometric (CPhidgetInterfaceKitHandle phid, int ratiometric);

     typedef long CPhidgetLEDHandle;
__declspec (dllimport)
     int __stdcall CPhidgetLED_create (CPhidgetLEDHandle * phid);

__declspec (dllimport)
     int __stdcall CPhidgetLED_getLEDCount (CPhidgetLEDHandle phid, int *count);

__declspec (dllimport)
     int __stdcall CPhidgetLED_getDiscreteLED (CPhidgetLEDHandle phid, int index, int *brightness);

__declspec (dllimport)
     int __stdcall CPhidgetLED_setDiscreteLED (CPhidgetLEDHandle phid, int index, int brightness);

     typedef long CPhidgetMotorControlHandle;
__declspec (dllimport)
     int __stdcall CPhidgetMotorControl_create (CPhidgetMotorControlHandle * phid);

__declspec (dllimport)
     int __stdcall CPhidgetMotorControl_getMotorCount (CPhidgetMotorControlHandle phid, int *count);

__declspec (dllimport)
     int __stdcall CPhidgetMotorControl_getVelocity (CPhidgetMotorControlHandle phid, int index, double *velocity);

__declspec (dllimport)
     int __stdcall CPhidgetMotorControl_setVelocity (CPhidgetMotorControlHandle phid, int index, double velocity);

__declspec (dllimport)
     int __stdcall CPhidgetMotorControl_set_OnVelocityChange_Handler (CPhidgetMotorControlHandle phid,
                                                                      int (__stdcall * fptr) (CPhidgetMotorControlHandle phid, void *userPtr, int index, double velocity), void *userPtr);

__declspec (dllimport)
     int __stdcall CPhidgetMotorControl_getAcceleration (CPhidgetMotorControlHandle phid, int index, double *acceleration);

__declspec (dllimport)
     int __stdcall CPhidgetMotorControl_setAcceleration (CPhidgetMotorControlHandle phid, int index, double acceleration);

__declspec (dllimport)
     int __stdcall CPhidgetMotorControl_getAccelerationMax (CPhidgetMotorControlHandle phid, int index, double *max);

__declspec (dllimport)
     int __stdcall CPhidgetMotorControl_getAccelerationMin (CPhidgetMotorControlHandle phid, int index, double *min);

__declspec (dllimport)
     int __stdcall CPhidgetMotorControl_getCurrent (CPhidgetMotorControlHandle phid, int index, double *current);

__declspec (dllimport)
     int __stdcall CPhidgetMotorControl_set_OnCurrentChange_Handler (CPhidgetMotorControlHandle phid,
                                                                     int (__stdcall * fptr) (CPhidgetMotorControlHandle phid, void *userPtr, int index, double current), void *userPtr);

__declspec (dllimport)
     int __stdcall CPhidgetMotorControl_getInputCount (CPhidgetMotorControlHandle phid, int *count);

__declspec (dllimport)
     int __stdcall CPhidgetMotorControl_getInputState (CPhidgetMotorControlHandle phid, int index, int *inputState);

__declspec (dllimport)
     int __stdcall CPhidgetMotorControl_set_OnInputChange_Handler (CPhidgetMotorControlHandle phid, int (__stdcall * fptr) (CPhidgetMotorControlHandle phid, void *userPtr, int index, int inputState),
                                                                   void *userPtr);

     typedef long CPhidgetPHSensorHandle;
__declspec (dllimport)
     int __stdcall CPhidgetPHSensor_create (CPhidgetPHSensorHandle * phid);

__declspec (dllimport)
     int __stdcall CPhidgetPHSensor_getPH (CPhidgetPHSensorHandle phid, double *ph);

__declspec (dllimport)
     int __stdcall CPhidgetPHSensor_getPHMax (CPhidgetPHSensorHandle phid, double *max);

__declspec (dllimport)
     int __stdcall CPhidgetPHSensor_getPHMin (CPhidgetPHSensorHandle phid, double *min);

__declspec (dllimport)
     int __stdcall CPhidgetPHSensor_set_OnPHChange_Handler (CPhidgetPHSensorHandle phid, int (__stdcall * fptr) (CPhidgetPHSensorHandle phid, void *userPtr, double ph), void *userPtr);

__declspec (dllimport)
     int __stdcall CPhidgetPHSensor_getPHChangeTrigger (CPhidgetPHSensorHandle phid, double *trigger);

__declspec (dllimport)
     int __stdcall CPhidgetPHSensor_setPHChangeTrigger (CPhidgetPHSensorHandle phid, double trigger);

__declspec (dllimport)
     int __stdcall CPhidgetPHSensor_getPotential (CPhidgetPHSensorHandle phid, double *potential);

__declspec (dllimport)
     int __stdcall CPhidgetPHSensor_getPotentialMax (CPhidgetPHSensorHandle phid, double *max);

__declspec (dllimport)
     int __stdcall CPhidgetPHSensor_getPotentialMin (CPhidgetPHSensorHandle phid, double *min);

__declspec (dllimport)
     int __stdcall CPhidgetPHSensor_setTemperature (CPhidgetPHSensorHandle phid, double temperature);

     typedef long CPhidgetRFIDHandle;
__declspec (dllimport)
     int __stdcall CPhidgetRFID_create (CPhidgetRFIDHandle * phid);

__declspec (dllimport)
     int __stdcall CPhidgetRFID_getOutputCount (CPhidgetRFIDHandle phid, int *count);

__declspec (dllimport)
     int __stdcall CPhidgetRFID_getOutputState (CPhidgetRFIDHandle phid, int index, int *outputState);

__declspec (dllimport)
     int __stdcall CPhidgetRFID_setOutputState (CPhidgetRFIDHandle phid, int index, int outputState);

__declspec (dllimport)
     int __stdcall CPhidgetRFID_set_OnOutputChange_Handler (CPhidgetRFIDHandle phid, int (__stdcall * fptr) (CPhidgetRFIDHandle phid, void *userPtr, int index, int outputState), void *userPtr);

__declspec (dllimport)
     int __stdcall CPhidgetRFID_getAntennaOn (CPhidgetRFIDHandle phid, int *antennaState);

__declspec (dllimport)
     int __stdcall CPhidgetRFID_setAntennaOn (CPhidgetRFIDHandle phid, int antennaState);

__declspec (dllimport)
     int __stdcall CPhidgetRFID_getLEDOn (CPhidgetRFIDHandle phid, int *LEDState);

__declspec (dllimport)
     int __stdcall CPhidgetRFID_setLEDOn (CPhidgetRFIDHandle phid, int LEDState);

__declspec (dllimport)
     int __stdcall CPhidgetRFID_getLastTag (CPhidgetRFIDHandle phid, unsigned char *tag);

__declspec (dllimport)
     int __stdcall CPhidgetRFID_getTagStatus (CPhidgetRFIDHandle phid, int *status);

__declspec (dllimport)
     int __stdcall CPhidgetRFID_set_OnTag_Handler (CPhidgetRFIDHandle phid, int (__stdcall * fptr) (CPhidgetRFIDHandle phid, void *userPtr, unsigned char *tag), void *userPtr);

__declspec (dllimport)
     int __stdcall CPhidgetRFID_set_OnTagLost_Handler (CPhidgetRFIDHandle phid, int (__stdcall * fptr) (CPhidgetRFIDHandle phid, void *userPtr, unsigned char *tag), void *userPtr);

     typedef long CPhidgetServoHandle;
__declspec (dllimport)
     int __stdcall CPhidgetServo_create (CPhidgetServoHandle * phid);

__declspec (dllimport)
     int __stdcall CPhidgetServo_getMotorCount (CPhidgetServoHandle phid, int *count);

__declspec (dllimport)
     int __stdcall CPhidgetServo_getPosition (CPhidgetServoHandle phid, int index, double *position);

__declspec (dllimport)
     int __stdcall CPhidgetServo_setPosition (CPhidgetServoHandle phid, int index, double position);

__declspec (dllimport)
     int __stdcall CPhidgetServo_getPositionMax (CPhidgetServoHandle phid, int index, double *max);

__declspec (dllimport)
     int __stdcall CPhidgetServo_getPositionMin (CPhidgetServoHandle phid, int index, double *min);

__declspec (dllimport)
     int __stdcall CPhidgetServo_set_OnPositionChange_Handler (CPhidgetServoHandle phid, int (__stdcall * fptr) (CPhidgetServoHandle phid, void *userPtr, int index, double position), void *userPtr);

__declspec (dllimport)
     int __stdcall CPhidgetServo_getEngaged (CPhidgetServoHandle phid, int index, int *engagedState);

__declspec (dllimport)
     int __stdcall CPhidgetServo_setEngaged (CPhidgetServoHandle phid, int index, int engagedState);

     typedef long CPhidgetStepperHandle;
__declspec (dllimport)
     int __stdcall CPhidgetStepper_create (CPhidgetStepperHandle * phid);

__declspec (dllimport)
     int __stdcall CPhidgetStepper_getInputCount (CPhidgetStepperHandle phid, int *count);

__declspec (dllimport)
     int __stdcall CPhidgetStepper_getInputState (CPhidgetStepperHandle phid, int index, int *inputState);

__declspec (dllimport)
     int __stdcall CPhidgetStepper_set_OnInputChange_Handler (CPhidgetStepperHandle phid, int (__stdcall * fptr) (CPhidgetStepperHandle phid, void *userPtr, int index, int inputState), void *userPtr);

__declspec (dllimport)
     int __stdcall CPhidgetStepper_getMotorCount (CPhidgetStepperHandle phid, int *count);

__declspec (dllimport)
     int __stdcall CPhidgetStepper_getAcceleration (CPhidgetStepperHandle phid, int index, double *acceleration);

__declspec (dllimport)
     int __stdcall CPhidgetStepper_setAcceleration (CPhidgetStepperHandle phid, int index, double acceleration);

__declspec (dllimport)
     int __stdcall CPhidgetStepper_getAccelerationMax (CPhidgetStepperHandle phid, int index, double *max);

__declspec (dllimport)
     int __stdcall CPhidgetStepper_getAccelerationMin (CPhidgetStepperHandle phid, int index, double *min);

__declspec (dllimport)
     int __stdcall CPhidgetStepper_getVelocityLimit (CPhidgetStepperHandle phid, int index, double *limit);

__declspec (dllimport)
     int __stdcall CPhidgetStepper_setVelocityLimit (CPhidgetStepperHandle phid, int index, double limit);

__declspec (dllimport)
     int __stdcall CPhidgetStepper_getVelocity (CPhidgetStepperHandle phid, int index, double *velocity);

__declspec (dllimport)
     int __stdcall CPhidgetStepper_getVelocityMax (CPhidgetStepperHandle phid, int index, double *max);

__declspec (dllimport)
     int __stdcall CPhidgetStepper_getVelocityMin (CPhidgetStepperHandle phid, int index, double *min);

__declspec (dllimport)
     int __stdcall CPhidgetStepper_set_OnVelocityChange_Handler (CPhidgetStepperHandle phid, int (__stdcall * fptr) (CPhidgetStepperHandle phid, void *userPtr, int index, double velocity),
                                                                 void *userPtr);

__declspec (dllimport)
     int __stdcall CPhidgetStepper_getTargetPosition (CPhidgetStepperHandle phid, int index, __int64 * position);

__declspec (dllimport)
     int __stdcall CPhidgetStepper_setTargetPosition (CPhidgetStepperHandle phid, int index, __int64 position);

__declspec (dllimport)
     int __stdcall CPhidgetStepper_getCurrentPosition (CPhidgetStepperHandle phid, int index, __int64 * position);

__declspec (dllimport)
     int __stdcall CPhidgetStepper_setCurrentPosition (CPhidgetStepperHandle phid, int index, __int64 position);

__declspec (dllimport)
     int __stdcall CPhidgetStepper_getPositionMax (CPhidgetStepperHandle phid, int index, __int64 * max);

__declspec (dllimport)
     int __stdcall CPhidgetStepper_getPositionMin (CPhidgetStepperHandle phid, int index, __int64 * min);

__declspec (dllimport)
     int __stdcall CPhidgetStepper_set_OnPositionChange_Handler (CPhidgetStepperHandle phid, int (__stdcall * fptr) (CPhidgetStepperHandle phid, void *userPtr, int index, __int64 position),
                                                                 void *userPtr);

__declspec (dllimport)
     int __stdcall CPhidgetStepper_getCurrentLimit (CPhidgetStepperHandle phid, int index, double *limit);

__declspec (dllimport)
     int __stdcall CPhidgetStepper_setCurrentLimit (CPhidgetStepperHandle phid, int index, double limit);

__declspec (dllimport)
     int __stdcall CPhidgetStepper_getCurrent (CPhidgetStepperHandle phid, int index, double *current);

__declspec (dllimport)
     int __stdcall CPhidgetStepper_getCurrentMax (CPhidgetStepperHandle phid, int index, double *max);

__declspec (dllimport)
     int __stdcall CPhidgetStepper_getCurrentMin (CPhidgetStepperHandle phid, int index, double *min);

__declspec (dllimport)
     int __stdcall CPhidgetStepper_set_OnCurrentChange_Handler (CPhidgetStepperHandle phid, int (__stdcall * fptr) (CPhidgetStepperHandle phid, void *userPtr, int index, double current),
                                                                void *userPtr);

__declspec (dllimport)
     int __stdcall CPhidgetStepper_getEngaged (CPhidgetStepperHandle phid, int index, int *engagedState);

__declspec (dllimport)
     int __stdcall CPhidgetStepper_setEngaged (CPhidgetStepperHandle phid, int index, int engagedState);

__declspec (dllimport)
     int __stdcall CPhidgetStepper_getStopped (CPhidgetStepperHandle phid, int index, int *stoppedState);

     typedef long CPhidgetTemperatureSensorHandle;
__declspec (dllimport)
     int __stdcall CPhidgetTemperatureSensor_create (CPhidgetTemperatureSensorHandle * phid);

     typedef enum
     {
      PHIDGET_TEMPERATURE_SENSOR_K_TYPE = 1,
      PHIDGET_TEMPERATURE_SENSOR_J_TYPE,
      PHIDGET_TEMPERATURE_SENSOR_E_TYPE,
      PHIDGET_TEMPERATURE_SENSOR_T_TYPE
     } CPhidgetTemperatureSensor_ThermocoupleType;

__declspec (dllimport)
     int __stdcall CPhidgetTemperatureSensor_getTemperatureInputCount (CPhidgetTemperatureSensorHandle phid, int *count);

__declspec (dllimport)
     int __stdcall CPhidgetTemperatureSensor_getTemperature (CPhidgetTemperatureSensorHandle phid, int index, double *temperature);

__declspec (dllimport)
     int __stdcall CPhidgetTemperatureSensor_getTemperatureMax (CPhidgetTemperatureSensorHandle phid, int index, double *max);

__declspec (dllimport)
     int __stdcall CPhidgetTemperatureSensor_getTemperatureMin (CPhidgetTemperatureSensorHandle phid, int index, double *min);

__declspec (dllimport)
     int __stdcall CPhidgetTemperatureSensor_set_OnTemperatureChange_Handler (CPhidgetTemperatureSensorHandle phid,
                                                                              int (__stdcall * fptr) (CPhidgetTemperatureSensorHandle phid, void *userPtr, int index, double temperature),
                                                                              void *userPtr);

__declspec (dllimport)
     int __stdcall CPhidgetTemperatureSensor_getTemperatureChangeTrigger (CPhidgetTemperatureSensorHandle phid, int index, double *trigger);

__declspec (dllimport)
     int __stdcall CPhidgetTemperatureSensor_setTemperatureChangeTrigger (CPhidgetTemperatureSensorHandle phid, int index, double trigger);

__declspec (dllimport)
     int __stdcall CPhidgetTemperatureSensor_getPotential (CPhidgetTemperatureSensorHandle phid, int index, double *potential);

__declspec (dllimport)
     int __stdcall CPhidgetTemperatureSensor_getPotentialMax (CPhidgetTemperatureSensorHandle phid, int index, double *max);

__declspec (dllimport)
     int __stdcall CPhidgetTemperatureSensor_getPotentialMin (CPhidgetTemperatureSensorHandle phid, int index, double *min);

__declspec (dllimport)
     int __stdcall CPhidgetTemperatureSensor_getAmbientTemperature (CPhidgetTemperatureSensorHandle phid, double *ambient);

__declspec (dllimport)
     int __stdcall CPhidgetTemperatureSensor_getAmbientTemperatureMax (CPhidgetTemperatureSensorHandle phid, double *max);

__declspec (dllimport)
     int __stdcall CPhidgetTemperatureSensor_getAmbientTemperatureMin (CPhidgetTemperatureSensorHandle phid, double *min);

__declspec (dllimport)
     int __stdcall CPhidgetTemperatureSensor_getThermocoupleType (CPhidgetTemperatureSensorHandle phid, int index, CPhidgetTemperatureSensor_ThermocoupleType * type);

__declspec (dllimport)
     int __stdcall CPhidgetTemperatureSensor_setThermocoupleType (CPhidgetTemperatureSensorHandle phid, int index, CPhidgetTemperatureSensor_ThermocoupleType type);

     typedef long CPhidgetTextLCDHandle;
__declspec (dllimport)
     int __stdcall CPhidgetTextLCD_create (CPhidgetTextLCDHandle * phid);

__declspec (dllimport)
     int __stdcall CPhidgetTextLCD_getRowCount (CPhidgetTextLCDHandle phid, int *count);

__declspec (dllimport)
     int __stdcall CPhidgetTextLCD_getColumnCount (CPhidgetTextLCDHandle phid, int *count);

__declspec (dllimport)
     int __stdcall CPhidgetTextLCD_getBacklight (CPhidgetTextLCDHandle phid, int *backlightState);

__declspec (dllimport)
     int __stdcall CPhidgetTextLCD_setBacklight (CPhidgetTextLCDHandle phid, int backlightState);

__declspec (dllimport)
     int __stdcall CPhidgetTextLCD_getContrast (CPhidgetTextLCDHandle phid, int *contrast);

__declspec (dllimport)
     int __stdcall CPhidgetTextLCD_setContrast (CPhidgetTextLCDHandle phid, int contrast);

__declspec (dllimport)
     int __stdcall CPhidgetTextLCD_getCursorOn (CPhidgetTextLCDHandle phid, int *cursorState);

__declspec (dllimport)
     int __stdcall CPhidgetTextLCD_setCursorOn (CPhidgetTextLCDHandle phid, int cursorState);

__declspec (dllimport)
     int __stdcall CPhidgetTextLCD_getCursorBlink (CPhidgetTextLCDHandle phid, int *cursorBlinkState);

__declspec (dllimport)
     int __stdcall CPhidgetTextLCD_setCursorBlink (CPhidgetTextLCDHandle phid, int cursorBlinkState);

__declspec (dllimport)
     int __stdcall CPhidgetTextLCD_setCustomCharacter (CPhidgetTextLCDHandle phid, int index, int var1, int var2);

__declspec (dllimport)
     int __stdcall CPhidgetTextLCD_setDisplayCharacter (CPhidgetTextLCDHandle phid, int index, int column, unsigned char character);

__declspec (dllimport)
     int __stdcall CPhidgetTextLCD_setDisplayString (CPhidgetTextLCDHandle phid, int index, char *displayString);

     typedef long CPhidgetTextLEDHandle;
__declspec (dllimport)
     int __stdcall CPhidgetTextLED_create (CPhidgetTextLEDHandle * phid);

__declspec (dllimport)
     int __stdcall CPhidgetTextLED_getRowCount (CPhidgetTextLEDHandle phid, int *count);

__declspec (dllimport)
     int __stdcall CPhidgetTextLED_getColumnCount (CPhidgetTextLEDHandle phid, int *count);

__declspec (dllimport)
     int __stdcall CPhidgetTextLED_getBrightness (CPhidgetTextLEDHandle phid, int *brightness);

__declspec (dllimport)
     int __stdcall CPhidgetTextLED_setBrightness (CPhidgetTextLEDHandle phid, int brightness);

__declspec (dllimport)
     int __stdcall CPhidgetTextLED_setDisplayString (CPhidgetTextLEDHandle phid, int index, char *displayString);

     typedef long CPhidgetWeightSensorHandle;
__declspec (dllimport)
     int __stdcall CPhidgetWeightSensor_create (CPhidgetWeightSensorHandle * phid);

__declspec (dllimport)
     int __stdcall CPhidgetWeightSensor_getWeight (CPhidgetWeightSensorHandle phid, double *weight);

__declspec (dllimport)
     int __stdcall CPhidgetWeightSensor_set_OnWeightChange_Handler (CPhidgetWeightSensorHandle phid, int (__stdcall * fptr) (CPhidgetWeightSensorHandle phid, void *userPtr, double weight),
                                                                    void *userPtr);

__declspec (dllimport)
     int __stdcall CPhidgetWeightSensor_getWeightChangeTrigger (CPhidgetWeightSensorHandle phid, double *trigger);

__declspec (dllimport)
     int __stdcall CPhidgetWeightSensor_setWeightChangeTrigger (CPhidgetWeightSensorHandle phid, double trigger);
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
#define PHIDGET_ATTACHED                                0x1 /**< Phidget attached */
#define PHIDGET_NOTATTACHED                             0x0 /**< Phidget not attached */
/** @} */

/** \name Phidget Error Codes
 * Returned by all C API calls
 * @{
 */
#define PHIDGET_ERROR_CODE_COUNT                20
#define EPHIDGET_OK                                             0       /**< Function completed successfully. */
#define EPHIDGET_NOTFOUND                               1       /**< Phidget not found. "A Phidget matching the type and or serial number could not be found." This code is not currently used. */
#define EPHIDGET_NOMEMORY                               2       /**< No memory. "Memory could not be allocated." */
#define EPHIDGET_UNEXPECTED                             3       /**< Unexpected. "Unexpected Error. Contact Phidgets Inc. for support." */
#define EPHIDGET_INVALIDARG                             4       /**< Invalid argument. "Invalid argument passed to function." */
#define EPHIDGET_NOTATTACHED                    5       /**< Phidget not attached. "Phidget not physically attached." */
#define EPHIDGET_INTERRUPTED                    6       /**< Interrupted. "Read/Write operation was interrupted." This code is not currently used. */
#define EPHIDGET_INVALID                                7       /**< Invalid error code. "The Error Code is not defined." */
#define EPHIDGET_NETWORK                                8       /**< Network. "Network Error." */
#define EPHIDGET_UNKNOWNVAL                             9       /**< Value unknown. "Value is Unknown (State not yet received from device, or not yet set by user)." */
#define EPHIDGET_BADPASSWORD                    10      /**< Authorization exception. "Authorization Failed." */
#define EPHIDGET_UNSUPPORTED                    11      /**< Unsupported. "Not Supported." */
#define EPHIDGET_DUPLICATE                              12      /**< Duplicate request. "Duplicated request." */
#define EPHIDGET_TIMEOUT                                13      /**< Timeout. "Given timeout has been exceeded." */
#define EPHIDGET_OUTOFBOUNDS                    14      /**< Out of bounds. "Index out of Bounds." */
#define EPHIDGET_EVENT                                  15      /**< Event. "A non-null error code was returned from an event handler." This code is not currently used. */
#define EPHIDGET_NETWORK_NOTCONNECTED   16      /**< Network not connected. "A connection to the server does not exist." */
#define EPHIDGET_WRONGDEVICE                    17      /**< Wrong device. "Function is not applicable for this device." */
#define EPHIDGET_CLOSED                                 18      /**< Phidget Closed. "Phidget handle was closed." */
#define EPHIDGET_BADVERSION                             19      /**< Version Mismatch. "Webservice and Client protocol versions don't match. Update to newest release." */
/** @} */

/** \name Phidget Unknown Constants
 * Data values will be set to these constants when a call fails with \ref EPHIDGET_UNKNOWNVAL.
 * @{
 */
#define PUNK_BOOL       0x02                                    /**< Unknown Boolean (unsigned char) */
#define PUNK_INT        0x7FFFFFFF                              /**< Unknown Integer (32-bit) */
#define PUNK_INT64      0x7FFFFFFFFFFFFFFFLL    /**< Unknown Integer (64-bit) */
#define PUNK_DBL        1e300                                   /**< Unknown Double */
#define PUNK_FLT        1e30                                    /**< Unknown Float */
/** @} */

#define PFALSE          0x00    /**< False. Used for boolean values. */
#define PTRUE           0x01    /**< True. Used for boolean values. */

/** @} */

#endif

