//-----------------------------------------------------------------------------
#ifndef __S3DXAIFunction_h__
#define __S3DXAIFunction_h__
//-----------------------------------------------------------------------------
#include "S3DXAIVariable.h"
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
namespace S3DX
//-----------------------------------------------------------------------------
{
    typedef int ( * AICallback ) ( int _iInCount, const AIVariable *, AIVariable * ) ; 

    //-------------------------------------------------------------------------

    struct AIFunction
    {
        const char *pName           ;   // Name of the function
        AICallback  pCallback       ;   // Callback
        const char *pReturns        ;   // Description string of return values
        const char *pArguments      ;   // Description string of arguments
        const char *pDescription    ;   // Description of the function
        uint32      iReserved       ;   // Reserved, put 0
    } ;
}
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
#endif
//-----------------------------------------------------------------------------
