//-----------------------------------------------------------------------------
// Include file for standard system include files, or project specific include 
// files that are used frequently, but are changed infrequently
//
//-----------------------------------------------------------------------------
#pragma once
//-----------------------------------------------------------------------------
#define WIN32_LEAN_AND_MEAN		// Exclude rarely-used stuff from Windows headers
#include <windows.h>
//-----------------------------------------------------------------------------
#include "../Plugin.h"
//-----------------------------------------------------------------------------

#ifdef _DEBUG

#   define _QUOTE(x) # x
#   define QUOTE(x) _QUOTE(x)
#   define __FILE__LINE__ __FILE__ "(" QUOTE(__LINE__) ") : "

#   define FIXME( __sMessage ) message( __FILE__LINE__ " FIXME :  " #__sMessage ) 
#   define TODO( __sMessage )  message( __FILE__LINE__ " TODO  :  " #__sMessage ) 

#else

#ifdef FIXME
#   undef FIXME
#endif

#ifdef TODO
#   undef TODO
#endif

#   define FIXME( __sMessage ) 
#   define TODO( __sMessage )  

#endif

//-----------------------------------------------------------------------------

// Add reference additional headers your program requires here

//-----------------------------------------------------------------------------
