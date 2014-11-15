//-----------------------------------------------------------------------------
#ifndef __S3DXAIVariables_h__
#define __S3DXAIVariables_h__
//-----------------------------------------------------------------------------
#include "S3DXAIVariable.h"
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
namespace S3DX
//-----------------------------------------------------------------------------
{
    template < uint8 _iCount > class AIVariables
    {
    public :
        
        //---------------------------------------------------------------------
        //  Constructors
        //---------------------------------------------------------------------
        inline AIVariables ( ) { }
        inline AIVariables ( AIVariable _v0 ) 
        { 
            if ( _iCount > 0 ) aValues[0] = _v0 ;
        }
        inline AIVariables ( AIVariable _v0, AIVariable _v1 )
        { 
            if ( _iCount > 0 ) aValues[0] = _v0 ; else return ;
            if ( _iCount > 1 ) aValues[1] = _v1 ;
        }        
        inline AIVariables ( AIVariable _v0, AIVariable _v1, AIVariable _v2 )
        { 
            if ( _iCount > 0 ) aValues[0] = _v0 ; else return ;
            if ( _iCount > 1 ) aValues[1] = _v1 ; else return ;
            if ( _iCount > 2 ) aValues[2] = _v2 ;
        }        
        inline AIVariables ( AIVariable _v0, AIVariable _v1, AIVariable _v2, AIVariable _v3 )
        { 
            if ( _iCount > 0 ) aValues[0] = _v0 ; else return ;
            if ( _iCount > 1 ) aValues[1] = _v1 ; else return ;
            if ( _iCount > 2 ) aValues[2] = _v2 ; else return ;
            if ( _iCount > 3 ) aValues[3] = _v3 ;
        }        
        inline AIVariables ( AIVariable _v0, AIVariable _v1, AIVariable _v2, AIVariable _v3, AIVariable _v4 )
        { 
            if ( _iCount > 0 ) aValues[0] = _v0 ; else return ;
            if ( _iCount > 1 ) aValues[1] = _v1 ; else return ;
            if ( _iCount > 2 ) aValues[2] = _v2 ; else return ;
            if ( _iCount > 3 ) aValues[3] = _v3 ; else return ;
            if ( _iCount > 4 ) aValues[4] = _v4 ;
        }        
        inline AIVariables ( AIVariable _v0, AIVariable _v1, AIVariable _v2, AIVariable _v3, AIVariable _v4, AIVariable _v5 )
        { 
            if ( _iCount > 0 ) aValues[0] = _v0 ; else return ;
            if ( _iCount > 1 ) aValues[1] = _v1 ; else return ;
            if ( _iCount > 2 ) aValues[2] = _v2 ; else return ;
            if ( _iCount > 3 ) aValues[3] = _v3 ; else return ;
            if ( _iCount > 4 ) aValues[4] = _v4 ; else return ;
            if ( _iCount > 5 ) aValues[5] = _v5 ;
        }        
        inline AIVariables ( AIVariable _v0, AIVariable _v1, AIVariable _v2, AIVariable _v3, AIVariable _v4, AIVariable _v5, AIVariable _v6 )
        { 
            if ( _iCount > 0 ) aValues[0] = _v0 ; else return ;
            if ( _iCount > 1 ) aValues[1] = _v1 ; else return ;
            if ( _iCount > 2 ) aValues[2] = _v2 ; else return ;
            if ( _iCount > 3 ) aValues[3] = _v3 ; else return ;
            if ( _iCount > 4 ) aValues[4] = _v4 ; else return ;
            if ( _iCount > 5 ) aValues[5] = _v5 ; else return ;
            if ( _iCount > 6 ) aValues[6] = _v6 ;
        }        
        inline AIVariables ( AIVariable _v0, AIVariable _v1, AIVariable _v2, AIVariable _v3, AIVariable _v4, AIVariable _v5, AIVariable _v6, AIVariable _v7 )
        { 
            if ( _iCount > 0 ) aValues[0] = _v0 ; else return ;
            if ( _iCount > 1 ) aValues[1] = _v1 ; else return ;
            if ( _iCount > 2 ) aValues[2] = _v2 ; else return ;
            if ( _iCount > 3 ) aValues[3] = _v3 ; else return ;
            if ( _iCount > 4 ) aValues[4] = _v4 ; else return ;
            if ( _iCount > 5 ) aValues[5] = _v5 ; else return ;
            if ( _iCount > 6 ) aValues[6] = _v6 ; else return ;
            if ( _iCount > 7 ) aValues[7] = _v7 ;
        }        
        inline AIVariables ( AIVariable _v0, AIVariable _v1, AIVariable _v2, AIVariable _v3, AIVariable _v4, AIVariable _v5, AIVariable _v6, AIVariable _v7, AIVariable _v8 )
        { 
            if ( _iCount > 0 ) aValues[0] = _v0 ; else return ;
            if ( _iCount > 1 ) aValues[1] = _v1 ; else return ;
            if ( _iCount > 2 ) aValues[2] = _v2 ; else return ;
            if ( _iCount > 3 ) aValues[3] = _v3 ; else return ;
            if ( _iCount > 4 ) aValues[4] = _v4 ; else return ;
            if ( _iCount > 5 ) aValues[5] = _v5 ; else return ;
            if ( _iCount > 6 ) aValues[6] = _v6 ; else return ;
            if ( _iCount > 7 ) aValues[7] = _v7 ; else return ;
            if ( _iCount > 8 ) aValues[8] = _v8 ;
        }        
        inline AIVariables ( AIVariable _v0, AIVariable _v1, AIVariable _v2, AIVariable _v3, AIVariable _v4, AIVariable _v5, AIVariable _v6, AIVariable _v7, AIVariable _v8, AIVariable _v9 )
        { 
            if ( _iCount > 0 ) aValues[0] = _v0 ; else return ;
            if ( _iCount > 1 ) aValues[1] = _v1 ; else return ;
            if ( _iCount > 2 ) aValues[2] = _v2 ; else return ;
            if ( _iCount > 3 ) aValues[3] = _v3 ; else return ;
            if ( _iCount > 4 ) aValues[4] = _v4 ; else return ;
            if ( _iCount > 5 ) aValues[5] = _v5 ; else return ;
            if ( _iCount > 6 ) aValues[6] = _v6 ; else return ;
            if ( _iCount > 7 ) aValues[7] = _v7 ; else return ;
            if ( _iCount > 8 ) aValues[8] = _v8 ; else return ;
            if ( _iCount > 9 ) aValues[9] = _v9 ;
        }        
        inline AIVariables ( AIVariable _v0, AIVariable _v1, AIVariable _v2, AIVariable _v3, AIVariable _v4, AIVariable _v5, AIVariable _v6, AIVariable _v7, AIVariable _v8, AIVariable _v9, AIVariable _v10 )
        { 
            if ( _iCount >  0 ) aValues[ 0] =  _v0 ; else return ;
            if ( _iCount >  1 ) aValues[ 1] =  _v1 ; else return ;
            if ( _iCount >  2 ) aValues[ 2] =  _v2 ; else return ;
            if ( _iCount >  3 ) aValues[ 3] =  _v3 ; else return ;
            if ( _iCount >  4 ) aValues[ 4] =  _v4 ; else return ;
            if ( _iCount >  5 ) aValues[ 5] =  _v5 ; else return ;
            if ( _iCount >  6 ) aValues[ 6] =  _v6 ; else return ;
            if ( _iCount >  7 ) aValues[ 7] =  _v7 ; else return ;
            if ( _iCount >  8 ) aValues[ 8] =  _v8 ; else return ;
            if ( _iCount >  9 ) aValues[ 9] =  _v9 ; else return ;
            if ( _iCount > 10 ) aValues[10] = _v10 ;
        }        
        inline AIVariables ( AIVariable _v0, AIVariable _v1, AIVariable _v2, AIVariable _v3, AIVariable _v4, AIVariable _v5, AIVariable _v6, AIVariable _v7, AIVariable _v8, AIVariable _v9, AIVariable _v10, AIVariable _v11 )
        { 
            if ( _iCount >  0 ) aValues[ 0] =  _v0 ; else return ;
            if ( _iCount >  1 ) aValues[ 1] =  _v1 ; else return ;
            if ( _iCount >  2 ) aValues[ 2] =  _v2 ; else return ;
            if ( _iCount >  3 ) aValues[ 3] =  _v3 ; else return ;
            if ( _iCount >  4 ) aValues[ 4] =  _v4 ; else return ;
            if ( _iCount >  5 ) aValues[ 5] =  _v5 ; else return ;
            if ( _iCount >  6 ) aValues[ 6] =  _v6 ; else return ;
            if ( _iCount >  7 ) aValues[ 7] =  _v7 ; else return ;
            if ( _iCount >  8 ) aValues[ 8] =  _v8 ; else return ;
            if ( _iCount >  9 ) aValues[ 9] =  _v9 ; else return ;
            if ( _iCount > 10 ) aValues[10] = _v10 ; else return ;
            if ( _iCount > 11 ) aValues[11] = _v11 ;
        }        
        inline AIVariables ( AIVariable _v0, AIVariable _v1, AIVariable _v2, AIVariable _v3, AIVariable _v4, AIVariable _v5, AIVariable _v6, AIVariable _v7, AIVariable _v8, AIVariable _v9, AIVariable _v10, AIVariable _v11, AIVariable _v12 )
        { 
            if ( _iCount >  0 ) aValues[ 0] =  _v0 ; else return ;
            if ( _iCount >  1 ) aValues[ 1] =  _v1 ; else return ;
            if ( _iCount >  2 ) aValues[ 2] =  _v2 ; else return ;
            if ( _iCount >  3 ) aValues[ 3] =  _v3 ; else return ;
            if ( _iCount >  4 ) aValues[ 4] =  _v4 ; else return ;
            if ( _iCount >  5 ) aValues[ 5] =  _v5 ; else return ;
            if ( _iCount >  6 ) aValues[ 6] =  _v6 ; else return ;
            if ( _iCount >  7 ) aValues[ 7] =  _v7 ; else return ;
            if ( _iCount >  8 ) aValues[ 8] =  _v8 ; else return ;
            if ( _iCount >  9 ) aValues[ 9] =  _v9 ; else return ;
            if ( _iCount > 10 ) aValues[10] = _v10 ; else return ;
            if ( _iCount > 11 ) aValues[11] = _v11 ; else return ;
            if ( _iCount > 12 ) aValues[12] = _v12 ;
        }        
        inline AIVariables ( AIVariable _v0, AIVariable _v1, AIVariable _v2, AIVariable _v3, AIVariable _v4, AIVariable _v5, AIVariable _v6, AIVariable _v7, AIVariable _v8, AIVariable _v9, AIVariable _v10, AIVariable _v11, AIVariable _v12, AIVariable _v13 )
        { 
            if ( _iCount >  0 ) aValues[ 0] =  _v0 ; else return ;
            if ( _iCount >  1 ) aValues[ 1] =  _v1 ; else return ;
            if ( _iCount >  2 ) aValues[ 2] =  _v2 ; else return ;
            if ( _iCount >  3 ) aValues[ 3] =  _v3 ; else return ;
            if ( _iCount >  4 ) aValues[ 4] =  _v4 ; else return ;
            if ( _iCount >  5 ) aValues[ 5] =  _v5 ; else return ;
            if ( _iCount >  6 ) aValues[ 6] =  _v6 ; else return ;
            if ( _iCount >  7 ) aValues[ 7] =  _v7 ; else return ;
            if ( _iCount >  8 ) aValues[ 8] =  _v8 ; else return ;
            if ( _iCount >  9 ) aValues[ 9] =  _v9 ; else return ;
            if ( _iCount > 10 ) aValues[10] = _v10 ; else return ;
            if ( _iCount > 11 ) aValues[11] = _v11 ; else return ;
            if ( _iCount > 12 ) aValues[12] = _v12 ; else return ;
            if ( _iCount > 13 ) aValues[13] = _v13 ;
        }        
        inline AIVariables ( AIVariable _v0, AIVariable _v1, AIVariable _v2, AIVariable _v3, AIVariable _v4, AIVariable _v5, AIVariable _v6, AIVariable _v7, AIVariable _v8, AIVariable _v9, AIVariable _v10, AIVariable _v11, AIVariable _v12, AIVariable _v13, AIVariable _v14 )
        { 
            if ( _iCount >  0 ) aValues[ 0] =  _v0 ; else return ;
            if ( _iCount >  1 ) aValues[ 1] =  _v1 ; else return ;
            if ( _iCount >  2 ) aValues[ 2] =  _v2 ; else return ;
            if ( _iCount >  3 ) aValues[ 3] =  _v3 ; else return ;
            if ( _iCount >  4 ) aValues[ 4] =  _v4 ; else return ;
            if ( _iCount >  5 ) aValues[ 5] =  _v5 ; else return ;
            if ( _iCount >  6 ) aValues[ 6] =  _v6 ; else return ;
            if ( _iCount >  7 ) aValues[ 7] =  _v7 ; else return ;
            if ( _iCount >  8 ) aValues[ 8] =  _v8 ; else return ;
            if ( _iCount >  9 ) aValues[ 9] =  _v9 ; else return ;
            if ( _iCount > 10 ) aValues[10] = _v10 ; else return ;
            if ( _iCount > 11 ) aValues[11] = _v11 ; else return ;
            if ( _iCount > 12 ) aValues[12] = _v12 ; else return ;
            if ( _iCount > 13 ) aValues[13] = _v13 ; else return ;
            if ( _iCount > 14 ) aValues[14] = _v14 ;
        }        
        inline AIVariables ( AIVariable _v0, AIVariable _v1, AIVariable _v2, AIVariable _v3, AIVariable _v4, AIVariable _v5, AIVariable _v6, AIVariable _v7, AIVariable _v8, AIVariable _v9, AIVariable _v10, AIVariable _v11, AIVariable _v12, AIVariable _v13, AIVariable _v14, AIVariable _v15 )
        { 
            if ( _iCount >  0 ) aValues[ 0] =  _v0 ; else return ;
            if ( _iCount >  1 ) aValues[ 1] =  _v1 ; else return ;
            if ( _iCount >  2 ) aValues[ 2] =  _v2 ; else return ;
            if ( _iCount >  3 ) aValues[ 3] =  _v3 ; else return ;
            if ( _iCount >  4 ) aValues[ 4] =  _v4 ; else return ;
            if ( _iCount >  5 ) aValues[ 5] =  _v5 ; else return ;
            if ( _iCount >  6 ) aValues[ 6] =  _v6 ; else return ;
            if ( _iCount >  7 ) aValues[ 7] =  _v7 ; else return ;
            if ( _iCount >  8 ) aValues[ 8] =  _v8 ; else return ;
            if ( _iCount >  9 ) aValues[ 9] =  _v9 ; else return ;
            if ( _iCount > 10 ) aValues[10] = _v10 ; else return ;
            if ( _iCount > 11 ) aValues[11] = _v11 ; else return ;
            if ( _iCount > 12 ) aValues[12] = _v12 ; else return ;
            if ( _iCount > 13 ) aValues[13] = _v13 ; else return ;
            if ( _iCount > 14 ) aValues[14] = _v14 ; else return ;
            if ( _iCount > 15 ) aValues[15] = _v15 ;
        }        
        inline AIVariables ( AIVariable _v0, AIVariable _v1, AIVariable _v2, AIVariable _v3, AIVariable _v4, AIVariable _v5, AIVariable _v6, AIVariable _v7, AIVariable _v8, AIVariable _v9, AIVariable _v10, AIVariable _v11, AIVariable _v12, AIVariable _v13, AIVariable _v14, AIVariable _v15, AIVariable _v16 )
        { 
            if ( _iCount >  0 ) aValues[ 0] =  _v0 ; else return ;
            if ( _iCount >  1 ) aValues[ 1] =  _v1 ; else return ;
            if ( _iCount >  2 ) aValues[ 2] =  _v2 ; else return ;
            if ( _iCount >  3 ) aValues[ 3] =  _v3 ; else return ;
            if ( _iCount >  4 ) aValues[ 4] =  _v4 ; else return ;
            if ( _iCount >  5 ) aValues[ 5] =  _v5 ; else return ;
            if ( _iCount >  6 ) aValues[ 6] =  _v6 ; else return ;
            if ( _iCount >  7 ) aValues[ 7] =  _v7 ; else return ;
            if ( _iCount >  8 ) aValues[ 8] =  _v8 ; else return ;
            if ( _iCount >  9 ) aValues[ 9] =  _v9 ; else return ;
            if ( _iCount > 10 ) aValues[10] = _v10 ; else return ;
            if ( _iCount > 11 ) aValues[11] = _v11 ; else return ;
            if ( _iCount > 12 ) aValues[12] = _v12 ; else return ;
            if ( _iCount > 13 ) aValues[13] = _v13 ; else return ;
            if ( _iCount > 14 ) aValues[14] = _v14 ; else return ;
            if ( _iCount > 15 ) aValues[15] = _v15 ; else return ;
            if ( _iCount > 16 ) aValues[16] = _v16 ;
        }        
        inline AIVariables ( AIVariable _v0, AIVariable _v1, AIVariable _v2, AIVariable _v3, AIVariable _v4, AIVariable _v5, AIVariable _v6, AIVariable _v7, AIVariable _v8, AIVariable _v9, AIVariable _v10, AIVariable _v11, AIVariable _v12, AIVariable _v13, AIVariable _v14, AIVariable _v15, AIVariable _v16, AIVariable _v17 )
        { 
            if ( _iCount >  0 ) aValues[ 0] =  _v0 ; else return ;
            if ( _iCount >  1 ) aValues[ 1] =  _v1 ; else return ;
            if ( _iCount >  2 ) aValues[ 2] =  _v2 ; else return ;
            if ( _iCount >  3 ) aValues[ 3] =  _v3 ; else return ;
            if ( _iCount >  4 ) aValues[ 4] =  _v4 ; else return ;
            if ( _iCount >  5 ) aValues[ 5] =  _v5 ; else return ;
            if ( _iCount >  6 ) aValues[ 6] =  _v6 ; else return ;
            if ( _iCount >  7 ) aValues[ 7] =  _v7 ; else return ;
            if ( _iCount >  8 ) aValues[ 8] =  _v8 ; else return ;
            if ( _iCount >  9 ) aValues[ 9] =  _v9 ; else return ;
            if ( _iCount > 10 ) aValues[10] = _v10 ; else return ;
            if ( _iCount > 11 ) aValues[11] = _v11 ; else return ;
            if ( _iCount > 12 ) aValues[12] = _v12 ; else return ;
            if ( _iCount > 13 ) aValues[13] = _v13 ; else return ;
            if ( _iCount > 14 ) aValues[14] = _v14 ; else return ;
            if ( _iCount > 15 ) aValues[15] = _v15 ; else return ;
            if ( _iCount > 16 ) aValues[16] = _v16 ; else return ;
            if ( _iCount > 17 ) aValues[17] = _v17 ;
        }        
        inline AIVariables ( AIVariable _v0, AIVariable _v1, AIVariable _v2, AIVariable _v3, AIVariable _v4, AIVariable _v5, AIVariable _v6, AIVariable _v7, AIVariable _v8, AIVariable _v9, AIVariable _v10, AIVariable _v11, AIVariable _v12, AIVariable _v13, AIVariable _v14, AIVariable _v15, AIVariable _v16, AIVariable _v17, AIVariable _v18 )
        { 
            if ( _iCount >  0 ) aValues[ 0] =  _v0 ; else return ;
            if ( _iCount >  1 ) aValues[ 1] =  _v1 ; else return ;
            if ( _iCount >  2 ) aValues[ 2] =  _v2 ; else return ;
            if ( _iCount >  3 ) aValues[ 3] =  _v3 ; else return ;
            if ( _iCount >  4 ) aValues[ 4] =  _v4 ; else return ;
            if ( _iCount >  5 ) aValues[ 5] =  _v5 ; else return ;
            if ( _iCount >  6 ) aValues[ 6] =  _v6 ; else return ;
            if ( _iCount >  7 ) aValues[ 7] =  _v7 ; else return ;
            if ( _iCount >  8 ) aValues[ 8] =  _v8 ; else return ;
            if ( _iCount >  9 ) aValues[ 9] =  _v9 ; else return ;
            if ( _iCount > 10 ) aValues[10] = _v10 ; else return ;
            if ( _iCount > 11 ) aValues[11] = _v11 ; else return ;
            if ( _iCount > 12 ) aValues[12] = _v12 ; else return ;
            if ( _iCount > 13 ) aValues[13] = _v13 ; else return ;
            if ( _iCount > 14 ) aValues[14] = _v14 ; else return ;
            if ( _iCount > 15 ) aValues[15] = _v15 ; else return ;
            if ( _iCount > 16 ) aValues[16] = _v16 ; else return ;
            if ( _iCount > 17 ) aValues[17] = _v17 ; else return ;
            if ( _iCount > 18 ) aValues[18] = _v18 ;
        }        
        inline AIVariables ( AIVariable _v0, AIVariable _v1, AIVariable _v2, AIVariable _v3, AIVariable _v4, AIVariable _v5, AIVariable _v6, AIVariable _v7, AIVariable _v8, AIVariable _v9, AIVariable _v10, AIVariable _v11, AIVariable _v12, AIVariable _v13, AIVariable _v14, AIVariable _v15, AIVariable _v16, AIVariable _v17, AIVariable _v18, AIVariable _v19 )
        { 
            if ( _iCount >  0 ) aValues[ 0] =  _v0 ; else return ;
            if ( _iCount >  1 ) aValues[ 1] =  _v1 ; else return ;
            if ( _iCount >  2 ) aValues[ 2] =  _v2 ; else return ;
            if ( _iCount >  3 ) aValues[ 3] =  _v3 ; else return ;
            if ( _iCount >  4 ) aValues[ 4] =  _v4 ; else return ;
            if ( _iCount >  5 ) aValues[ 5] =  _v5 ; else return ;
            if ( _iCount >  6 ) aValues[ 6] =  _v6 ; else return ;
            if ( _iCount >  7 ) aValues[ 7] =  _v7 ; else return ;
            if ( _iCount >  8 ) aValues[ 8] =  _v8 ; else return ;
            if ( _iCount >  9 ) aValues[ 9] =  _v9 ; else return ;
            if ( _iCount > 10 ) aValues[10] = _v10 ; else return ;
            if ( _iCount > 11 ) aValues[11] = _v11 ; else return ;
            if ( _iCount > 12 ) aValues[12] = _v12 ; else return ;
            if ( _iCount > 13 ) aValues[13] = _v13 ; else return ;
            if ( _iCount > 14 ) aValues[14] = _v14 ; else return ;
            if ( _iCount > 15 ) aValues[15] = _v15 ; else return ;
            if ( _iCount > 16 ) aValues[16] = _v16 ; else return ;
            if ( _iCount > 17 ) aValues[17] = _v17 ; else return ;
            if ( _iCount > 18 ) aValues[18] = _v18 ; else return ;
            if ( _iCount > 19 ) aValues[19] = _v19 ;
        }        
        inline AIVariables ( AIVariable _v0, AIVariable _v1, AIVariable _v2, AIVariable _v3, AIVariable _v4, AIVariable _v5, AIVariable _v6, AIVariable _v7, AIVariable _v8, AIVariable _v9, AIVariable _v10, AIVariable _v11, AIVariable _v12, AIVariable _v13, AIVariable _v14, AIVariable _v15, AIVariable _v16, AIVariable _v17, AIVariable _v18, AIVariable _v19, AIVariable _v20 )
        { 
            if ( _iCount >  0 ) aValues[ 0] =  _v0 ; else return ;
            if ( _iCount >  1 ) aValues[ 1] =  _v1 ; else return ;
            if ( _iCount >  2 ) aValues[ 2] =  _v2 ; else return ;
            if ( _iCount >  3 ) aValues[ 3] =  _v3 ; else return ;
            if ( _iCount >  4 ) aValues[ 4] =  _v4 ; else return ;
            if ( _iCount >  5 ) aValues[ 5] =  _v5 ; else return ;
            if ( _iCount >  6 ) aValues[ 6] =  _v6 ; else return ;
            if ( _iCount >  7 ) aValues[ 7] =  _v7 ; else return ;
            if ( _iCount >  8 ) aValues[ 8] =  _v8 ; else return ;
            if ( _iCount >  9 ) aValues[ 9] =  _v9 ; else return ;
            if ( _iCount > 10 ) aValues[10] = _v10 ; else return ;
            if ( _iCount > 11 ) aValues[11] = _v11 ; else return ;
            if ( _iCount > 12 ) aValues[12] = _v12 ; else return ;
            if ( _iCount > 13 ) aValues[13] = _v13 ; else return ;
            if ( _iCount > 14 ) aValues[14] = _v14 ; else return ;
            if ( _iCount > 15 ) aValues[15] = _v15 ; else return ;
            if ( _iCount > 16 ) aValues[16] = _v16 ; else return ;
            if ( _iCount > 17 ) aValues[17] = _v17 ; else return ;
            if ( _iCount > 18 ) aValues[18] = _v18 ; else return ;
            if ( _iCount > 19 ) aValues[19] = _v19 ; else return ;
            if ( _iCount > 20 ) aValues[20] = _v20 ;
        }        
        inline AIVariables ( AIVariable _v0, AIVariable _v1, AIVariable _v2, AIVariable _v3, AIVariable _v4, AIVariable _v5, AIVariable _v6, AIVariable _v7, AIVariable _v8, AIVariable _v9, AIVariable _v10, AIVariable _v11, AIVariable _v12, AIVariable _v13, AIVariable _v14, AIVariable _v15, AIVariable _v16, AIVariable _v17, AIVariable _v18, AIVariable _v19, AIVariable _v20, AIVariable _v21 )
        { 
            if ( _iCount >  0 ) aValues[ 0] =  _v0 ; else return ;
            if ( _iCount >  1 ) aValues[ 1] =  _v1 ; else return ;
            if ( _iCount >  2 ) aValues[ 2] =  _v2 ; else return ;
            if ( _iCount >  3 ) aValues[ 3] =  _v3 ; else return ;
            if ( _iCount >  4 ) aValues[ 4] =  _v4 ; else return ;
            if ( _iCount >  5 ) aValues[ 5] =  _v5 ; else return ;
            if ( _iCount >  6 ) aValues[ 6] =  _v6 ; else return ;
            if ( _iCount >  7 ) aValues[ 7] =  _v7 ; else return ;
            if ( _iCount >  8 ) aValues[ 8] =  _v8 ; else return ;
            if ( _iCount >  9 ) aValues[ 9] =  _v9 ; else return ;
            if ( _iCount > 10 ) aValues[10] = _v10 ; else return ;
            if ( _iCount > 11 ) aValues[11] = _v11 ; else return ;
            if ( _iCount > 12 ) aValues[12] = _v12 ; else return ;
            if ( _iCount > 13 ) aValues[13] = _v13 ; else return ;
            if ( _iCount > 14 ) aValues[14] = _v14 ; else return ;
            if ( _iCount > 15 ) aValues[15] = _v15 ; else return ;
            if ( _iCount > 16 ) aValues[16] = _v16 ; else return ;
            if ( _iCount > 17 ) aValues[17] = _v17 ; else return ;
            if ( _iCount > 18 ) aValues[18] = _v18 ; else return ;
            if ( _iCount > 19 ) aValues[19] = _v19 ; else return ;
            if ( _iCount > 20 ) aValues[20] = _v20 ; else return ;
            if ( _iCount > 21 ) aValues[21] = _v21 ;
        }        
        inline AIVariables ( AIVariable _v0, AIVariable _v1, AIVariable _v2, AIVariable _v3, AIVariable _v4, AIVariable _v5, AIVariable _v6, AIVariable _v7, AIVariable _v8, AIVariable _v9, AIVariable _v10, AIVariable _v11, AIVariable _v12, AIVariable _v13, AIVariable _v14, AIVariable _v15, AIVariable _v16, AIVariable _v17, AIVariable _v18, AIVariable _v19, AIVariable _v20, AIVariable _v21, AIVariable _v22 )
        { 
            if ( _iCount >  0 ) aValues[ 0] =  _v0 ; else return ;
            if ( _iCount >  1 ) aValues[ 1] =  _v1 ; else return ;
            if ( _iCount >  2 ) aValues[ 2] =  _v2 ; else return ;
            if ( _iCount >  3 ) aValues[ 3] =  _v3 ; else return ;
            if ( _iCount >  4 ) aValues[ 4] =  _v4 ; else return ;
            if ( _iCount >  5 ) aValues[ 5] =  _v5 ; else return ;
            if ( _iCount >  6 ) aValues[ 6] =  _v6 ; else return ;
            if ( _iCount >  7 ) aValues[ 7] =  _v7 ; else return ;
            if ( _iCount >  8 ) aValues[ 8] =  _v8 ; else return ;
            if ( _iCount >  9 ) aValues[ 9] =  _v9 ; else return ;
            if ( _iCount > 10 ) aValues[10] = _v10 ; else return ;
            if ( _iCount > 11 ) aValues[11] = _v11 ; else return ;
            if ( _iCount > 12 ) aValues[12] = _v12 ; else return ;
            if ( _iCount > 13 ) aValues[13] = _v13 ; else return ;
            if ( _iCount > 14 ) aValues[14] = _v14 ; else return ;
            if ( _iCount > 15 ) aValues[15] = _v15 ; else return ;
            if ( _iCount > 16 ) aValues[16] = _v16 ; else return ;
            if ( _iCount > 17 ) aValues[17] = _v17 ; else return ;
            if ( _iCount > 18 ) aValues[18] = _v18 ; else return ;
            if ( _iCount > 19 ) aValues[19] = _v19 ; else return ;
            if ( _iCount > 20 ) aValues[20] = _v20 ; else return ;
            if ( _iCount > 21 ) aValues[21] = _v21 ; else return ;
            if ( _iCount > 22 ) aValues[22] = _v22 ;
        }        
        inline AIVariables ( AIVariable _v0, AIVariable _v1, AIVariable _v2, AIVariable _v3, AIVariable _v4, AIVariable _v5, AIVariable _v6, AIVariable _v7, AIVariable _v8, AIVariable _v9, AIVariable _v10, AIVariable _v11, AIVariable _v12, AIVariable _v13, AIVariable _v14, AIVariable _v15, AIVariable _v16, AIVariable _v17, AIVariable _v18, AIVariable _v19, AIVariable _v20, AIVariable _v21, AIVariable _v22, AIVariable _v23 )
        { 
            if ( _iCount >  0 ) aValues[ 0] =  _v0 ; else return ;
            if ( _iCount >  1 ) aValues[ 1] =  _v1 ; else return ;
            if ( _iCount >  2 ) aValues[ 2] =  _v2 ; else return ;
            if ( _iCount >  3 ) aValues[ 3] =  _v3 ; else return ;
            if ( _iCount >  4 ) aValues[ 4] =  _v4 ; else return ;
            if ( _iCount >  5 ) aValues[ 5] =  _v5 ; else return ;
            if ( _iCount >  6 ) aValues[ 6] =  _v6 ; else return ;
            if ( _iCount >  7 ) aValues[ 7] =  _v7 ; else return ;
            if ( _iCount >  8 ) aValues[ 8] =  _v8 ; else return ;
            if ( _iCount >  9 ) aValues[ 9] =  _v9 ; else return ;
            if ( _iCount > 10 ) aValues[10] = _v10 ; else return ;
            if ( _iCount > 11 ) aValues[11] = _v11 ; else return ;
            if ( _iCount > 12 ) aValues[12] = _v12 ; else return ;
            if ( _iCount > 13 ) aValues[13] = _v13 ; else return ;
            if ( _iCount > 14 ) aValues[14] = _v14 ; else return ;
            if ( _iCount > 15 ) aValues[15] = _v15 ; else return ;
            if ( _iCount > 16 ) aValues[16] = _v16 ; else return ;
            if ( _iCount > 17 ) aValues[17] = _v17 ; else return ;
            if ( _iCount > 18 ) aValues[18] = _v18 ; else return ;
            if ( _iCount > 19 ) aValues[19] = _v19 ; else return ;
            if ( _iCount > 20 ) aValues[20] = _v20 ; else return ;
            if ( _iCount > 21 ) aValues[21] = _v21 ; else return ;
            if ( _iCount > 22 ) aValues[22] = _v22 ; else return ;
            if ( _iCount > 23 ) aValues[23] = _v23 ;
        }        
        inline AIVariables ( AIVariable _v0, AIVariable _v1, AIVariable _v2, AIVariable _v3, AIVariable _v4, AIVariable _v5, AIVariable _v6, AIVariable _v7, AIVariable _v8, AIVariable _v9, AIVariable _v10, AIVariable _v11, AIVariable _v12, AIVariable _v13, AIVariable _v14, AIVariable _v15, AIVariable _v16, AIVariable _v17, AIVariable _v18, AIVariable _v19, AIVariable _v20, AIVariable _v21, AIVariable _v22, AIVariable _v23, AIVariable _v24 )
        { 
            if ( _iCount >  0 ) aValues[ 0] =  _v0 ; else return ;
            if ( _iCount >  1 ) aValues[ 1] =  _v1 ; else return ;
            if ( _iCount >  2 ) aValues[ 2] =  _v2 ; else return ;
            if ( _iCount >  3 ) aValues[ 3] =  _v3 ; else return ;
            if ( _iCount >  4 ) aValues[ 4] =  _v4 ; else return ;
            if ( _iCount >  5 ) aValues[ 5] =  _v5 ; else return ;
            if ( _iCount >  6 ) aValues[ 6] =  _v6 ; else return ;
            if ( _iCount >  7 ) aValues[ 7] =  _v7 ; else return ;
            if ( _iCount >  8 ) aValues[ 8] =  _v8 ; else return ;
            if ( _iCount >  9 ) aValues[ 9] =  _v9 ; else return ;
            if ( _iCount > 10 ) aValues[10] = _v10 ; else return ;
            if ( _iCount > 11 ) aValues[11] = _v11 ; else return ;
            if ( _iCount > 12 ) aValues[12] = _v12 ; else return ;
            if ( _iCount > 13 ) aValues[13] = _v13 ; else return ;
            if ( _iCount > 14 ) aValues[14] = _v14 ; else return ;
            if ( _iCount > 15 ) aValues[15] = _v15 ; else return ;
            if ( _iCount > 16 ) aValues[16] = _v16 ; else return ;
            if ( _iCount > 17 ) aValues[17] = _v17 ; else return ;
            if ( _iCount > 18 ) aValues[18] = _v18 ; else return ;
            if ( _iCount > 19 ) aValues[19] = _v19 ; else return ;
            if ( _iCount > 20 ) aValues[20] = _v20 ; else return ;
            if ( _iCount > 21 ) aValues[21] = _v21 ; else return ;
            if ( _iCount > 22 ) aValues[22] = _v22 ; else return ;
            if ( _iCount > 23 ) aValues[23] = _v23 ; else return ;
            if ( _iCount > 24 ) aValues[24] = _v24 ;
        }        
        inline AIVariables ( AIVariable _v0, AIVariable _v1, AIVariable _v2, AIVariable _v3, AIVariable _v4, AIVariable _v5, AIVariable _v6, AIVariable _v7, AIVariable _v8, AIVariable _v9, AIVariable _v10, AIVariable _v11, AIVariable _v12, AIVariable _v13, AIVariable _v14, AIVariable _v15, AIVariable _v16, AIVariable _v17, AIVariable _v18, AIVariable _v19, AIVariable _v20, AIVariable _v21, AIVariable _v22, AIVariable _v23, AIVariable _v24, AIVariable _v25 )
        { 
            if ( _iCount >  0 ) aValues[ 0] =  _v0 ; else return ;
            if ( _iCount >  1 ) aValues[ 1] =  _v1 ; else return ;
            if ( _iCount >  2 ) aValues[ 2] =  _v2 ; else return ;
            if ( _iCount >  3 ) aValues[ 3] =  _v3 ; else return ;
            if ( _iCount >  4 ) aValues[ 4] =  _v4 ; else return ;
            if ( _iCount >  5 ) aValues[ 5] =  _v5 ; else return ;
            if ( _iCount >  6 ) aValues[ 6] =  _v6 ; else return ;
            if ( _iCount >  7 ) aValues[ 7] =  _v7 ; else return ;
            if ( _iCount >  8 ) aValues[ 8] =  _v8 ; else return ;
            if ( _iCount >  9 ) aValues[ 9] =  _v9 ; else return ;
            if ( _iCount > 10 ) aValues[10] = _v10 ; else return ;
            if ( _iCount > 11 ) aValues[11] = _v11 ; else return ;
            if ( _iCount > 12 ) aValues[12] = _v12 ; else return ;
            if ( _iCount > 13 ) aValues[13] = _v13 ; else return ;
            if ( _iCount > 14 ) aValues[14] = _v14 ; else return ;
            if ( _iCount > 15 ) aValues[15] = _v15 ; else return ;
            if ( _iCount > 16 ) aValues[16] = _v16 ; else return ;
            if ( _iCount > 17 ) aValues[17] = _v17 ; else return ;
            if ( _iCount > 18 ) aValues[18] = _v18 ; else return ;
            if ( _iCount > 19 ) aValues[19] = _v19 ; else return ;
            if ( _iCount > 20 ) aValues[20] = _v20 ; else return ;
            if ( _iCount > 21 ) aValues[21] = _v21 ; else return ;
            if ( _iCount > 22 ) aValues[22] = _v22 ; else return ;
            if ( _iCount > 23 ) aValues[23] = _v23 ; else return ;
            if ( _iCount > 24 ) aValues[24] = _v24 ; else return ;
            if ( _iCount > 25 ) aValues[25] = _v25 ;
        }        
        inline AIVariables ( AIVariable _v0, AIVariable _v1, AIVariable _v2, AIVariable _v3, AIVariable _v4, AIVariable _v5, AIVariable _v6, AIVariable _v7, AIVariable _v8, AIVariable _v9, AIVariable _v10, AIVariable _v11, AIVariable _v12, AIVariable _v13, AIVariable _v14, AIVariable _v15, AIVariable _v16, AIVariable _v17, AIVariable _v18, AIVariable _v19, AIVariable _v20, AIVariable _v21, AIVariable _v22, AIVariable _v23, AIVariable _v24, AIVariable _v25, AIVariable _v26 )
        { 
            if ( _iCount >  0 ) aValues[ 0] =  _v0 ; else return ;
            if ( _iCount >  1 ) aValues[ 1] =  _v1 ; else return ;
            if ( _iCount >  2 ) aValues[ 2] =  _v2 ; else return ;
            if ( _iCount >  3 ) aValues[ 3] =  _v3 ; else return ;
            if ( _iCount >  4 ) aValues[ 4] =  _v4 ; else return ;
            if ( _iCount >  5 ) aValues[ 5] =  _v5 ; else return ;
            if ( _iCount >  6 ) aValues[ 6] =  _v6 ; else return ;
            if ( _iCount >  7 ) aValues[ 7] =  _v7 ; else return ;
            if ( _iCount >  8 ) aValues[ 8] =  _v8 ; else return ;
            if ( _iCount >  9 ) aValues[ 9] =  _v9 ; else return ;
            if ( _iCount > 10 ) aValues[10] = _v10 ; else return ;
            if ( _iCount > 11 ) aValues[11] = _v11 ; else return ;
            if ( _iCount > 12 ) aValues[12] = _v12 ; else return ;
            if ( _iCount > 13 ) aValues[13] = _v13 ; else return ;
            if ( _iCount > 14 ) aValues[14] = _v14 ; else return ;
            if ( _iCount > 15 ) aValues[15] = _v15 ; else return ;
            if ( _iCount > 16 ) aValues[16] = _v16 ; else return ;
            if ( _iCount > 17 ) aValues[17] = _v17 ; else return ;
            if ( _iCount > 18 ) aValues[18] = _v18 ; else return ;
            if ( _iCount > 19 ) aValues[19] = _v19 ; else return ;
            if ( _iCount > 20 ) aValues[20] = _v20 ; else return ;
            if ( _iCount > 21 ) aValues[21] = _v21 ; else return ;
            if ( _iCount > 22 ) aValues[22] = _v22 ; else return ;
            if ( _iCount > 23 ) aValues[23] = _v23 ; else return ;
            if ( _iCount > 24 ) aValues[24] = _v24 ; else return ;
            if ( _iCount > 25 ) aValues[25] = _v25 ; else return ;
            if ( _iCount > 26 ) aValues[26] = _v26 ;
        }        
        inline AIVariables ( AIVariable _v0, AIVariable _v1, AIVariable _v2, AIVariable _v3, AIVariable _v4, AIVariable _v5, AIVariable _v6, AIVariable _v7, AIVariable _v8, AIVariable _v9, AIVariable _v10, AIVariable _v11, AIVariable _v12, AIVariable _v13, AIVariable _v14, AIVariable _v15, AIVariable _v16, AIVariable _v17, AIVariable _v18, AIVariable _v19, AIVariable _v20, AIVariable _v21, AIVariable _v22, AIVariable _v23, AIVariable _v24, AIVariable _v25, AIVariable _v26, AIVariable _v27 )
        { 
            if ( _iCount >  0 ) aValues[ 0] =  _v0 ; else return ;
            if ( _iCount >  1 ) aValues[ 1] =  _v1 ; else return ;
            if ( _iCount >  2 ) aValues[ 2] =  _v2 ; else return ;
            if ( _iCount >  3 ) aValues[ 3] =  _v3 ; else return ;
            if ( _iCount >  4 ) aValues[ 4] =  _v4 ; else return ;
            if ( _iCount >  5 ) aValues[ 5] =  _v5 ; else return ;
            if ( _iCount >  6 ) aValues[ 6] =  _v6 ; else return ;
            if ( _iCount >  7 ) aValues[ 7] =  _v7 ; else return ;
            if ( _iCount >  8 ) aValues[ 8] =  _v8 ; else return ;
            if ( _iCount >  9 ) aValues[ 9] =  _v9 ; else return ;
            if ( _iCount > 10 ) aValues[10] = _v10 ; else return ;
            if ( _iCount > 11 ) aValues[11] = _v11 ; else return ;
            if ( _iCount > 12 ) aValues[12] = _v12 ; else return ;
            if ( _iCount > 13 ) aValues[13] = _v13 ; else return ;
            if ( _iCount > 14 ) aValues[14] = _v14 ; else return ;
            if ( _iCount > 15 ) aValues[15] = _v15 ; else return ;
            if ( _iCount > 16 ) aValues[16] = _v16 ; else return ;
            if ( _iCount > 17 ) aValues[17] = _v17 ; else return ;
            if ( _iCount > 18 ) aValues[18] = _v18 ; else return ;
            if ( _iCount > 19 ) aValues[19] = _v19 ; else return ;
            if ( _iCount > 20 ) aValues[20] = _v20 ; else return ;
            if ( _iCount > 21 ) aValues[21] = _v21 ; else return ;
            if ( _iCount > 22 ) aValues[22] = _v22 ; else return ;
            if ( _iCount > 23 ) aValues[23] = _v23 ; else return ;
            if ( _iCount > 24 ) aValues[24] = _v24 ; else return ;
            if ( _iCount > 25 ) aValues[25] = _v25 ; else return ;
            if ( _iCount > 26 ) aValues[26] = _v26 ; else return ;
            if ( _iCount > 27 ) aValues[27] = _v27 ;
        }        
        inline AIVariables ( AIVariable _v0, AIVariable _v1, AIVariable _v2, AIVariable _v3, AIVariable _v4, AIVariable _v5, AIVariable _v6, AIVariable _v7, AIVariable _v8, AIVariable _v9, AIVariable _v10, AIVariable _v11, AIVariable _v12, AIVariable _v13, AIVariable _v14, AIVariable _v15, AIVariable _v16, AIVariable _v17, AIVariable _v18, AIVariable _v19, AIVariable _v20, AIVariable _v21, AIVariable _v22, AIVariable _v23, AIVariable _v24, AIVariable _v25, AIVariable _v26, AIVariable _v27, AIVariable _v28 )
        { 
            if ( _iCount >  0 ) aValues[ 0] =  _v0 ; else return ;
            if ( _iCount >  1 ) aValues[ 1] =  _v1 ; else return ;
            if ( _iCount >  2 ) aValues[ 2] =  _v2 ; else return ;
            if ( _iCount >  3 ) aValues[ 3] =  _v3 ; else return ;
            if ( _iCount >  4 ) aValues[ 4] =  _v4 ; else return ;
            if ( _iCount >  5 ) aValues[ 5] =  _v5 ; else return ;
            if ( _iCount >  6 ) aValues[ 6] =  _v6 ; else return ;
            if ( _iCount >  7 ) aValues[ 7] =  _v7 ; else return ;
            if ( _iCount >  8 ) aValues[ 8] =  _v8 ; else return ;
            if ( _iCount >  9 ) aValues[ 9] =  _v9 ; else return ;
            if ( _iCount > 10 ) aValues[10] = _v10 ; else return ;
            if ( _iCount > 11 ) aValues[11] = _v11 ; else return ;
            if ( _iCount > 12 ) aValues[12] = _v12 ; else return ;
            if ( _iCount > 13 ) aValues[13] = _v13 ; else return ;
            if ( _iCount > 14 ) aValues[14] = _v14 ; else return ;
            if ( _iCount > 15 ) aValues[15] = _v15 ; else return ;
            if ( _iCount > 16 ) aValues[16] = _v16 ; else return ;
            if ( _iCount > 17 ) aValues[17] = _v17 ; else return ;
            if ( _iCount > 18 ) aValues[18] = _v18 ; else return ;
            if ( _iCount > 19 ) aValues[19] = _v19 ; else return ;
            if ( _iCount > 20 ) aValues[20] = _v20 ; else return ;
            if ( _iCount > 21 ) aValues[21] = _v21 ; else return ;
            if ( _iCount > 22 ) aValues[22] = _v22 ; else return ;
            if ( _iCount > 23 ) aValues[23] = _v23 ; else return ;
            if ( _iCount > 24 ) aValues[24] = _v24 ; else return ;
            if ( _iCount > 25 ) aValues[25] = _v25 ; else return ;
            if ( _iCount > 26 ) aValues[26] = _v26 ; else return ;
            if ( _iCount > 27 ) aValues[27] = _v27 ; else return ;
            if ( _iCount > 28 ) aValues[28] = _v28 ;
        }        
        inline AIVariables ( AIVariable _v0, AIVariable _v1, AIVariable _v2, AIVariable _v3, AIVariable _v4, AIVariable _v5, AIVariable _v6, AIVariable _v7, AIVariable _v8, AIVariable _v9, AIVariable _v10, AIVariable _v11, AIVariable _v12, AIVariable _v13, AIVariable _v14, AIVariable _v15, AIVariable _v16, AIVariable _v17, AIVariable _v18, AIVariable _v19, AIVariable _v20, AIVariable _v21, AIVariable _v22, AIVariable _v23, AIVariable _v24, AIVariable _v25, AIVariable _v26, AIVariable _v27, AIVariable _v28, AIVariable _v29 )
        { 
            if ( _iCount >  0 ) aValues[ 0] =  _v0 ; else return ;
            if ( _iCount >  1 ) aValues[ 1] =  _v1 ; else return ;
            if ( _iCount >  2 ) aValues[ 2] =  _v2 ; else return ;
            if ( _iCount >  3 ) aValues[ 3] =  _v3 ; else return ;
            if ( _iCount >  4 ) aValues[ 4] =  _v4 ; else return ;
            if ( _iCount >  5 ) aValues[ 5] =  _v5 ; else return ;
            if ( _iCount >  6 ) aValues[ 6] =  _v6 ; else return ;
            if ( _iCount >  7 ) aValues[ 7] =  _v7 ; else return ;
            if ( _iCount >  8 ) aValues[ 8] =  _v8 ; else return ;
            if ( _iCount >  9 ) aValues[ 9] =  _v9 ; else return ;
            if ( _iCount > 10 ) aValues[10] = _v10 ; else return ;
            if ( _iCount > 11 ) aValues[11] = _v11 ; else return ;
            if ( _iCount > 12 ) aValues[12] = _v12 ; else return ;
            if ( _iCount > 13 ) aValues[13] = _v13 ; else return ;
            if ( _iCount > 14 ) aValues[14] = _v14 ; else return ;
            if ( _iCount > 15 ) aValues[15] = _v15 ; else return ;
            if ( _iCount > 16 ) aValues[16] = _v16 ; else return ;
            if ( _iCount > 17 ) aValues[17] = _v17 ; else return ;
            if ( _iCount > 18 ) aValues[18] = _v18 ; else return ;
            if ( _iCount > 19 ) aValues[19] = _v19 ; else return ;
            if ( _iCount > 20 ) aValues[20] = _v20 ; else return ;
            if ( _iCount > 21 ) aValues[21] = _v21 ; else return ;
            if ( _iCount > 22 ) aValues[22] = _v22 ; else return ;
            if ( _iCount > 23 ) aValues[23] = _v23 ; else return ;
            if ( _iCount > 24 ) aValues[24] = _v24 ; else return ;
            if ( _iCount > 25 ) aValues[25] = _v25 ; else return ;
            if ( _iCount > 26 ) aValues[26] = _v26 ; else return ;
            if ( _iCount > 27 ) aValues[27] = _v27 ; else return ;
            if ( _iCount > 28 ) aValues[28] = _v28 ; else return ;
            if ( _iCount > 29 ) aValues[29] = _v29 ;
        }        
        inline AIVariables ( AIVariable _v0, AIVariable _v1, AIVariable _v2, AIVariable _v3, AIVariable _v4, AIVariable _v5, AIVariable _v6, AIVariable _v7, AIVariable _v8, AIVariable _v9, AIVariable _v10, AIVariable _v11, AIVariable _v12, AIVariable _v13, AIVariable _v14, AIVariable _v15, AIVariable _v16, AIVariable _v17, AIVariable _v18, AIVariable _v19, AIVariable _v20, AIVariable _v21, AIVariable _v22, AIVariable _v23, AIVariable _v24, AIVariable _v25, AIVariable _v26, AIVariable _v27, AIVariable _v28, AIVariable _v29, AIVariable _v30 )
        { 
            if ( _iCount >  0 ) aValues[ 0] =  _v0 ; else return ;
            if ( _iCount >  1 ) aValues[ 1] =  _v1 ; else return ;
            if ( _iCount >  2 ) aValues[ 2] =  _v2 ; else return ;
            if ( _iCount >  3 ) aValues[ 3] =  _v3 ; else return ;
            if ( _iCount >  4 ) aValues[ 4] =  _v4 ; else return ;
            if ( _iCount >  5 ) aValues[ 5] =  _v5 ; else return ;
            if ( _iCount >  6 ) aValues[ 6] =  _v6 ; else return ;
            if ( _iCount >  7 ) aValues[ 7] =  _v7 ; else return ;
            if ( _iCount >  8 ) aValues[ 8] =  _v8 ; else return ;
            if ( _iCount >  9 ) aValues[ 9] =  _v9 ; else return ;
            if ( _iCount > 10 ) aValues[10] = _v10 ; else return ;
            if ( _iCount > 11 ) aValues[11] = _v11 ; else return ;
            if ( _iCount > 12 ) aValues[12] = _v12 ; else return ;
            if ( _iCount > 13 ) aValues[13] = _v13 ; else return ;
            if ( _iCount > 14 ) aValues[14] = _v14 ; else return ;
            if ( _iCount > 15 ) aValues[15] = _v15 ; else return ;
            if ( _iCount > 16 ) aValues[16] = _v16 ; else return ;
            if ( _iCount > 17 ) aValues[17] = _v17 ; else return ;
            if ( _iCount > 18 ) aValues[18] = _v18 ; else return ;
            if ( _iCount > 19 ) aValues[19] = _v19 ; else return ;
            if ( _iCount > 20 ) aValues[20] = _v20 ; else return ;
            if ( _iCount > 21 ) aValues[21] = _v21 ; else return ;
            if ( _iCount > 22 ) aValues[22] = _v22 ; else return ;
            if ( _iCount > 23 ) aValues[23] = _v23 ; else return ;
            if ( _iCount > 24 ) aValues[24] = _v24 ; else return ;
            if ( _iCount > 25 ) aValues[25] = _v25 ; else return ;
            if ( _iCount > 26 ) aValues[26] = _v26 ; else return ;
            if ( _iCount > 27 ) aValues[27] = _v27 ; else return ;
            if ( _iCount > 28 ) aValues[28] = _v28 ; else return ;
            if ( _iCount > 29 ) aValues[29] = _v29 ; else return ;
            if ( _iCount > 30 ) aValues[30] = _v30 ;
        }        
        inline AIVariables ( AIVariable _v0, AIVariable _v1, AIVariable _v2, AIVariable _v3, AIVariable _v4, AIVariable _v5, AIVariable _v6, AIVariable _v7, AIVariable _v8, AIVariable _v9, AIVariable _v10, AIVariable _v11, AIVariable _v12, AIVariable _v13, AIVariable _v14, AIVariable _v15, AIVariable _v16, AIVariable _v17, AIVariable _v18, AIVariable _v19, AIVariable _v20, AIVariable _v21, AIVariable _v22, AIVariable _v23, AIVariable _v24, AIVariable _v25, AIVariable _v26, AIVariable _v27, AIVariable _v28, AIVariable _v29, AIVariable _v30, AIVariable _v31 )
        { 
            if ( _iCount >  0 ) aValues[ 0] =  _v0 ; else return ;
            if ( _iCount >  1 ) aValues[ 1] =  _v1 ; else return ;
            if ( _iCount >  2 ) aValues[ 2] =  _v2 ; else return ;
            if ( _iCount >  3 ) aValues[ 3] =  _v3 ; else return ;
            if ( _iCount >  4 ) aValues[ 4] =  _v4 ; else return ;
            if ( _iCount >  5 ) aValues[ 5] =  _v5 ; else return ;
            if ( _iCount >  6 ) aValues[ 6] =  _v6 ; else return ;
            if ( _iCount >  7 ) aValues[ 7] =  _v7 ; else return ;
            if ( _iCount >  8 ) aValues[ 8] =  _v8 ; else return ;
            if ( _iCount >  9 ) aValues[ 9] =  _v9 ; else return ;
            if ( _iCount > 10 ) aValues[10] = _v10 ; else return ;
            if ( _iCount > 11 ) aValues[11] = _v11 ; else return ;
            if ( _iCount > 12 ) aValues[12] = _v12 ; else return ;
            if ( _iCount > 13 ) aValues[13] = _v13 ; else return ;
            if ( _iCount > 14 ) aValues[14] = _v14 ; else return ;
            if ( _iCount > 15 ) aValues[15] = _v15 ; else return ;
            if ( _iCount > 16 ) aValues[16] = _v16 ; else return ;
            if ( _iCount > 17 ) aValues[17] = _v17 ; else return ;
            if ( _iCount > 18 ) aValues[18] = _v18 ; else return ;
            if ( _iCount > 19 ) aValues[19] = _v19 ; else return ;
            if ( _iCount > 20 ) aValues[20] = _v20 ; else return ;
            if ( _iCount > 21 ) aValues[21] = _v21 ; else return ;
            if ( _iCount > 22 ) aValues[22] = _v22 ; else return ;
            if ( _iCount > 23 ) aValues[23] = _v23 ; else return ;
            if ( _iCount > 24 ) aValues[24] = _v24 ; else return ;
            if ( _iCount > 25 ) aValues[25] = _v25 ; else return ;
            if ( _iCount > 26 ) aValues[26] = _v26 ; else return ;
            if ( _iCount > 27 ) aValues[27] = _v27 ; else return ;
            if ( _iCount > 28 ) aValues[28] = _v28 ; else return ;
            if ( _iCount > 29 ) aValues[29] = _v29 ; else return ;
            if ( _iCount > 30 ) aValues[30] = _v30 ; else return ;
            if ( _iCount > 31 ) aValues[31] = _v31 ;
        }        

        inline AIVariables ( const int8    _v0 ) { if ( _iCount > 0 ) aValues[0] = _v0 ; }
        inline AIVariables ( const uint8   _v0 ) { if ( _iCount > 0 ) aValues[0] = _v0 ; }
        inline AIVariables ( const int16   _v0 ) { if ( _iCount > 0 ) aValues[0] = _v0 ; }
        inline AIVariables ( const uint16  _v0 ) { if ( _iCount > 0 ) aValues[0] = _v0 ; }
        inline AIVariables ( const int32   _v0 ) { if ( _iCount > 0 ) aValues[0] = _v0 ; }
        inline AIVariables ( const uint32  _v0 ) { if ( _iCount > 0 ) aValues[0] = _v0 ; }
        inline AIVariables ( const float32 _v0 ) { if ( _iCount > 0 ) aValues[0] = _v0 ; }
        inline AIVariables ( const bool    _v0 ) { if ( _iCount > 0 ) aValues[0] = _v0 ; }
        inline AIVariables ( const char   *_v0 ) { if ( _iCount > 0 ) aValues[0] = _v0 ; }
        inline AIVariables ( const void   *_v0 ) { if ( _iCount > 0 ) aValues[0] = _v0 ; }

        //---------------------------------------------------------------------

        template< uint8 _iCount2 > inline AIVariables ( const AIVariables< _iCount2 > &_aValues ) 
        { 
            const uint8 iMax = ( _iCount < _iCount2 ) ? _iCount : _iCount2 ;

            for ( uint8 i = 0 ; i < iMax ; i++ )
            {
                aValues[i] = _aValues[i] ;
            }
        }

        //---------------------------------------------------------------------
        //  Operators
        //---------------------------------------------------------------------

        inline operator const AIVariable * ( ) const 
        { 
            return aValues ; 
        }

        //---------------------------------------------------------------------

        inline operator AIVariable * ( )
        { 
            return aValues ; 
        }

        //---------------------------------------------------------------------

        inline operator const AIVariable & ( ) const
        { 
            return aValues[0] ; 
        }

        //---------------------------------------------------------------------

        inline operator AIVariable & ( )
        { 
            return aValues[0] ; 
        }

        //---------------------------------------------------------------------

        inline bool operator ! ( ) const
        { 
            return ! aValues[0] ;
        }

        //---------------------------------------------------------------------

        template< uint8 _iCount2 > inline AIVariables &operator = ( const AIVariables< _iCount2 > &_aValues ) 
        { 
            const uint8 iMax = ( _iCount < _iCount2 ) ? _iCount : _iCount2 ;
            for ( uint8 i = 0 ; i < iMax ; i++ )
            {
                aValues[i] = _aValues[i] ;
            }
            return *this ; 
        }

        //---------------------------------------------------------------------

        inline AIVariable operator + ( const AIVariable &_vValue ) const
        { 
            return aValues[0] + _vValue ;
        }

        //---------------------------------------------------------------------

        inline AIVariable operator - ( const AIVariable &_vValue ) const
        { 
            return aValues[0] - _vValue ;
        }

        //---------------------------------------------------------------------

        inline AIVariable operator * ( const AIVariable &_vValue ) const
        { 
            return aValues[0] * _vValue ;
        }

        //---------------------------------------------------------------------

        inline AIVariable operator / ( const AIVariable &_vValue ) const
        { 
            return aValues[0] / _vValue ;
        }

        //---------------------------------------------------------------------

        template< uint8 _iCount2 > inline bool operator == ( const AIVariables< _iCount2 > &_aValues ) const
        { 
            return aValues[0] == _aValues[0] ;
        }

        //---------------------------------------------------------------------

        template< uint8 _iCount2 > inline bool operator != ( const AIVariables< _iCount2 > &_aValues ) const
        { 
            return aValues[0] != _aValues[0] ;
        }

        //---------------------------------------------------------------------

        template< uint8 _iCount2 > inline bool operator > ( const AIVariables< _iCount2 > &_aValues ) const
        { 
            return aValues[0] > _aValues[0] ;
        }

        //---------------------------------------------------------------------

        template< uint8 _iCount2 > inline bool operator >= ( const AIVariables< _iCount2 > &_aValues ) const
        { 
            return aValues[0] >= _aValues[0] ;
        }

        //---------------------------------------------------------------------

        template< uint8 _iCount2 > inline bool operator < ( const AIVariables< _iCount2 > &_aValues ) const
        { 
            return aValues[0] < _aValues[0] ;
        }

        //---------------------------------------------------------------------

        template< uint8 _iCount2 > inline bool operator <= ( const AIVariables< _iCount2 > &_aValues ) const
        { 
            return aValues[0] <= _aValues[0] ;
        }

    private :

        //---------------------------------------------------------------------
        //  Variables
        //---------------------------------------------------------------------
        AIVariable  aValues [ _iCount ] ;
    } ;

    //-------------------------------------------------------------------------
    //  Global operators
    //-------------------------------------------------------------------------

    template< uint8 _iCount > inline bool operator == ( const AIVariables< _iCount > &_aValues, const AIVariable &_vValue ) 
    { 
        return _aValues[0] == _vValue ;
    }

    //-------------------------------------------------------------------------

    template< uint8 _iCount > inline bool operator != ( const AIVariables< _iCount > &_aValues, const AIVariable &_vValue ) 
    { 
        return _aValues[0] != _vValue ;
    }

    //-------------------------------------------------------------------------

    template< uint8 _iCount > inline bool operator > ( const AIVariables< _iCount > &_aValues, const AIVariable &_vValue ) 
    { 
        return _aValues[0] > _vValue ;
    }

    //-------------------------------------------------------------------------

    template< uint8 _iCount > inline bool operator >= ( const AIVariables< _iCount > &_aValues, const AIVariable &_vValue ) 
    { 
        return _aValues[0] >= _vValue ;
    }

    //-------------------------------------------------------------------------

    template< uint8 _iCount > inline bool operator < ( const AIVariables< _iCount > &_aValues, const AIVariable &_vValue ) 
    { 
        return _aValues[0] < _vValue ;
    }

    //-------------------------------------------------------------------------

    template< uint8 _iCount > inline bool operator <= ( const AIVariables< _iCount > &_aValues, const AIVariable &_vValue ) 
    { 
        return _aValues[0] <= _vValue ;
    }

    //-------------------------------------------------------------------------
}
//-----------------------------------------------------------------------------


//-----------------------------------------------------------------------------
#endif
//-----------------------------------------------------------------------------
