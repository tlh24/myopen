// CyberGraspMatlabDll.cpp : Defines the entry point for the DLL application.
//

#include "stdafx.h"
#include "CyberGraspMatlabDll.h"

#if defined( _WIN32 )
#define _WIN32_WINNT 0x0400			// avoid winsock problem
#include <iostream>
using std::cout;
#else
#include <unistd.h>
#include <iostream.h>
#endif

#include <vhandtk/vhtBase.h>


BOOL APIENTRY DllMain( HANDLE hModule, 
                       DWORD  ul_reason_for_call, 
                       LPVOID lpReserved
					 )
{
    switch (ul_reason_for_call)
	{
		case DLL_PROCESS_ATTACH:
		case DLL_THREAD_ATTACH:
		case DLL_THREAD_DETACH:
		case DLL_PROCESS_DETACH:
			break;
    }
    return TRUE;
}


// This is an example of an exported variable
CYBERGRASPMATLABDLL_API int nCyberGraspMatlabDll=0;

// This is an example of an exported function.
CYBERGRASPMATLABDLL_API int initialize(void)
{
   vhtIOConn *graspDict;
   vhtCyberGrasp *grasp;

   try
	{
		// Connect to the grasp
		graspDict = vhtIOConn::getDefault( vhtIOConn::grasp );

		// Expand the CyberGlove connection to the CyberTouch capabilities.
		grasp = new vhtCyberGrasp(graspDict);

      return (int)grasp;
	}
	catch (vhtBaseException *e)
	{
		printf("Error: %s\nPress <enter> to exit.\n", e->getMessage());

      getchar();
		return 0;
	}
}

CYBERGRASPMATLABDLL_API int disconnect(int handle)
{
   vhtCyberGrasp *grasp = (vhtCyberGrasp*)handle;

   return (int)grasp->disconnect();

}

CYBERGRASPMATLABDLL_API int setMode(int handle, int mode)
{
   vhtCyberGrasp *grasp = (vhtCyberGrasp*)handle;

   return (int)grasp->setMode(mode);
}

CYBERGRASPMATLABDLL_API int getMode(int handle)
{
   vhtCyberGrasp *grasp = (vhtCyberGrasp*)handle;

   return (int)grasp->getMode();
}

CYBERGRASPMATLABDLL_API void setForce( int handle, double fd[5] )
{
   vhtCyberGrasp *grasp = (vhtCyberGrasp*)handle;

   grasp->setForce(fd);
}

CYBERGRASPMATLABDLL_API void setForceEffectActive( int handle,  int finger, int active )
{
   vhtCyberGrasp *grasp = (vhtCyberGrasp*)handle;

   grasp->setForceEffectActive(finger, active != 0);
}


CYBERGRASPMATLABDLL_API void setForceEffectActiveAll( int handle,  int active)
{
   vhtCyberGrasp *grasp = (vhtCyberGrasp*)handle;

   grasp->setForceEffectActiveAll(active != 0);
}
