// mex -v -g vcapg2.cpp -f msvc60opts.bat
// mex -output vcapg2.dll vcapg2.cpp -I"c:\Program Files\Microsoft SDKs\Windows\v6.0A\Include"
// mex vcapg2.cpp -I"c:\Program Files\Microsoft SDKs\Windows\v7.0\Include"
// mex -v vcapg2.cpp -I"c:\Program Files\Microsoft SDKs\Windows\v6.0A\Include"  
// For win32 & Intel compiler please have strmiids.lib and amstrmid.lib in current dir
// mex -f mexopts_intel10.bat -output vcapg2.dll vcapg2.cpp  -I"c:\Program Files\Microsoft SDKs\Windows\v6.0a\Include"
// for win64, W7
//
// mex -f mexopts_intel11_64.bat  vcapg2.cpp  -I"c:\Program Files\Microsoft SDKs\Windows\v7.0\Include"
// (don't have strmiids.lib and amstrmid.lib in current dir)
//
// mapp=vcapg2;
//
//-------------------------------------------------------------------------
// VideoCAPture by Gerox(c) 1998 for MATLAB
// Clipboard Version for Video Capture by Gerox(c) 1998
// Frame memory Version for Video Capture by Gerox(c) 1998
// Support 16 bit color mode 1998.9.5 Kazuyuki Kobayashi
// 1998.9.6 For IBM Smart Video Capture Card Kazuyuki Kobayashi
// 1998.9.7 To fix for other video card (Canopus)
// 1998.9.8 floating point bug fixed.
// 1999.1.2 Support USB camera by using Clipboard mode.
// 1999.8.17 To add capability for select video card for I/O DATA USB camera.
// 2002.10.11 Convert from C++ version to C version & bug fix for windows 2000
// 2002.10.13 bug fix for windows 98 and matlab 5.3
// 2002.11.12 add pragma directive to avoid additional compile option
// 2002.12.26 display [direct copy/compressed] mode
///////////VCAPG2////////////////////////////////////////////////////
// 2003.01.01 Version up -> DirectShow version for WIN2000/XP
//                               For 95/98/ME,please use vcapg
// 2003.01.11 Multiple Camera support
// 2003.01.16 tested combination
//            IEEE1394DVCam / USB-CAP2 
//            USB-CAP2 / SGI VFW based capture board
//            GV-BCTV3/USB(with TV tuner) / USB-CAP2
// 2003.02.06 Add capability for change preview interval
// E-mail: ikko@k.hosei.ac.jp
// http://www.gerox.com
// modified for 64 bit-Systems Windows7 --(fe)--
// http://www.fh-muenster.de/fb2/personen/professoren/fehn
//-------------------------------------------------------------------------
#if 0
In orde to compile
mex vcapg2.cpp -f msvc60opts.bat
//changed in msvc60opts.bat////////////////////////////////////
set INCLUDE=C:\DXSDK\include;%MSVCDir%\INCLUDE;%MSVCDir%\MFC\INCLUDE;%MSVCDir%\ATL\INCLUDE;%INCLUDE%
set LIB=C:\DXSDK\lib;%MSVCDir%\LIB;%MSVCDir%\MFC\LIB;%LIB%
set NAME_OBJECT=/MT /Fo
//////////////////////////////////////
% VideoCature by Gerox(c) sample program
% 1998.9.6 Kazuyuki Kobayashi
% NOTE: 
% The 'clear' command cannot remove vcapg2 from MATLAB memory.
% In order to remove vcapg2,
% you have to use 'clear all' or 'clear mex' or clear vcapg2; 
% Example 
close all
figure;set(1,'doublebuffer','on');
%%%%%%% initialize mode
clear vcapg2;
cardnum = vcapg2;
%%%%%%% capture mode
mapp=vcapg2;
% Since MATLAB Ver 5.2 support undocumented property doublebuffer
ff=zeros(1,30);
[x,y,z]=size(mapp);
mmm=uint8(zeros(x,y,z,30));
for ii=1:30
	mapp=vcapg2;
	mapp = uint8((double(mapp) > 128)*255);
	hhh=abs(diff(double(mapp)));
	mapp=uint8(hhh/max(max(max(hhh)))*255);
	imshow(mapp,[];)
	drawnow;
	mmm(:,:,:,ii) = mapp;
	ff(ii)=cputime;
end
#endif
//-------------------------------------------------------------------------
#define WIN32_LEAN_AND_MEAN
#define STRICT
#pragma comment(lib,"user32.lib")
#pragma comment(lib,"gdi32.lib")
#pragma comment(lib,"shell32.lib")
#pragma comment(lib,"strmiids.lib")
#pragma comment(lib,"ole32.lib")
#pragma comment(lib,"amstrmid.lib")
#pragma comment(lib,"oleaut32.lib")

#include <float.h>
#include <windows.h>
#include <shellapi.h>
//--(fe)-- added because dxtrans not available in SDK 7.0
#pragma include_alias( "dxtrans.h", "qedit.h" )
#define __IDxtCompositor_INTERFACE_DEFINED__
#define __IDxtAlphaSetter_INTERFACE_DEFINED__
#define __IDxtJpeg_INTERFACE_DEFINED__
#define __IDxtKey_INTERFACE_DEFINED__          

#include <dshow.h>
#include <qedit.h>
#include "mex.h"

//#include "resource.h"

#define NUM 6
#define TIMER_ID 1
#define WM_USER_NOTIFYICON WM_USER
#define print mexPrintf("%s %d\n",__FILE__,__LINE__)

char szAppName[] = "vcapg2 Gerox(c) 2003-2011";
BOOL bClassRegistered = FALSE;
HANDLE hThrd = NULL;
static int initialized = 0;
int timer_rate = 300;
NOTIFYICONDATA nIcon[NUM];

IGraphBuilder* pFg = NULL;
ICaptureGraphBuilder2* pBuilder[NUM];
IBaseFilter* pF[NUM];
ISampleGrabber* pGrab[NUM];
IBaseFilter* pVCap[NUM];
AM_MEDIA_TYPE amt[NUM];
DWORD dwRegister = 0;

typedef struct{
	HINSTANCE hInst;
	volatile HWND hWnd[NUM];
	BYTE *lpBmpData[NUM];
	BITMAPINFOHEADER bih[NUM];
} CALLBACKINFO;
CALLBACKINFO cinfo;

BYTE* buf1[NUM];
long buf1size[NUM];

typedef struct{
	unsigned char rgbBlue;
	unsigned char rgbGreen;
	unsigned char rgbRed;
	unsigned char rgbReserved;
} SRGBQUAD;

unsigned char *imageinfo = NULL;
static unsigned char* bmpmap = NULL;
static int AvailableDevice = 0;
static int DetectedMaxDevice = 0;
static int bootnrhs = 0;
static int devnum = 0;
static int changed = -1;

void WINAPI FreeMediaType(AM_MEDIA_TYPE& mt) {
	if (mt.cbFormat != 0) {
		CoTaskMemFree((PVOID)mt.pbFormat);
		mt.cbFormat = 0;
		mt.pbFormat = NULL;
	}
	if (mt.pUnk != NULL) {
		mt.pUnk->Release();
		mt.pUnk = NULL;
	}
}

void WINAPI DeleteMediaType(AM_MEDIA_TYPE *pmt) {
	if (pmt == NULL) return;
	FreeMediaType(*pmt);
	CoTaskMemFree((PVOID)pmt);
}

static void UnCompress(int Width,int Height,unsigned short BitCount,unsigned int ClrUsed,unsigned int Size){
	int dims;
	int palsize = 0;
	int bit = 1;
	long linesize;
	long count;
	SRGBQUAD pal[256];
	SRGBQUAD* pal2;
	int i;
	unsigned char* data;
	int dimx;
	int x,y,col1,col2,col3;
	int dimoffset;
	int dimoffset2;
	if(BitCount <= 8) {
		bit = 8 / BitCount;
		palsize = 1 << (BitCount);
		if(ClrUsed != 0) palsize = ClrUsed;
	}
	linesize = (long)(Width / (8 / (double)BitCount));
	if(linesize % 4) linesize = (long)(((linesize / 4) + 1) * 4);
	count = (long) Size;
	palsize <<= 2;
	memcpy(pal,(imageinfo+count),palsize);
	count += palsize;
	dimoffset = Width * Height;
	dimoffset2 = dimoffset << 1;
	switch(BitCount) {
		case 4: /* ----------------------------- */
		for(y = Height - 1;y > -1;y--) {
			data = &imageinfo[count];
			count += linesize;
			for(x = 0;x < Width; x += bit) {
				dimx = x /bit;
				col1 = data[dimx] >> 4;
				col2 = data[dimx] & 0x0f;
				dims = x * Height + y;
				pal2 = &pal[col1];
				bmpmap[dims] = pal2->rgbRed;
				bmpmap[dims + dimoffset] = pal2->rgbGreen;
				bmpmap[dims + dimoffset2] = pal2->rgbBlue;
				dims += Height;
				pal2 = &pal[col2];
				bmpmap[dims] = pal2->rgbRed;
				bmpmap[dims + dimoffset] = pal2->rgbGreen;
				bmpmap[dims + dimoffset2] = pal2->rgbBlue;
			}
		}
		break;
		case 8: /* ----------------------------- */
		for(y = Height -1;y > -1;y--) {
			data = &imageinfo[count];
			count += linesize;
			for(x = 0;x < Width;x += bit) {
				col1 = data[x];
				dims = x * Height + y;
				pal2 = &pal[col1];
				bmpmap[dims] = pal2->rgbRed;
				bmpmap[dims + dimoffset] = pal2->rgbGreen;
				bmpmap[dims + dimoffset2] = pal2->rgbBlue;
			}
		}
		break;
		case 1: /* ----------------------------- */
		{
			const int c[] = {1,2,4,8,16,32,64,128};
			for(y = Height - 1;y > -1;y--) {
				data = &imageinfo[count];
				count += linesize;
				for(x = 0; x < Width; x += bit) {
					for(i = 0;i < 8; i++){
						if((data[x / bit] & c[i]) == c[i]) col1 = 1;
						else col1 = 0;
						dims = (x + i) * Height + y;
						pal2 = &pal[col1];
						bmpmap[dims] = pal2->rgbRed;
						bmpmap[dims + dimoffset] = pal2->rgbGreen;
						bmpmap[dims + dimoffset2] = pal2->rgbBlue;
					}
				}
			}
		}
		break;
		case 16: /* ----------------------------- */
		for(y = Height - 1;y > -1;y--) {
			data = &imageinfo[count];
			count += linesize;
			for(x = 0;x < Width;x += bit) {
				dimx = x << 1;
				col1 = (data[dimx] & 0x1f);
				col2 = ((data[dimx] >> 5) & 0x7) + 
						((data[dimx + 1] << 3) & 0x18);
				col3 = (data[dimx + 1] >> 2) & 0x1f;
				dims = x * Height + y;
				bmpmap[dims] = col3 << 3;
				bmpmap[dims + dimoffset] = col2 << 3;
				bmpmap[dims + dimoffset2] = col1 << 3;
			}
		}
		break;
		case 24: /* ----------------------------- */
		for(y = Height - 1;y > -1;y--) {
			data = &imageinfo[count];
			count += linesize;
			for(x = 0; x < Width; x += bit) {
				dimx = (x << 1) + x;
				col1 = data[dimx++];
				col2 = data[dimx++];
				col3 = data[dimx];
				dims = x * Height + y;
				bmpmap[dims] = col3;
				bmpmap[dims + dimoffset] = col2;
				bmpmap[dims + dimoffset2] = col1;
			}
		}
		break;
	}
}
HRESULT AddToRot(IUnknown *pUnkGraph,DWORD *pdwRegister) {
	IMoniker* pMoniker;
	IRunningObjectTable *pROT;
	WCHAR wsz[256];
	HRESULT hr;
	if (!pUnkGraph || !pdwRegister) return E_POINTER;
	if (FAILED(GetRunningObjectTable(0,&pROT))) return E_FAIL;
	wsprintfW(wsz,L"FilterGraph %08p pid %08x",(DWORD_PTR)pUnkGraph,GetCurrentProcessId());
	hr = CreateItemMoniker(L"!",wsz,&pMoniker);
	if (SUCCEEDED(hr)) {
		hr = pROT->Register(ROTFLAGS_REGISTRATIONKEEPSALIVE, pUnkGraph, pMoniker, pdwRegister);
		pMoniker->Release();
	}
	pROT->Release();
	return hr;
}
void RemoveFromRot(DWORD pdwRegister) {
	IRunningObjectTable* pROT;
	if (SUCCEEDED(GetRunningObjectTable(0,&pROT))) {
		pROT->Revoke(pdwRegister);
		pROT->Release();
	}
}
DWORD thread_Proc(void* pbmi) {
	MSG msg;
	int i;
	char str[256];
	for (i = 0;i < AvailableDevice;i++) {
		wsprintf(str,"Camera No.%d Gerox(c) 1998-2011",i);
		((CALLBACKINFO *)pbmi)->hWnd[i] = CreateWindowEx(0,szAppName,str,WS_OVERLAPPED | WS_VISIBLE,CW_USEDEFAULT,CW_USEDEFAULT,((CALLBACKINFO *)pbmi) -> bih[i].biWidth+8,((CALLBACKINFO *)pbmi) -> bih[i].biHeight+26,HWND_DESKTOP,NULL, ((CALLBACKINFO *)pbmi)->hInst, NULL);
#if defined(WIN64) || defined(_WIN64)
		//--(fe)--old: SetWindowLong(((CALLBACKINFO *)pbmi) -> hWnd[i],0,(LONG)pbmi);
		SetWindowLongPtrW(((CALLBACKINFO *)pbmi) -> hWnd[i],0,(LONG_PTR)pbmi);
#else
		SetWindowLong(((CALLBACKINFO *)pbmi) -> hWnd[i],0,(LONG)pbmi);
#endif
		if (timer_rate == 0) ShowWindow(((CALLBACKINFO *)pbmi)->hWnd[i],SW_HIDE);
	}
	while(GetMessage(&msg,NULL,0,0)){
		TranslateMessage(&msg);
		DispatchMessage(&msg);
	}
	return 0;
}
void StopPreview(void){
	IMediaControl* pMC = NULL;
	HRESULT hrr = pFg->QueryInterface(IID_IMediaControl, (void **)&pMC);
	if(SUCCEEDED(hrr)) pMC->Stop();
	pMC->Release();
}
void StartPreview(void){
	IMediaControl* pMC = NULL;
	HRESULT hrr = pFg->QueryInterface(IID_IMediaControl, (void **)&pMC);
	if(SUCCEEDED(hrr)) pMC->Run();
	pMC->Release();
}

void PopupMenuR(HWND hWnd,int num) {
	HMENU hMenu; 
	MENUITEMINFO menuinfo;
	POINT pt;
	char str[32];
	HRESULT hr;
	hMenu=CreatePopupMenu();
	ZeroMemory(&menuinfo,sizeof(MENUITEMINFO));
	menuinfo.cbSize=sizeof(MENUITEMINFO);
	menuinfo.fMask=MIIM_TYPE|MIIM_STATE|MIIM_ID;
	menuinfo.fType=MFT_STRING;
	menuinfo.fState=MFS_ENABLED;
	wsprintf(str,"About vcapg2");
	menuinfo.dwTypeData=str;
	menuinfo.cch=sizeof(str);
	menuinfo.wID=0x5000;
	InsertMenuItem(hMenu,0,TRUE,&menuinfo);

	IAMVfwCaptureDialogs *pDlg = NULL;
	pBuilder[num]->FindInterface(&PIN_CATEGORY_CAPTURE,&MEDIATYPE_Video,pVCap[num],IID_IAMVfwCaptureDialogs,(void **)&pDlg);

	menuinfo.fState=MFS_DISABLED;
	if(pDlg && !pDlg->HasDialog(VfwCaptureDialog_Format)) menuinfo.fState=MFS_ENABLED;
	wsprintf(str,"Video Format");
	menuinfo.dwTypeData=str;
	menuinfo.cch=sizeof(str);
	menuinfo.wID=0x5001;
	InsertMenuItem(hMenu,0,TRUE,&menuinfo);

	menuinfo.fState=MFS_DISABLED;
	if(pDlg && !pDlg->HasDialog(VfwCaptureDialog_Display)) menuinfo.fState=MFS_ENABLED;
	wsprintf(str,"Video Display");
	menuinfo.dwTypeData=str;
	menuinfo.cch=sizeof(str);
	menuinfo.wID=0x5002;
	InsertMenuItem(hMenu,0,TRUE,&menuinfo);

	menuinfo.fState=MFS_DISABLED;
	if(pDlg && !pDlg->HasDialog(VfwCaptureDialog_Source)) menuinfo.fState=MFS_ENABLED;
	wsprintf(str,"Video Source");
	menuinfo.dwTypeData=str;
	menuinfo.cch=sizeof(str);
	menuinfo.wID=0x5003;
	InsertMenuItem(hMenu,0,TRUE,&menuinfo);

	if(pDlg) {
		pDlg->Release();
		pDlg = NULL;
	}
////////////////////////////////////////
	ISpecifyPropertyPages *pSpecify;
	CAUUID caGUID;
	menuinfo.fState=MFS_DISABLED;
	hr = pVCap[num]->QueryInterface(IID_ISpecifyPropertyPages, (void **)&pSpecify);
	if(hr == S_OK) {
		hr = pSpecify->GetPages(&caGUID);
		if((hr == S_OK) && (caGUID.cElems > 0)) {
			menuinfo.fState=MFS_ENABLED;
			CoTaskMemFree(caGUID.pElems);
		}
		pSpecify->Release();
	}
	wsprintf(str,"Video Capture Filter");
	menuinfo.dwTypeData=str;
	menuinfo.cch=sizeof(str);
	menuinfo.wID=0x5004;
	InsertMenuItem(hMenu,0,TRUE,&menuinfo);
////////////////////////////////////////
	IAMStreamConfig *pSC;
	hr = pBuilder[num]->FindInterface(&PIN_CATEGORY_CAPTURE,&MEDIATYPE_Interleaved,pVCap[num], IID_IAMStreamConfig,(void **)&pSC);
	menuinfo.fState=MFS_DISABLED;
	if(hr != S_OK) hr = pBuilder[num]->FindInterface(&PIN_CATEGORY_CAPTURE,&MEDIATYPE_Video,pVCap[num],IID_IAMStreamConfig,(void **)&pSC);
	if(hr == S_OK) {
		hr = pSC->QueryInterface(IID_ISpecifyPropertyPages,(void **)&pSpecify);
		if(hr == S_OK) {
			hr = pSpecify->GetPages(&caGUID);
			if((hr == S_OK) && (caGUID.cElems > 0)) {
				menuinfo.fState=MFS_ENABLED;
				CoTaskMemFree(caGUID.pElems);
			}
			pSpecify->Release();
		}
		pSC->Release();
	}
	wsprintf(str,"Video Capture Pin");
	menuinfo.dwTypeData=str;
	menuinfo.cch=sizeof(str);
	menuinfo.wID=0x5005;
	InsertMenuItem(hMenu,0,TRUE,&menuinfo);
/////////////////////////////////////
	IAMCrossbar *pX,*pX2;
	IBaseFilter *pXF;
	menuinfo.fState=MFS_DISABLED;
	hr = pBuilder[num]->FindInterface(&PIN_CATEGORY_CAPTURE,&MEDIATYPE_Interleaved,pVCap[num],IID_IAMCrossbar, (void **)&pX);
	if(hr != S_OK) hr = pBuilder[num]->FindInterface(&PIN_CATEGORY_CAPTURE,&MEDIATYPE_Video,pVCap[num],IID_IAMCrossbar, (void **)&pX);
	if(hr == S_OK) {
		hr = pX->QueryInterface(IID_IBaseFilter, (void **)&pXF);
		if(hr == S_OK) {
			hr = pX->QueryInterface(IID_ISpecifyPropertyPages,(void **)&pSpecify);
			if(hr == S_OK) {
				hr = pSpecify->GetPages(&caGUID);
				if((hr == S_OK) && (caGUID.cElems > 0)) {
					menuinfo.fState=MFS_ENABLED;
					CoTaskMemFree(caGUID.pElems);
				}
				pSpecify->Release();
			}
			pXF->Release();
		}
		pX->Release();
	}
	wsprintf(str,"Video Crossbar");
	menuinfo.dwTypeData=str;
	menuinfo.cch=sizeof(str);
	menuinfo.wID=0x5006;
	InsertMenuItem(hMenu,0,TRUE,&menuinfo);
//////////////////////////////////////
	menuinfo.fState=MFS_DISABLED;
	hr = pBuilder[num]->FindInterface(&PIN_CATEGORY_CAPTURE,&MEDIATYPE_Interleaved,pVCap[num],IID_IAMCrossbar, (void **)&pX);
	if(hr != S_OK) hr = pBuilder[num]->FindInterface(&PIN_CATEGORY_CAPTURE,&MEDIATYPE_Video,pVCap[num],IID_IAMCrossbar, (void **)&pX);
	if(hr == S_OK) {
		hr = pX->QueryInterface(IID_IBaseFilter,(void **)&pXF);
		if(hr == S_OK) {
			hr = pBuilder[num]->FindInterface(&LOOK_UPSTREAM_ONLY,NULL,pXF,IID_IAMCrossbar,(void **)&pX2);
			if(hr == S_OK) {
				hr = pX2->QueryInterface(IID_ISpecifyPropertyPages,(void **)&pSpecify);
				if(hr == S_OK) {
					hr = pSpecify->GetPages(&caGUID);
					if((hr == S_OK) && (caGUID.cElems > 0)) {
						menuinfo.fState=MFS_ENABLED;
						CoTaskMemFree(caGUID.pElems);
					}
					pSpecify->Release();
				}
				pX2->Release();
			}
			pXF->Release();
		}
		pX->Release();
	}
	wsprintf(str,"Second Crossbar");
	menuinfo.dwTypeData=str;
	menuinfo.cch=sizeof(str);
	menuinfo.wID=0x5007;
	InsertMenuItem(hMenu,0,TRUE,&menuinfo);
/////////////////////////////////////////
	menuinfo.fState= MFS_DISABLED;
	IAMTVTuner *pTV;
	hr = pBuilder[num]->FindInterface(&PIN_CATEGORY_CAPTURE,&MEDIATYPE_Interleaved,pVCap[num],IID_IAMTVTuner,(void **)&pTV);
	if(hr != S_OK) hr = pBuilder[num]->FindInterface(&PIN_CATEGORY_CAPTURE,&MEDIATYPE_Video,pVCap[num],IID_IAMTVTuner,(void **)&pTV);
	if(hr == S_OK) {
		hr = pTV->QueryInterface(IID_ISpecifyPropertyPages,(void **)&pSpecify);
		if(hr == S_OK) {
			hr = pSpecify->GetPages(&caGUID);
			if((hr == S_OK) && (caGUID.cElems > 0)) {
				menuinfo.fState=MFS_ENABLED;
				CoTaskMemFree(caGUID.pElems);
			}
			pSpecify->Release();
		}
		pTV->Release();
	}
	wsprintf(str,"TV Tuner");
	menuinfo.dwTypeData=str; 
	menuinfo.cch=sizeof(str);
	menuinfo.wID=0x5008;
	InsertMenuItem(hMenu,0,TRUE,&menuinfo);
	GetCursorPos(&pt);
	TrackPopupMenu(hMenu,TPM_RIGHTALIGN,pt.x,pt.y,0,hWnd,NULL);
	DestroyMenu(hMenu);
}
void NukeDownstream(IBaseFilter *pf) {
	IPin *pP = 0, *pTo = 0;
	ULONG u;
	IEnumPins *pins = NULL;
	PIN_INFO pininfo;
	if (!pf) return;
	HRESULT hr = pf->EnumPins(&pins);
	pins->Reset();
	while(hr == NOERROR) {
		hr = pins->Next(1, &pP, &u);
		if(hr == S_OK && pP) {
			pP->ConnectedTo(&pTo);
			if(pTo) {
				hr = pTo->QueryPinInfo(&pininfo);
				if(hr == NOERROR) {
					if(pininfo.dir == PINDIR_INPUT) {
						NukeDownstream(pininfo.pFilter);
						pFg->Disconnect(pTo);
						pFg->Disconnect(pP);
						pFg->RemoveFilter(pininfo.pFilter);
					}
					pininfo.pFilter->Release();
				}
				pTo->Release();
			}
			pP->Release();
		}
	}
	if(pins) pins->Release();
}
void TearDownGraph(void) {
	int i;
	for(i = 0;i< AvailableDevice;i++) {
		if(pVCap[i]) NukeDownstream(pVCap[i]);
	}

}

BOOL InitCapFilters(CALLBACKINFO* pbmi) {
	AvailableDevice = DetectedMaxDevice;
///// MakeBuilder
	int i;
	for (i = 0;i < AvailableDevice;i++) {
		CoCreateInstance(CLSID_CaptureGraphBuilder2,NULL,CLSCTX_INPROC,IID_ICaptureGraphBuilder2,(void **)&pBuilder[i]);
	}
//////////////////////
	ULONG cFetched;
	ICreateDevEnum* pDevEnum =NULL;
	IEnumMoniker* pClassEnum = NULL;
	IMoniker* pMoniker = NULL;
	HRESULT hr;
	CoCreateInstance(CLSID_SystemDeviceEnum,NULL,CLSCTX_INPROC,IID_ICreateDevEnum,(void **)&pDevEnum);
	pDevEnum->CreateClassEnumerator(CLSID_VideoInputDeviceCategory,&pClassEnum,0);
	pDevEnum->Release();
	if(bootnrhs == 0) {
		for(i = 0; i < AvailableDevice;i++) {
			pClassEnum->Next(1,&pMoniker,&cFetched);
			pMoniker->BindToObject(0,0,IID_IBaseFilter,(void **)&pVCap[i]);
			pMoniker->Release();
		}
		pClassEnum->Release();
	} else {
		for(i = 0; i <= devnum;i++) {
			pClassEnum->Next(1,&pMoniker,&cFetched);
			if(i == devnum) {
				pClassEnum->Release();
				pMoniker->BindToObject(0,0,IID_IBaseFilter,(void **)&pVCap[0]);
				pMoniker->Release();
				break;
			} else pMoniker->Release();
		}
		AvailableDevice = 1;
	}
/////MakeGraph////////////////////////////////////////////
	CoCreateInstance(CLSID_FilterGraph,NULL,CLSCTX_INPROC,IID_IGraphBuilder,(void **)&pFg);
	hr = AddToRot(pFg,&dwRegister);
///////////////////////////////////////
	for (i = 0;i < AvailableDevice;i++) {
		pBuilder[i] -> SetFiltergraph(pFg);
		pFg -> AddFilter(pVCap[i],L"VideoCapture");
		CoCreateInstance(CLSID_SampleGrabber,NULL,CLSCTX_INPROC_SERVER,IID_IBaseFilter,(void **)&pF[i]);
		pF[i] -> QueryInterface(IID_ISampleGrabber,(void **)&pGrab[i]);
		pFg -> AddFilter(pF[i],L"SampleGrabber");
		BITMAPINFO BitmapInfo;
		ZeroMemory(&amt[i],sizeof(AM_MEDIA_TYPE));
		amt[i].formattype = FORMAT_VideoInfo;
		amt[i].majortype  = MEDIATYPE_Video;
		//--(fe)--- change from RGB555 to RGB24
		amt[i].subtype = MEDIASUBTYPE_RGB24;
		pGrab[i] -> SetMediaType(&amt[i]);
		hr = pBuilder[i]->RenderStream(&PIN_CATEGORY_CAPTURE,&MEDIATYPE_Interleaved,pVCap[i],NULL,pF[i]);
		if(hr != NOERROR) {
			hr = pBuilder[i]->RenderStream(&PIN_CATEGORY_CAPTURE,&MEDIATYPE_Video,pVCap[i],NULL,pF[i]);
		}
		pGrab[i] -> GetConnectedMediaType(&amt[i]);
		VIDEOINFOHEADER* pVideoHeader = (VIDEOINFOHEADER *)amt[i].pbFormat;
		ZeroMemory(&BitmapInfo,sizeof(BitmapInfo));
		CopyMemory(&BitmapInfo.bmiHeader,&(pVideoHeader -> bmiHeader),sizeof(BITMAPINFOHEADER));
		pbmi->bih[i] = BitmapInfo.bmiHeader;
		buf1size[i] = pbmi->bih[i].biSizeImage;
		buf1[i] = (BYTE *)malloc(buf1size[i]);
		pbmi->lpBmpData[i] = buf1[i];
	}
	return TRUE;
}
void ChangeResolution(CALLBACKINFO* pbmi,HWND hWnd) {
	HRESULT hr;
	int i;
	StopPreview();
	KillTimer(hWnd, TIMER_ID);
	for(i = 0;i< AvailableDevice;i++) {
		pGrab[i] -> SetBufferSamples(FALSE);
		SendMessage(pbmi->hWnd[i],WM_CLOSE,0,0);
		free(buf1[i]);
	}
	TearDownGraph();
	for (i = 0;i < AvailableDevice;i++) {
		pF[i]->Release();
		pF[i] = NULL;
		CoCreateInstance(CLSID_SampleGrabber,NULL,CLSCTX_INPROC_SERVER,IID_IBaseFilter,(void **)&pF[i]);
		pF[i] -> QueryInterface(IID_ISampleGrabber,(void **)&pGrab[i]);
		pFg -> AddFilter(pF[i],L"SampleGrabber");
		pGrab[i] -> SetMediaType(&amt[i]);
		hr = pBuilder[i]->RenderStream(&PIN_CATEGORY_CAPTURE,&MEDIATYPE_Interleaved,pVCap[i],NULL,pF[i]);
		if(hr != NOERROR) {
			hr = pBuilder[i]->RenderStream(&PIN_CATEGORY_CAPTURE,&MEDIATYPE_Video,pVCap[i],NULL,pF[i]);
		}
		FreeMediaType(amt[i]);
		ZeroMemory(&amt[i],sizeof(AM_MEDIA_TYPE));
		pGrab[i] -> GetConnectedMediaType(&amt[i]);
		BITMAPINFO BitmapInfo;
		VIDEOINFOHEADER* pVideoHeader = (VIDEOINFOHEADER *)amt[i].pbFormat;
		ZeroMemory(&BitmapInfo,sizeof(BitmapInfo));
		CopyMemory(&BitmapInfo.bmiHeader,&(pVideoHeader -> bmiHeader),sizeof(BITMAPINFOHEADER));
		pbmi->bih[i] = BitmapInfo.bmiHeader;
		buf1size[i] = pbmi->bih[i].biSizeImage;
		buf1[i] = (BYTE *)malloc(buf1size[i]);
		pbmi->lpBmpData[i] = buf1[i];
	}

//--(fe)--GetWindowLong changed to  GetWindowLongPtr
#if defined(WIN64) || defined(_WIN64)
	pbmi->hInst = (HINSTANCE)GetWindowLongPtr(GetFocus(),GWLP_HINSTANCE);
#else
	pbmi->hInst = (HINSTANCE)GetWindowLong(GetFocus(),GWL_HINSTANCE);
#endif

	DWORD tid;
	hThrd = CreateThread(NULL,0,(LPTHREAD_START_ROUTINE)thread_Proc,(void *)pbmi,0,&tid);
	for(i = 0;i < AvailableDevice;i++ ) {
		pGrab[i] -> SetOneShot(FALSE);
		pGrab[i] -> SetBufferSamples(TRUE);
		SetWindowPos(pbmi->hWnd[i], NULL, 0, 0,pbmi->bih[i].biWidth+8,pbmi->bih[i].biHeight+26, SWP_NOZORDER | SWP_NOMOVE);
	}
	if(timer_rate) SetTimer(hWnd,TIMER_ID,timer_rate,NULL);
	StartPreview();
}
LRESULT CALLBACK WndProc(HWND hWnd,unsigned msg,UINT wParam,LONG lParam) {
	PAINTSTRUCT ps;
	int i;
	HDC hdc;
	HRESULT hr;

	//--(fe)--GetWindowLong changed to  GetWindowLongPtr

#if defined(WIN64) || defined(_WIN64)

	CALLBACKINFO* pbmi = (CALLBACKINFO *)GetWindowLongPtr(hWnd,0);

#else

	CALLBACKINFO* pbmi = (CALLBACKINFO *)GetWindowLong(hWnd,0);

#endif

	switch (msg) {
		case WM_TIMER:
			for(i = 0;i < AvailableDevice;i++) {
				hr = pGrab[i] -> GetCurrentBuffer(&buf1size[i],(long *)buf1[i]);
				InvalidateRect(pbmi -> hWnd[i],NULL,FALSE);
			}
			break;
		case WM_PAINT:
			for(i = 0;i < AvailableDevice;i++) {
				hdc = BeginPaint(pbmi -> hWnd[i],&ps);
				SetDIBitsToDevice(hdc,0,0,pbmi -> bih[i].biWidth,pbmi -> bih[i].biHeight,0,0,0,pbmi -> bih[i].biHeight,pbmi -> lpBmpData[i],(BITMAPINFO *)&(pbmi -> bih[i]),DIB_RGB_COLORS);
				EndPaint(pbmi -> hWnd[i],&ps);
			}
			break;
		case WM_DESTROY:
			for(i = 0;i < AvailableDevice;i++) Shell_NotifyIcon(NIM_DELETE,&nIcon[i]);
			if(timer_rate) KillTimer(hWnd, TIMER_ID);
			break;
		case WM_CREATE:
			for(i = 0;i < AvailableDevice;i++) {
				nIcon[i].cbSize = sizeof(NOTIFYICONDATA);
				nIcon[i].uID = 1;
				nIcon[i].hWnd = hWnd;
				nIcon[i].uFlags = NIF_MESSAGE|NIF_ICON|NIF_TIP;
				nIcon[i].hIcon = LoadIcon(NULL,IDI_WINLOGO);
//nIcon[i].hIcon = LoadIcon(GetModuleHandle(NULL), MAKEINTRESOURCE(IDI_VCAPG2ICON));
//				nIcon[i].hIcon = LoadIcon(cinfo.hInst, MAKEINTRESOURCE(IDI_VCAPG2ICON));
				nIcon[i].uCallbackMessage = WM_USER_NOTIFYICON;
				strcpy(nIcon[i].szTip,"VideoCAPture by Gerox(c)");
				Shell_NotifyIcon(NIM_ADD,&nIcon[i]);
			}
			if(timer_rate) SetTimer(hWnd,TIMER_ID,timer_rate,NULL);
			break;
		case WM_USER_NOTIFYICON:
			if((lParam == WM_RBUTTONDOWN)||(lParam == WM_LBUTTONDOWN)) {
				for(i = 0;i < AvailableDevice;i++) {
					if(hWnd == pbmi->hWnd[i]) {
						SetForegroundWindow(hWnd);
						PopupMenuR(hWnd,i);
					}
				}
			}
			break;
		case WM_COMMAND:
			for(i = 0;i < AvailableDevice;i++) if(hWnd == pbmi->hWnd[i]) break;
			{
/////////////////////////////////////////////////////////////////
				IAMVfwCaptureDialogs *pDlg = NULL;
				CAUUID caGUID;
				ISpecifyPropertyPages* pSpecify;
				IAMStreamConfig *pSC;
				IAMTVTuner *pTV;
				IAMCrossbar *pX, *pX2;
				IBaseFilter *pXF;
				char str[256];
				switch((int)wParam-0x5000) {
				case 0:
					wsprintf(str,"Multiple semi simultaneous captures are available up to %d cards\nCopyright 1998-2011 Gerox(c) Build version %s %s\nhttp://www.gerox.com",NUM,__DATE__,__FILE__);
					MessageBox(NULL,str,"Video CApture program by Gerox version 2 for Multi-FrameGrabber",MB_OK| MB_TOPMOST);
				break;
				case 1:// Video Format
					StopPreview();
					pBuilder[i]->FindInterface(&PIN_CATEGORY_CAPTURE,&MEDIATYPE_Video,pVCap[i],IID_IAMVfwCaptureDialogs,(void **)&pDlg);
					pDlg->ShowDialog(VfwCaptureDialog_Format,NULL);
					if(pDlg) {
						pDlg->Release();
						pDlg = NULL;
					}
					ChangeResolution(pbmi,hWnd);
				break;
				case 2:// Video Display
					StopPreview();
					pBuilder[i]->FindInterface(&PIN_CATEGORY_CAPTURE,&MEDIATYPE_Video,pVCap[i],IID_IAMVfwCaptureDialogs,(void **)&pDlg);
					pDlg->ShowDialog(VfwCaptureDialog_Display, NULL);
					if(pDlg) {
						pDlg->Release();
						pDlg = NULL;
					}
					ChangeResolution(pbmi,hWnd);
				break;
				case 3:// Video Source
					StopPreview();
					pBuilder[i]->FindInterface(&PIN_CATEGORY_CAPTURE,&MEDIATYPE_Video,pVCap[i],IID_IAMVfwCaptureDialogs,(void **)&pDlg);
					pDlg->ShowDialog(VfwCaptureDialog_Source,NULL);
					if(pDlg) {
						pDlg->Release();
						pDlg = NULL;
					}
					ChangeResolution(pbmi,hWnd);
				break;
				case 4:// Video Capture Filter
					hr = pVCap[i]->QueryInterface(IID_ISpecifyPropertyPages,(void **)&pSpecify);
					if(SUCCEEDED(hr)) {
						hr = pSpecify->GetPages(&caGUID);
						OleCreatePropertyFrame(NULL,0,0,NULL,1,(IUnknown **)&pVCap[i],caGUID.cElems,caGUID.pElems,0,0,NULL);
						CoTaskMemFree(caGUID.pElems);
						pSpecify->Release();
						StopPreview();
						ChangeResolution(pbmi,hWnd);
					}
				break;
////////
				case 5:// Video Capture Pin
					StopPreview();
					hr = pBuilder[i]->FindInterface(&PIN_CATEGORY_CAPTURE,&MEDIATYPE_Interleaved, pVCap[i],IID_IAMStreamConfig, (void **)&pSC);
					if(hr != S_OK) hr = pBuilder[i]->FindInterface(&PIN_CATEGORY_CAPTURE,&MEDIATYPE_Video, pVCap[i],IID_IAMStreamConfig, (void **)&pSC);
					hr = pSC->QueryInterface(IID_ISpecifyPropertyPages,(void **)&pSpecify);
					if(hr == S_OK) {
						hr = pSpecify->GetPages(&caGUID);
						hr = OleCreatePropertyFrame(NULL,0,0,NULL,1,(IUnknown **)&pSC,caGUID.cElems,(GUID *)caGUID.pElems,0,0,NULL);
						CoTaskMemFree(caGUID.pElems);
						pSpecify->Release();
						pSC->Release();
						StopPreview();
						ChangeResolution(pbmi,hWnd);
					}
				break;
///////////////////////
				case 6://Video Crossbar
					hr = pBuilder[i]->FindInterface(&PIN_CATEGORY_CAPTURE,&MEDIATYPE_Interleaved,pVCap[i],IID_IAMCrossbar,(void **)&pX);
					if(hr != S_OK) hr = pBuilder[i]->FindInterface(&PIN_CATEGORY_CAPTURE,&MEDIATYPE_Video,pVCap[i],IID_IAMCrossbar,(void **)&pX);
					if(hr == S_OK) {
						hr = pX->QueryInterface(IID_ISpecifyPropertyPages,(void **)&pSpecify);
						if(hr == S_OK) {
							hr = pSpecify->GetPages(&caGUID);
							hr = OleCreatePropertyFrame(NULL, 0, 0,NULL, 1,(IUnknown **)&pX, caGUID.cElems,(GUID *)caGUID.pElems, 0, 0, NULL);
							CoTaskMemFree(caGUID.pElems);
							pSpecify->Release();
						}
						pX->Release();
					}
				break;
///////////////////////
				case 7:// Second bar
					hr = pBuilder[i]->FindInterface(&PIN_CATEGORY_CAPTURE,&MEDIATYPE_Interleaved,pVCap[i],IID_IAMCrossbar, (void **)&pX);
					if(hr != S_OK) hr = pBuilder[i]->FindInterface(&PIN_CATEGORY_CAPTURE,&MEDIATYPE_Video,pVCap[i],IID_IAMCrossbar, (void **)&pX);
					if(hr == S_OK) {
						hr = pX->QueryInterface(IID_IBaseFilter, (void **)&pXF);
						if(hr == S_OK) {
							hr = pBuilder[i]->FindInterface(&LOOK_UPSTREAM_ONLY, NULL, pXF,IID_IAMCrossbar,(void **)&pX2);
							if(hr == S_OK) {
								hr = pX2->QueryInterface(IID_ISpecifyPropertyPages,(void **)&pSpecify);
								if(hr == S_OK) {
									hr = pSpecify->GetPages(&caGUID);
									hr = OleCreatePropertyFrame(NULL, 0, 0,NULL, 1,(IUnknown **)&pX, caGUID.cElems,(GUID *)caGUID.pElems, 0, 0, NULL);
									CoTaskMemFree(caGUID.pElems);
									pSpecify->Release();
								}
								pX2->Release();
							}
							pXF->Release();
						}
						pX->Release();
					}
				break;
				case 8://TV tuner
					hr = pBuilder[i]->FindInterface(&PIN_CATEGORY_CAPTURE,&MEDIATYPE_Interleaved,pVCap[i],IID_IAMTVTuner, (void **)&pTV);
					if(hr != S_OK) hr = pBuilder[i]->FindInterface(&PIN_CATEGORY_CAPTURE,&MEDIATYPE_Video,pVCap[i],IID_IAMTVTuner,(void **)&pTV);
					if(hr == S_OK) {
						hr = pTV->QueryInterface(IID_ISpecifyPropertyPages,(void **)&pSpecify);
						if(hr == S_OK) {
							hr = pSpecify->GetPages(&caGUID);
							hr = OleCreatePropertyFrame(NULL, 0, 0,NULL, 1,(IUnknown **)&pTV, caGUID.cElems,(GUID *)caGUID.pElems, 0, 0, NULL);
							CoTaskMemFree(caGUID.pElems);
							pSpecify->Release();
						}
						pTV->Release();
					}
				break;
			}
////////////////////////////
		}
		break;
	}
	return DefWindowProc(hWnd,msg,wParam,lParam);
}
void CleanWindow(void) {
	DWORD dwExitCode = 0;
	int i;
	if(initialized) {
		mexPrintf("----------------------------------------------------\n");
		mexPrintf("Multiple semi simultaneous captures are available up to %d cards\n",NUM);
		mexPrintf("%s is safely removed from MATLAB memory. \n",__FILE__);
		mexPrintf("Video CAPture Ver.2.1 by Gerox(c) for Multiple Camera 1998-2011 Build %s\n",__DATE__);
		mexPrintf("----------------------------------------------------\n");
	} else {
		mexPrintf("----------------------------------------------------\n");
		mexPrintf("Multiple semi simultaneous captures are available up to %d cards\n",NUM);
		mexPrintf("Video CAPture Ver.2.1 by Gerox(c) for Multiple Camera 1998-2011 Build %s\n",__DATE__);
		mexPrintf("----------------------------------------------------\n");
	}
	StopPreview();
	for(i = 0;i< AvailableDevice;i++) {
		FreeMediaType(amt[i]);
	}
	for(i = 0;i< AvailableDevice;i++) {
		pGrab[i] -> SetBufferSamples(FALSE);
		SendMessage(cinfo.hWnd[i],WM_CLOSE,0,0);
		free(buf1[i]);
	}
	TearDownGraph();
	if(dwRegister) RemoveFromRot(dwRegister);
	dwRegister = 0;
	if(pFg) pFg->Release();
	pFg = NULL;
	for(i = 0;i< AvailableDevice;i++) {
		if(pBuilder[i]) pBuilder[i]->Release();
		pBuilder[i] = NULL;
	}
	for(i = 0;i< AvailableDevice;i++) {
		if(pVCap[i]) pVCap[i]->Release();
		pVCap[i] = NULL;
	}
	for(i = 0;i< AvailableDevice;i++) {
		if(pGrab[i]) pGrab[i]->Release();
		pGrab[i] = NULL;
	}
	for(i = 0;i< AvailableDevice;i++) {
		if(pF[i]) pF[i]->Release();
		pF[i] = NULL;
	}
	for(i = 0;i < AvailableDevice;i++) {
		DestroyWindow(cinfo.hWnd[i]);
		cinfo.hWnd[i] = NULL;
	}
	UnregisterClass(szAppName,cinfo.hInst);
	bClassRegistered = FALSE;
	hThrd = NULL;
	CoUninitialize();
	
	initialized = 0;
	timer_rate = 300;
	imageinfo = NULL;
	bmpmap = NULL;
	AvailableDevice = 0;
	DetectedMaxDevice = 0;
	bootnrhs = 0;
	devnum = 0;
}
void mexFunction(INT nlhs,mxArray* plhs[],INT nrhs,const mxArray* prhs[]) {
	int dims[3];
	WNDCLASSEX wc;
	int i;
	HRESULT hr;
	_control87(MCW_EM,MCW_EM);
	if(!initialized) {
		CoInitialize(NULL);
/* 
single or multi camera mode -> bootnrhs  single:1 multi:0
how many video capture cards -> AvailableDevice
select video capture card-> devnum
*/
		bootnrhs = nrhs;
		if(bootnrhs == 2) 
		{
			if(mxGetN(prhs[0]) * mxGetM(prhs[0]) == 0) bootnrhs = 0;
			else bootnrhs = 1;
			timer_rate = mxGetScalar(prhs[1]);
			timer_rate = timer_rate<0?0:timer_rate;
			timer_rate = timer_rate>65535?65535:timer_rate;
			mexPrintf("Preview refresh rate is setted to %d[mSec]\n",timer_rate);
		}
		ICreateDevEnum* pDevEnum =NULL;
		CoCreateInstance(CLSID_SystemDeviceEnum,NULL,CLSCTX_INPROC,IID_ICreateDevEnum,(void **)&pDevEnum);
		IEnumMoniker* pClassEnum = NULL;
		pDevEnum -> CreateClassEnumerator(CLSID_VideoInputDeviceCategory,&pClassEnum, 0);
		if (pClassEnum == NULL)
		{
			mexPrintf("-----------------------------------------\n");
			mexPrintf("No video capture device was detected.\n");
			mexPrintf("Multiple semi simultaneous captures available up to %d cards\n",NUM);
			mexPrintf("vcapg2 requires a video capture device, such as a USB camera,\n");
			mexPrintf("to be installed and working properly.\n");
			mexPrintf("Video CAPture Ver.2.1 for MATLAB by Gerox(c) 1998-2011\n");
			mexPrintf("                 Supported MATLAB version 6.1 or later\n");
			mexPrintf("                 Supported OS version 2000/XP/Vista/Seven\n");
			mexPrintf(" http://www.gerox.com    Build %s\n",__DATE__);
			mexPrintf("-----------------------------------------\n");
			pDevEnum -> Release();
			CoUninitialize();
			return ;
		} else initialized = 1;
		pDevEnum -> Release();
// Count aviailable video capture devices
		IMoniker* pMoniker = NULL;
		ULONG cFetched;
		DetectedMaxDevice = 0;
		while(1) 
		{
			if (pClassEnum->Next(1, &pMoniker, &cFetched) != S_OK) break;
			DetectedMaxDevice++;
			pMoniker->Release();
		}
		AvailableDevice = DetectedMaxDevice;
		pClassEnum -> Release();
		devnum = 0;
		if(bootnrhs == 0) devnum = AvailableDevice;
		else {
			if(bootnrhs == 1) 
			{
				if(mxGetScalar(prhs[0]) < AvailableDevice) devnum = (int)mxGetScalar(prhs[0]);
				else mexPrintf("WARNING: Default video capture device is selected.\n");
			} else mexPrintf("Parameter Error\n");
		}
/////////////////////////////////////
		InitCapFilters(&cinfo);
		ZeroMemory(&wc,sizeof(WNDCLASSEX));
		wc.cbSize = sizeof(WNDCLASSEX);
		wc.hCursor = LoadCursor(NULL,IDC_ARROW);
		wc.hIcon = LoadIcon(NULL,IDI_WINLOGO);
		wc.lpszMenuName = TEXT("vcapg2");
		wc.lpszClassName  = szAppName;
		wc.hbrBackground = (HBRUSH)GetStockObject(WHITE_BRUSH);
		wc.hInstance = cinfo.hInst;
		wc.style = CS_HREDRAW | CS_VREDRAW;

		//--(fe)--type (WNDPROC) added to specify  WndProc

#if defined(WIN64) || defined(_WIN64)
		wc.lpfnWndProc = (WNDPROC)WndProc;
#else
		wc.lpfnWndProc = WndProc;
#endif

		wc.cbWndExtra = 10;
		wc.cbClsExtra = 0;
		if (!bClassRegistered) 
		{
			if (!RegisterClassEx(&wc)) 
			{
				MessageBox(NULL,"Can't register video capture window",NULL,MB_OK | MB_ICONEXCLAMATION | MB_TOPMOST);
				return;
			} else bClassRegistered = TRUE;
		}
		if (!cinfo.hWnd[0]) 
		{
			DWORD tid;
			for(i = 0;i < AvailableDevice;i++) cinfo.hWnd[i] = NULL;
			hThrd = CreateThread(NULL,0,(LPTHREAD_START_ROUTINE)thread_Proc,(void *)&cinfo,0,&tid);
			for(i = 0;i < AvailableDevice;i++) while(!(cinfo.hWnd[i]));
			for (i = 0;i < AvailableDevice;i++) 
			{
				pGrab[i] -> SetOneShot(FALSE);
				pGrab[i] -> SetBufferSamples(TRUE);
			}
			StartPreview();
		}
		mexAtExit(CleanWindow);
		initialized = 1;
		plhs[0] = mxCreateDoubleMatrix(1,1,mxREAL);
		double* tmp = (double *)mxGetPr(plhs[0]);
		tmp[0] = AvailableDevice;
		return;
	}
	int nnlhs = nlhs;
	if(nlhs == 0) nnlhs = 1;
	for(i =0;i < min(AvailableDevice,nnlhs);i++) 
	{
		hr = pGrab[i] -> GetCurrentBuffer(&buf1size[i],(long *)buf1[i]);
		InvalidateRect(cinfo.hWnd[i],NULL,FALSE);
		dims[0] = cinfo.bih[i].biHeight;
		dims[1] = cinfo.bih[i].biWidth;
		dims[2] = 3;
		plhs[i] = mxCreateNumericArray(3,dims,mxUINT8_CLASS,mxREAL);
		bmpmap = (unsigned char *)mxGetPr(plhs[i]);
		imageinfo = (unsigned char*)buf1[i];
		UnCompress(cinfo.bih[i].biWidth,cinfo.bih[i].biHeight,cinfo.bih[i].biBitCount,cinfo.bih[i].biClrUsed,0);
	}
}
