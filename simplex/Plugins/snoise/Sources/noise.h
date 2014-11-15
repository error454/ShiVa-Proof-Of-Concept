//-----------------------------------------------------------------------------
#ifndef __noise_h__
#define __noise_h__
//-----------------------------------------------------------------------------
#include "S3DXAIPackage.h"
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
// Package declaration
//-----------------------------------------------------------------------------
class noisePackage : public S3DX::AIPackage
{
public :

    //-------------------------------------------------------------------------
    //  Constructor / Destructor
	//-------------------------------------------------------------------------

	noisePackage         ( ) ;
                               ~noisePackage         ( ) ;

	//-------------------------------------------------------------------------
    //  Accessors
	//-------------------------------------------------------------------------

    const   char               *GetName             ( ) const ;
            S3DX::uint32        GetFunctionCount    ( ) const ;
            S3DX::uint32        GetConstantCount    ( ) const ;
    const   S3DX::AIFunction   *GetFunctionAt       ( S3DX::uint32 _iIndex ) const ;
    const   S3DX::AIConstant   *GetConstantAt       ( S3DX::uint32 _iIndex ) const ;

} ;

//-----------------------------------------------------------------------------
// Package API declaration
//-----------------------------------------------------------------------------
class noiseAPI
{
public :

    //-------------------------------------------------------------------------
    //  API Constructor
	//-------------------------------------------------------------------------
                                noiseAPI       ( ) 
                                {
                                    pfn_noise_rendeSimplexStarsEx      = NULL ;
                                    pfn_noise_rendeSimplexStars        = NULL ;
                                    pfn_noise_rendeStars               = NULL ;
                                    pfn_noise_renderNebulaC            = NULL ;
                                    pfn_noise_renderNebulaB            = NULL ;
                                    pfn_noise_renderNebulaA            = NULL ;
                                    pfn_noise_renderNebula             = NULL ;
                                    pfn_noise_render2DSimplexOctaveExp = NULL ;
                                    pfn_noise_render2DSimplexOctave = NULL ;
                                    pfn_noise_render2DSimplex = NULL ;

                                }

	//-------------------------------------------------------------------------
	//  API Callbacks 
	//-------------------------------------------------------------------------

    S3DX::AICallback        pfn_noise_rendeSimplexStarsEx ;
    S3DX::AICallback        pfn_noise_rendeSimplexStars ;
    S3DX::AICallback        pfn_noise_rendeStars ;
    S3DX::AICallback        pfn_noise_renderNebulaC ;
    S3DX::AICallback        pfn_noise_renderNebulaB ;
    S3DX::AICallback        pfn_noise_renderNebulaA ;
    S3DX::AICallback        pfn_noise_renderNebula ;
    S3DX::AICallback        pfn_noise_render2DSimplexOctaveExp ;
    S3DX::AICallback        pfn_noise_render2DSimplexOctave ;
    S3DX::AICallback        pfn_noise_render2DSimplex ;

	//-------------------------------------------------------------------------
	//  API Functions 
	//-------------------------------------------------------------------------

    inline S3DX::AIVariable     rendeSimplexStarsEx      ( const S3DX::AIVariable& sPixelmap, const S3DX::AIVariable& nOctaves, const S3DX::AIVariable& nPersistence, const S3DX::AIVariable& nScale, const S3DX::AIVariable& nCover, const S3DX::AIVariable& nSharpness, const S3DX::AIVariable& nThreshold ) { S3DX_DECLARE_VIN_07( sPixelmap, nOctaves, nPersistence, nScale, nCover, nSharpness, nThreshold ) ; S3DX::AIVariable vOut ; if ( pfn_noise_rendeSimplexStarsEx ) pfn_noise_rendeSimplexStarsEx ( 7, vIn, &vOut ); return vOut ; }
    inline S3DX::AIVariable     rendeSimplexStars        ( const S3DX::AIVariable& sPixelmap, const S3DX::AIVariable& nOctaves, const S3DX::AIVariable& nPersistence, const S3DX::AIVariable& nScale, const S3DX::AIVariable& nCover, const S3DX::AIVariable& nSharpness ) { S3DX_DECLARE_VIN_06( sPixelmap, nOctaves, nPersistence, nScale, nCover, nSharpness ) ; S3DX::AIVariable vOut ; if ( pfn_noise_rendeSimplexStars ) pfn_noise_rendeSimplexStars ( 6, vIn, &vOut ); return vOut ; }
    inline S3DX::AIVariable     rendeStars               ( const S3DX::AIVariable& sPixelmap, const S3DX::AIVariable& nStars, const S3DX::AIVariable& nSize, const S3DX::AIVariable& nSeed ) { S3DX_DECLARE_VIN_04( sPixelmap, nStars, nSize, nSeed ) ; S3DX::AIVariable vOut ; if ( pfn_noise_rendeStars ) pfn_noise_rendeStars ( 4, vIn, &vOut ); return vOut ; }
    inline S3DX::AIVariable     renderNebulaC            ( const S3DX::AIVariable& sPixelmap, const S3DX::AIVariable& nOctaves, const S3DX::AIVariable& nPersistence, const S3DX::AIVariable& nScale, const S3DX::AIVariable& nCover, const S3DX::AIVariable& nSharpness, const S3DX::AIVariable& nSeed, const S3DX::AIVariable& nOctaves1, const S3DX::AIVariable& nPersistence1, const S3DX::AIVariable& nScale1, const S3DX::AIVariable& nCover1, const S3DX::AIVariable& nSharpness1, const S3DX::AIVariable& nSeed1, const S3DX::AIVariable& nOctaves2, const S3DX::AIVariable& nPersistence2, const S3DX::AIVariable& nScale2, const S3DX::AIVariable& nCover2, const S3DX::AIVariable& nSharpness2, const S3DX::AIVariable& nSeed2, const S3DX::AIVariable& nOctaves3, const S3DX::AIVariable& nPersistence3, const S3DX::AIVariable& nScale3, const S3DX::AIVariable& nCover3, const S3DX::AIVariable& nSharpness3, const S3DX::AIVariable& nSeed3 ) { S3DX_DECLARE_VIN_25( sPixelmap, nOctaves, nPersistence, nScale, nCover, nSharpness, nSeed, nOctaves1, nPersistence1, nScale1, nCover1, nSharpness1, nSeed1, nOctaves2, nPersistence2, nScale2, nCover2, nSharpness2, nSeed2, nOctaves3, nPersistence3, nScale3, nCover3, nSharpness3, nSeed3 ) ; S3DX::AIVariable vOut ; if ( pfn_noise_renderNebulaC ) pfn_noise_renderNebulaC ( 25, vIn, &vOut ); return vOut ; }
    inline S3DX::AIVariable     renderNebulaB            ( const S3DX::AIVariable& sPixelmap, const S3DX::AIVariable& nOctaves1, const S3DX::AIVariable& nPersistence1, const S3DX::AIVariable& nScale1, const S3DX::AIVariable& nCover1, const S3DX::AIVariable& nSharpness1, const S3DX::AIVariable& nSeed1, const S3DX::AIVariable& nOctaves2, const S3DX::AIVariable& nPersistence2, const S3DX::AIVariable& nScale2, const S3DX::AIVariable& nCover2, const S3DX::AIVariable& nSharpness2, const S3DX::AIVariable& nSeed2, const S3DX::AIVariable& nOctaves3, const S3DX::AIVariable& nPersistence3, const S3DX::AIVariable& nScale3, const S3DX::AIVariable& nCover3, const S3DX::AIVariable& nSharpness3, const S3DX::AIVariable& nSeed3 ) { S3DX_DECLARE_VIN_19( sPixelmap, nOctaves1, nPersistence1, nScale1, nCover1, nSharpness1, nSeed1, nOctaves2, nPersistence2, nScale2, nCover2, nSharpness2, nSeed2, nOctaves3, nPersistence3, nScale3, nCover3, nSharpness3, nSeed3 ) ; S3DX::AIVariable vOut ; if ( pfn_noise_renderNebulaB ) pfn_noise_renderNebulaB ( 19, vIn, &vOut ); return vOut ; }
    inline S3DX::AIVariable     renderNebulaA            ( const S3DX::AIVariable& sPixelmap, const S3DX::AIVariable& nOctaves1, const S3DX::AIVariable& nPersistence1, const S3DX::AIVariable& nScale1, const S3DX::AIVariable& nCover1, const S3DX::AIVariable& nSharpness1, const S3DX::AIVariable& nOctaves2, const S3DX::AIVariable& nPersistence2, const S3DX::AIVariable& nScale2, const S3DX::AIVariable& nCover2, const S3DX::AIVariable& nSharpness2, const S3DX::AIVariable& nOctaves3, const S3DX::AIVariable& nPersistence3, const S3DX::AIVariable& nScale3, const S3DX::AIVariable& nCover3, const S3DX::AIVariable& nSharpness3, const S3DX::AIVariable& nSeed ) { S3DX_DECLARE_VIN_17( sPixelmap, nOctaves1, nPersistence1, nScale1, nCover1, nSharpness1, nOctaves2, nPersistence2, nScale2, nCover2, nSharpness2, nOctaves3, nPersistence3, nScale3, nCover3, nSharpness3, nSeed ) ; S3DX::AIVariable vOut ; if ( pfn_noise_renderNebulaA ) pfn_noise_renderNebulaA ( 17, vIn, &vOut ); return vOut ; }
    inline S3DX::AIVariable     renderNebula             ( const S3DX::AIVariable& sPixelmap, const S3DX::AIVariable& nOctaves, const S3DX::AIVariable& nPersistence, const S3DX::AIVariable& nScale, const S3DX::AIVariable& nCover, const S3DX::AIVariable& nSharpness, const S3DX::AIVariable& nSeed ) { S3DX_DECLARE_VIN_07( sPixelmap, nOctaves, nPersistence, nScale, nCover, nSharpness, nSeed ) ; S3DX::AIVariable vOut ; if ( pfn_noise_renderNebula ) pfn_noise_renderNebula ( 7, vIn, &vOut ); return vOut ; }
    inline S3DX::AIVariable     render2DSimplexOctaveExp ( const S3DX::AIVariable& sPixelmap, const S3DX::AIVariable& nOctaves, const S3DX::AIVariable& nPersistence, const S3DX::AIVariable& nScale, const S3DX::AIVariable& nCover, const S3DX::AIVariable& nSharpness ) { S3DX_DECLARE_VIN_06( sPixelmap, nOctaves, nPersistence, nScale, nCover, nSharpness ) ; S3DX::AIVariable vOut ; if ( pfn_noise_render2DSimplexOctaveExp ) pfn_noise_render2DSimplexOctaveExp ( 6, vIn, &vOut ); return vOut ; }
    inline S3DX::AIVariable     render2DSimplexOctave ( const S3DX::AIVariable& sPixelmap, const S3DX::AIVariable& nOctaves, const S3DX::AIVariable& nPersistence, const S3DX::AIVariable& nScale ) { S3DX_DECLARE_VIN_04( sPixelmap, nOctaves, nPersistence, nScale ) ; S3DX::AIVariable vOut ; if ( pfn_noise_render2DSimplexOctave ) pfn_noise_render2DSimplexOctave ( 4, vIn, &vOut ); return vOut ; }
    inline S3DX::AIVariable     render2DSimplex ( const S3DX::AIVariable& sPixelmap ) { S3DX_DECLARE_VIN_01( sPixelmap ) ; S3DX::AIVariable vOut ; if ( pfn_noise_render2DSimplex ) pfn_noise_render2DSimplex ( 1, vIn, &vOut ); return vOut ; }

 	//-------------------------------------------------------------------------
	//  API Constants 
	//-------------------------------------------------------------------------


} ;

extern noiseAPI noise;

//-----------------------------------------------------------------------------
#endif
//-----------------------------------------------------------------------------
