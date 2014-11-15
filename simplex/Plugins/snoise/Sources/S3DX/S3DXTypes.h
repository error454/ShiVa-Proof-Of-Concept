//-----------------------------------------------------------------------------
#ifndef __S3DXTypes_h__
#define __S3DXTypes_h__
//-----------------------------------------------------------------------------
#include "S3DXPlatform.h"
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
namespace S3DX
//-----------------------------------------------------------------------------
{
    //-------------------------------------------------------------------------
    typedef signed   char       int8    ;
    typedef signed   short      int16   ;
    typedef signed   int        int32   ;
    typedef unsigned char       uint8   ;
    typedef unsigned short      uint16  ;
    typedef unsigned int        uint32  ;
    typedef          float      float32 ;
    //-------------------------------------------------------------------------
#if S3DX_ARCH_LP64
    typedef signed   long       int64   ;
    typedef unsigned long       uint64  ;
#elif (defined _WIN32)
    typedef signed   __int64    int64   ;
    typedef unsigned __int64    uint64  ;
#else
    typedef signed   long long  int64   ;
    typedef unsigned long long  uint64  ;
#endif
    //-------------------------------------------------------------------------
#if (defined _INTPTR_T) || (defined _INTPTR_T_DEFINED)
    typedef intptr_t            intptr  ;
#elif S3DX_ARCH_LP64
    typedef int64               intptr  ;
#else
    typedef int32               intptr  ;
#endif
    //-------------------------------------------------------------------------
#if (defined _UINTPTR_T) || (defined _UINTPTR_T_DEFINED)
    typedef uintptr_t           uintptr ;
#elif S3DX_ARCH_LP64
    typedef uint64              uintptr ;
#else
    typedef uint32              uintptr ;
#endif
    //-------------------------------------------------------------------------
}
//-----------------------------------------------------------------------------


//-----------------------------------------------------------------------------
#endif
//-----------------------------------------------------------------------------
