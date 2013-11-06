
// The following ifdef block is the standard way of creating macros which make exporting 
// from a DLL simpler. All files within this DLL are compiled with the CYBERGRASPMATLABDLL_EXPORTS
// symbol defined on the command line. this symbol should not be defined on any project
// that uses this DLL. This way any other project whose source files include this file see 
// CYBERGRASPMATLABDLL_API functions as being imported from a DLL, wheras this DLL sees symbols
// defined with this macro as being exported.
#ifdef CYBERGRASPMATLABDLL_EXPORTS
#define CYBERGRASPMATLABDLL_API __declspec(dllexport)
#else
#define CYBERGRASPMATLABDLL_API __declspec(dllimport)
#endif

// RSA: Added this line so that matlab can access functions
extern CYBERGRASPMATLABDLL_API int nCyberGraspMatlabDll;

// RSA: extern also required
#if defined(__cplusplus)
extern "C" {
#endif

CYBERGRASPMATLABDLL_API int initialize(void);

CYBERGRASPMATLABDLL_API int disconnect(int handle);

// see vtidm\client-types.h
// GR_CONTROL_REWIND(4)      - rewind mode.
// GR_CONTROL_FORCE(1)       - force mode.
// GR_CONTROL_EFFECT(5)      - effect mode.
// GR_CONTROL_IMPEDENCE(2)   - impedence mode.
//
CYBERGRASPMATLABDLL_API int setMode(int handle, int mode);

CYBERGRASPMATLABDLL_API int getMode(int handle);

CYBERGRASPMATLABDLL_API void setForce( int handle, double fd[5] );

CYBERGRASPMATLABDLL_API void setForceEffectActive( int handle,  int finger, int active );

CYBERGRASPMATLABDLL_API void setForceEffectActiveAll( int handle,  int active);

#if defined(__cplusplus)
}
#endif
