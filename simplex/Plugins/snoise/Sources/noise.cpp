//-----------------------------------------------------------------------------
#include "PrecompiledHeader.h"
#include "noise.h"
#include "simplexnoise.h"
#include "math.h"
#include <random>
#include <fstream>
#include <sstream>
#include <omp.h>
//-----------------------------------------------------------------------------


#ifdef S3DX_DLL
	noiseAPI noise ;
#endif

static void appendToLog(std::ostringstream& o){
	std::ofstream outfile;
	outfile.open("E:\output.txt", std::ios_base::app);
	outfile << o.str();
}

static int expFilter(int value, float cover, float sharpness){
	cover = value - (255 - cover);
	if(cover < 0) 
		cover = 0;
	value = 255 - pow(sharpness, cover) * 255;
	return value;
}

static float blendMultiply(float v1, float v2){
	return (v1 * v2) / 255;
}

static int random(int min, int max){
	return rand() % (max - min + 1) + min;
}

//-----------------------------------------------------------------------------
//  Callbacks
//-----------------------------------------------------------------------------

int Callback_noise_rendeSimplexStarsEx ( int _iInCount, const S3DX::AIVariable *_pIn, S3DX::AIVariable *_pOut )
{
    S3DX_API_PROFILING_START( "noise.rendeSimplexStarsEx" ) ;

    // Input Parameters 
    int iInputCount = 0 ;
    S3DX::AIVariable sPixelmap    = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nOctaves     = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nPersistence = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nScale       = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nCover       = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nSharpness   = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nThreshold   = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;

    // Output Parameters 
    S3DX::AIVariable bReturn  = false;
	
	S3DX::AIVariable hPixelMap = S3DX::pixelmap.getResourceHandle ( sPixelmap ) ;
    if             ( hPixelMap )
    {
        if ( S3DX::pixelmap.lock ( hPixelMap ) )
        {
            S3DX::uint16 nPixelMapWidth  = S3DX::pixelmap.getWidth  ( hPixelMap ) ;
            S3DX::uint16 nPixelMapHeight = S3DX::pixelmap.getHeight ( hPixelMap ) ;

			#pragma omp parallel for
            for ( int y = 0 ; y < nPixelMapHeight ; y++ )
            {
                for (int x = 0 ; x < nPixelMapWidth ; x++ )
                {
					S3DX::float32 nPixel = expFilter(scaled_octave_noise_2d( nOctaves, nPersistence, nScale, 0, 255, x, y), nCover, nSharpness);
					
					//blend the star with the avg if it's not black
					if(nPixel > nThreshold){
						float val = blendMultiply(nPixel, 255.0f);
						S3DX::pixelmap.setPixel ( hPixelMap, x, y, val, val, val, 255.0f ) ;
					}
                }
            }

            S3DX::pixelmap.unlock ( hPixelMap ) ;
            bReturn = true ;
        }
    }

    // Return output Parameters 
    int iReturnCount = 0 ;
    _pOut[iReturnCount++] = bReturn ;

    S3DX_API_PROFILING_STOP( ) ;
    return iReturnCount;
}

//-----------------------------------------------------------------------------

int Callback_noise_rendeSimplexStars ( int _iInCount, const S3DX::AIVariable *_pIn, S3DX::AIVariable *_pOut )
{
    S3DX_API_PROFILING_START( "noise.rendeSimplexStars" ) ;

    // Input Parameters 
    int iInputCount = 0 ;
    S3DX::AIVariable sPixelmap    = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nOctaves     = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nPersistence = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nScale       = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nCover       = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nSharpness   = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;

    // Output Parameters 
    S3DX::AIVariable bReturn  = false;
	
	S3DX::AIVariable hPixelMap = S3DX::pixelmap.getResourceHandle ( sPixelmap ) ;
    if             ( hPixelMap )
    {
        if ( S3DX::pixelmap.lock ( hPixelMap ) )
        {
            S3DX::uint16 nPixelMapWidth  = S3DX::pixelmap.getWidth  ( hPixelMap ) ;
            S3DX::uint16 nPixelMapHeight = S3DX::pixelmap.getHeight ( hPixelMap ) ;

			#pragma omp parallel for
            for ( int y = 0 ; y < nPixelMapHeight ; y++ )
            {
                for ( int x = 0 ; x < nPixelMapWidth ; x++ )
                {
					S3DX::float32 nPixel = expFilter(scaled_octave_noise_2d( nOctaves, nPersistence, nScale, 0, 255, x, y), nCover, nSharpness);
					
					//blend the star with the avg if it's not black
					if(nPixel > 90){
						S3DX::AIVariables<4> pixels = S3DX::pixelmap.getPixel (hPixelMap, x, y);
						//int avg = (pixels[0] + pixels[1] + pixels[2]) / 3;
						float val = blendMultiply(nPixel, 255.0f);
						S3DX::pixelmap.setPixel ( hPixelMap, x, y, val, val, val, 255.0f ) ;
					}
                }
            }

            S3DX::pixelmap.unlock ( hPixelMap ) ;
            bReturn = true ;
        }
    }

    // Return output Parameters 
    int iReturnCount = 0 ;
    _pOut[iReturnCount++] = bReturn ;

    S3DX_API_PROFILING_STOP( ) ;
    return iReturnCount;
}

//-----------------------------------------------------------------------------

int Callback_noise_rendeStars ( int _iInCount, const S3DX::AIVariable *_pIn, S3DX::AIVariable *_pOut )
{
    S3DX_API_PROFILING_START( "noise.rendeStars" ) ;

    // Input Parameters 
    int iInputCount = 0 ;
    S3DX::AIVariable sPixelmap = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nStars    = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nSize     = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nSeed     = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;

	srand(nSeed);

    // Output Parameters 
    S3DX::AIVariable bReturn = false;

	S3DX::AIVariable hPixelMap = S3DX::pixelmap.getResourceHandle ( sPixelmap ) ;
    if             ( hPixelMap )
    {
        if ( S3DX::pixelmap.lock ( hPixelMap ) )
        {
            S3DX::uint16 nPixelMapWidth  = S3DX::pixelmap.getWidth  ( hPixelMap ) ;
            S3DX::uint16 nPixelMapHeight = S3DX::pixelmap.getHeight ( hPixelMap ) ;

			for ( int starI = 0; starI < nStars; starI++ )
			{
				int cx = random(1, nPixelMapWidth - nSize);
				int cy = random(1, nPixelMapHeight - nSize);
				int size = random(1, nSize);
				int brightness = random(180, 255);

				for(int y=-nSize; y<=nSize; y++)
					for(int x=-nSize; x<=nSize; x++)
						if(x*x+y*y <= nSize*nSize){
							S3DX::pixelmap.setPixel ( hPixelMap, cx + x, cy + y, brightness, brightness, brightness, 255.0f ) ;
						}
            }

            S3DX::pixelmap.unlock ( hPixelMap ) ;

            bReturn = true ;
        }
    }

    // Return output Parameters 
    int iReturnCount = 0 ;
    _pOut[iReturnCount++] = bReturn ;

    S3DX_API_PROFILING_STOP( ) ;
    return iReturnCount;
}

//-----------------------------------------------------------------------------

int Callback_noise_renderNebulaC ( int _iInCount, const S3DX::AIVariable *_pIn, S3DX::AIVariable *_pOut )
{
    S3DX_API_PROFILING_START( "noise.renderNebulaC" ) ;

    // Input Parameters 
    int iInputCount = 0 ;
    S3DX::AIVariable sPixelmap     = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nOctaves      = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nPersistence  = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nScale        = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nCover        = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nSharpness    = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nSeed         = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nOctaves1     = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nPersistence1 = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nScale1       = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nCover1       = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nSharpness1   = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nSeed1        = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nOctaves2     = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nPersistence2 = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nScale2       = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nCover2       = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nSharpness2   = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nSeed2        = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nOctaves3     = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nPersistence3 = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nScale3       = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nCover3       = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nSharpness3   = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nSeed3        = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;

    // Output Parameters 
    S3DX::AIVariable bReturn  = false;
	
	S3DX::AIVariable hPixelMap = S3DX::pixelmap.getResourceHandle ( sPixelmap ) ;
    if             ( hPixelMap )
    {
        // Lock the PixelMap before attempting to read/write from/to it.
        //
        if ( S3DX::pixelmap.lock ( hPixelMap ) )
        {
            // Get the PixelMap size.
            //
            S3DX::uint16 nPixelMapWidth  = S3DX::pixelmap.getWidth  ( hPixelMap ) ;
            S3DX::uint16 nPixelMapHeight = S3DX::pixelmap.getHeight ( hPixelMap ) ;

            // For each pixel, write the plasma value.
            // Note that this code is really *not* optimized.
            //
			#pragma omp parallel for
            for ( int y = 0 ; y < nPixelMapHeight ; y++ )
            {
                for ( int x = 0 ; x < nPixelMapWidth ; x++ )
                {
					S3DX::float32 nPixelBase = expFilter(scaled_octave_noise_2d( nOctaves, nPersistence, nScale, 0, 255, x + 255 * nSeed, y + 255 * nSeed), nCover, nSharpness);
					S3DX::float32 nPixelR = expFilter(scaled_octave_noise_2d( nOctaves1, nPersistence1, nScale1, 0, 255, x + 255 * nSeed1, y + 255 * nSeed1), nCover1, nSharpness1);
					S3DX::float32 nPixelG = expFilter(scaled_octave_noise_2d( nOctaves2, nPersistence2, nScale2, 0, 255, x + 255 * nSeed2, y + 255 * nSeed2), nCover2, nSharpness2);
					S3DX::float32 nPixelB = expFilter(scaled_octave_noise_2d( nOctaves3, nPersistence3, nScale3, 0, 255, x + 255 * nSeed3, y + 255 * nSeed3), nCover3, nSharpness3);

					S3DX::pixelmap.setPixel ( hPixelMap, x, y, blendMultiply(nPixelBase, nPixelR), blendMultiply(nPixelBase, nPixelG), blendMultiply(nPixelBase, nPixelB), 255.0f ) ;
                }
            }

            // We are done, unlock the PixelMap.
            //
            S3DX::pixelmap.unlock ( hPixelMap ) ;

			std::ostringstream o;
			o << nOctaves.GetNumberValue() << " " << nPersistence.GetNumberValue() << " " << nScale.GetNumberValue() << " " << nCover.GetNumberValue() << " " << nSharpness.GetNumberValue() << " " << nSeed.GetNumberValue() << " " << nOctaves1.GetNumberValue() << " " << nPersistence1.GetNumberValue() << " " << nScale1.GetNumberValue() << " " << nCover1.GetNumberValue() << " " << nSharpness1.GetNumberValue() << " " << nSeed1.GetNumberValue() << " " << nOctaves2.GetNumberValue() << " " << nPersistence2.GetNumberValue() << " " << nScale2.GetNumberValue() << " " << nCover2.GetNumberValue() << " " << nSharpness2.GetNumberValue() << " " << nSeed2.GetNumberValue() << " " << nOctaves3.GetNumberValue() << " " << nPersistence3.GetNumberValue() << " " << nScale3.GetNumberValue() << " " << nCover3.GetNumberValue() << " " << nSharpness3.GetNumberValue() << " " << nSeed3.GetNumberValue() << std::endl;
			appendToLog( o );
            // Set the return code to "success".
            //
            bReturn = true ;
        }
    }

    // Return output Parameters 
    int iReturnCount = 0 ;
    _pOut[iReturnCount++] = bReturn ;

    S3DX_API_PROFILING_STOP( ) ;
    return iReturnCount;
}

//-----------------------------------------------------------------------------

int Callback_noise_renderNebulaB ( int _iInCount, const S3DX::AIVariable *_pIn, S3DX::AIVariable *_pOut )
{
    S3DX_API_PROFILING_START( "noise.renderNebulaB" ) ;

    // Input Parameters 
    int iInputCount = 0 ;
    S3DX::AIVariable sPixelmap     = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nOctaves1     = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nPersistence1 = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nScale1       = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nCover1       = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nSharpness1   = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nSeed1        = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nOctaves2     = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nPersistence2 = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nScale2       = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nCover2       = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nSharpness2   = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nSeed2        = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nOctaves3     = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nPersistence3 = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nScale3       = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nCover3       = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nSharpness3   = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nSeed3        = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;

    // Output Parameters 
    S3DX::AIVariable bReturn ;


#   pragma TODO( write the code for bReturn = noise.renderNebulaB ( sPixelmap, nOctaves1, nPersistence1, nScale1, nCover1, nSharpness1, nSeed1, nOctaves2, nPersistence2, nScale2, nCover2, nSharpness2, nSeed2, nOctaves3, nPersistence3, nScale3, nCover3, nSharpness3, nSeed3 ) )


    // Return output Parameters 
    int iReturnCount = 0 ;
    _pOut[iReturnCount++] = bReturn ;

    S3DX_API_PROFILING_STOP( ) ;
    return iReturnCount;
}

//-----------------------------------------------------------------------------

int Callback_noise_renderNebulaA ( int _iInCount, const S3DX::AIVariable *_pIn, S3DX::AIVariable *_pOut )
{
    S3DX_API_PROFILING_START( "noise.renderNebulaA" ) ;

    // Input Parameters 
    int iInputCount = 0 ;
    S3DX::AIVariable sPixelmap     = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nOctaves1     = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nPersistence1 = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nScale1       = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nCover1       = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nSharpness1   = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nOctaves2     = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nPersistence2 = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nScale2       = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nCover2       = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nSharpness2   = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nOctaves3     = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nPersistence3 = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nScale3       = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nCover3       = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nSharpness3   = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nSeed         = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;

    // Output Parameters 
    S3DX::AIVariable bReturn  = false;
	
	S3DX::AIVariable hPixelMap = S3DX::pixelmap.getResourceHandle ( sPixelmap ) ;
    if             ( hPixelMap )
    {
        // Lock the PixelMap before attempting to read/write from/to it.
        //
        if ( S3DX::pixelmap.lock ( hPixelMap ) )
        {
            // Get the PixelMap size.
            //
            S3DX::uint16 nPixelMapWidth  = S3DX::pixelmap.getWidth  ( hPixelMap ) ;
            S3DX::uint16 nPixelMapHeight = S3DX::pixelmap.getHeight ( hPixelMap ) ;

            // For each pixel, write the plasma value.
            // Note that this code is really *not* optimized.
            //
            for ( S3DX::uint16 y = 0 ; y < nPixelMapHeight ; y++ )
            {
                for ( S3DX::uint16 x = 0 ; x < nPixelMapWidth ; x++ )
                {
					S3DX::float32 nPixelBase = expFilter(scaled_octave_noise_2d( nOctaves1, nPersistence1, nScale1, 0, 255, x + 255 * nSeed, y + 255 * nSeed), nCover1, nSharpness1);
					S3DX::float32 nPixelR = expFilter(scaled_octave_noise_2d( nOctaves1, nPersistence1, nScale1, 0, 255, x + 255 * (nSeed + 1), y + 255 * (nSeed + 1)), nCover1, nSharpness1);
					S3DX::float32 nPixelG = expFilter(scaled_octave_noise_2d( nOctaves2, nPersistence2, nScale2, 0, 255, x + 255 * (nSeed + 2), y + 255 * (nSeed + 2)), nCover2, nSharpness2);
					S3DX::float32 nPixelB = expFilter(scaled_octave_noise_2d( nOctaves3, nPersistence3, nScale3, 0, 255, x + 255 * (nSeed + 3), y + 255 * (nSeed + 3)), nCover3, nSharpness3);

					S3DX::pixelmap.setPixel ( hPixelMap, x, y, blendMultiply(nPixelBase, nPixelR), blendMultiply(nPixelBase, nPixelG), blendMultiply(nPixelBase, nPixelB), 255.0f ) ;
                }
            }

            // We are done, unlock the PixelMap.
            //
            S3DX::pixelmap.unlock ( hPixelMap ) ;

            // Set the return code to "success".
            //
            bReturn = true ;
        }
    }

    // Return output Parameters 
    int iReturnCount = 0 ;
    _pOut[iReturnCount++] = bReturn ;

    S3DX_API_PROFILING_STOP( ) ;
    return iReturnCount;
}

//-----------------------------------------------------------------------------

int Callback_noise_renderNebula ( int _iInCount, const S3DX::AIVariable *_pIn, S3DX::AIVariable *_pOut )
{
    S3DX_API_PROFILING_START( "noise.renderNebula" ) ;

    // Input Parameters 
    int iInputCount = 0 ;
    S3DX::AIVariable sPixelmap    = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nOctaves     = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nPersistence = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nScale       = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nCover       = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nSharpness   = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nSeed        = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;

    // Output Parameters 
    S3DX::AIVariable bReturn  = false;
	
	S3DX::AIVariable hPixelMap = S3DX::pixelmap.getResourceHandle ( sPixelmap ) ;
    if             ( hPixelMap )
    {
        // Lock the PixelMap before attempting to read/write from/to it.
        //
        if ( S3DX::pixelmap.lock ( hPixelMap ) )
        {
            // Get the PixelMap size.
            //
            S3DX::uint16 nPixelMapWidth  = S3DX::pixelmap.getWidth  ( hPixelMap ) ;
            S3DX::uint16 nPixelMapHeight = S3DX::pixelmap.getHeight ( hPixelMap ) ;

            // For each pixel, write the plasma value.
            // Note that this code is really *not* optimized.
            //
            for ( S3DX::uint16 y = 0 ; y < nPixelMapHeight ; y++ )
            {
                for ( S3DX::uint16 x = 0 ; x < nPixelMapWidth ; x++ )
                {
					S3DX::float32 nPixelBase = expFilter(scaled_octave_noise_2d( nOctaves, nPersistence, nScale, 0, 255, x + 255 * nSeed, y + 255 * nSeed), nCover, nSharpness);
					S3DX::float32 nPixelR = expFilter(scaled_octave_noise_2d( nOctaves, nPersistence, nScale, 0, 255, x + 255 * (nSeed + 1), y + 255 * (nSeed + 1)), nCover, nSharpness);
					S3DX::float32 nPixelG = expFilter(scaled_octave_noise_2d( nOctaves, nPersistence, nScale, 0, 255, x + 255 * (nSeed + 2), y + 255 * (nSeed + 2)), nCover, nSharpness);
					S3DX::float32 nPixelB = expFilter(scaled_octave_noise_2d( nOctaves, nPersistence, nScale, 0, 255, x + 255 * (nSeed + 3), y + 255 * (nSeed + 3)), nCover, nSharpness);

					S3DX::pixelmap.setPixel ( hPixelMap, x, y, blendMultiply(nPixelBase, nPixelR), blendMultiply(nPixelBase, nPixelG), blendMultiply(nPixelBase, nPixelB), 255.0f ) ;
                }
            }

            // We are done, unlock the PixelMap.
            //
            S3DX::pixelmap.unlock ( hPixelMap ) ;

            // Set the return code to "success".
            //
            bReturn = true ;
        }
    }

    // Return output Parameters 
    int iReturnCount = 0 ;
    _pOut[iReturnCount++] = bReturn ;

    S3DX_API_PROFILING_STOP( ) ;
    return iReturnCount;
}

//-----------------------------------------------------------------------------

int Callback_noise_render2DSimplexOctaveExp ( int _iInCount, const S3DX::AIVariable *_pIn, S3DX::AIVariable *_pOut )
{
    S3DX_API_PROFILING_START( "noise.render2DSimplexOctaveExp" ) ;

    // Input Parameters 
    int iInputCount = 0 ;
    S3DX::AIVariable sPixelmap    = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nOctaves     = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nPersistence = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nScale       = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nCover       = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nSharpness   = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;

    // Output Parameters 
    S3DX::AIVariable bReturn  = false;
	
	S3DX::AIVariable hPixelMap = S3DX::pixelmap.getResourceHandle ( sPixelmap ) ;
    if             ( hPixelMap )
    {
        // Lock the PixelMap before attempting to read/write from/to it.
        //
        if ( S3DX::pixelmap.lock ( hPixelMap ) )
        {
            // Get the PixelMap size.
            //
            S3DX::uint16 nPixelMapWidth  = S3DX::pixelmap.getWidth  ( hPixelMap ) ;
            S3DX::uint16 nPixelMapHeight = S3DX::pixelmap.getHeight ( hPixelMap ) ;

            // For each pixel, write the plasma value.
            // Note that this code is really *not* optimized.
            //
            for ( S3DX::uint16 y = 0 ; y < nPixelMapHeight ; y++ )
            {
                for ( S3DX::uint16 x = 0 ; x < nPixelMapWidth ; x++ )
                {
					S3DX::float32 nPixel = expFilter(scaled_octave_noise_2d( nOctaves, nPersistence, nScale, 0, 255, x, y), nCover, nSharpness);
					S3DX::pixelmap.setPixel ( hPixelMap, x, y, nPixel, nPixel, nPixel, 255.0f ) ;
                }
            }

            // We are done, unlock the PixelMap.
            //
            S3DX::pixelmap.unlock ( hPixelMap ) ;

            // Set the return code to "success".
            //
            bReturn = true ;
        }
    }

    // Return output Parameters 
    int iReturnCount = 0 ;
    _pOut[iReturnCount++] = bReturn ;

    S3DX_API_PROFILING_STOP( ) ;
    return iReturnCount;
}

//-----------------------------------------------------------------------------

int Callback_noise_render2DSimplexOctave ( int _iInCount, const S3DX::AIVariable *_pIn, S3DX::AIVariable *_pOut )
{
    S3DX_API_PROFILING_START( "noise.render2DSimplexOctave" ) ;

    // Input Parameters 
    int iInputCount = 0 ;
    S3DX::AIVariable sPixelmap    = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nOctaves     = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nPersistence = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;
    S3DX::AIVariable nScale       = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;

    // Output Parameters 
    S3DX::AIVariable bReturn  = false;
	
	S3DX::AIVariable hPixelMap = S3DX::pixelmap.getResourceHandle ( sPixelmap ) ;
    if             ( hPixelMap )
    {
        // Lock the PixelMap before attempting to read/write from/to it.
        //
        if ( S3DX::pixelmap.lock ( hPixelMap ) )
        {
            // Get the PixelMap size.
            //
            S3DX::uint16 nPixelMapWidth  = S3DX::pixelmap.getWidth  ( hPixelMap ) ;
            S3DX::uint16 nPixelMapHeight = S3DX::pixelmap.getHeight ( hPixelMap ) ;

            // For each pixel, write the plasma value.
            // Note that this code is really *not* optimized.
            //
            for ( S3DX::uint16 y = 0 ; y < nPixelMapHeight ; y++ )
            {
                for ( S3DX::uint16 x = 0 ; x < nPixelMapWidth ; x++ )
                {
					S3DX::float32 nPixel = scaled_octave_noise_2d( nOctaves, nPersistence, nScale, 0, 255, x, y);
                    S3DX::pixelmap.setPixel ( hPixelMap, x, y, nPixel, nPixel, nPixel, 255.0f ) ;
                }
            }

            // We are done, unlock the PixelMap.
            //
            S3DX::pixelmap.unlock ( hPixelMap ) ;

            // Set the return code to "success".
            //
            bReturn = true ;
        }
    }

    // Return output Parameters 
    int iReturnCount = 0 ;
    _pOut[iReturnCount++] = bReturn ;

    S3DX_API_PROFILING_STOP( ) ;
    return iReturnCount;
}

//-----------------------------------------------------------------------------

int Callback_noise_render2DSimplex ( int _iInCount, const S3DX::AIVariable *_pIn, S3DX::AIVariable *_pOut )
{
    S3DX_API_PROFILING_START( "noise.render2DSimplex" ) ;

    // Input Parameters 
    int iInputCount = 0 ;
    S3DX::AIVariable sPixelmap = ( iInputCount < _iInCount ) ? _pIn[iInputCount++] : S3DX::AIVariable ( ) ;

    // Output Parameters 
    S3DX::AIVariable bReturn  = false;
	
	S3DX::AIVariable hPixelMap = S3DX::pixelmap.getResourceHandle ( sPixelmap ) ;
    if             ( hPixelMap )
    {
        // Lock the PixelMap before attempting to read/write from/to it.
        //
        if ( S3DX::pixelmap.lock ( hPixelMap ) )
        {
            // Get the PixelMap size.
            //
            S3DX::uint16 nPixelMapWidth  = S3DX::pixelmap.getWidth  ( hPixelMap ) ;
            S3DX::uint16 nPixelMapHeight = S3DX::pixelmap.getHeight ( hPixelMap ) ;

            // For each pixel, write the plasma value.
            // Note that this code is really *not* optimized.
            //
            for ( S3DX::uint16 y = 0 ; y < nPixelMapHeight ; y++ )
            {
                for ( S3DX::uint16 x = 0 ; x < nPixelMapWidth ; x++ )
                {
					S3DX::float32 nPixel = scaled_raw_noise_2d(0, 255, x, y);
                    S3DX::pixelmap.setPixel ( hPixelMap, x, y, nPixel, nPixel, nPixel, 255.0f ) ;
                }
            }

            // We are done, unlock the PixelMap.
            //
            S3DX::pixelmap.unlock ( hPixelMap ) ;

            // Set the return code to "success".
            //
            bReturn = true ;
        }
    }

    // Return output Parameters 
    int iReturnCount = 0 ;
    _pOut[iReturnCount++] = bReturn ;

    S3DX_API_PROFILING_STOP( ) ;
    return iReturnCount;
}

//-----------------------------------------------------------------------------
//  Constructor / Destructor
//-----------------------------------------------------------------------------

noisePackage::noisePackage ( )
{
#ifdef S3DX_DLL
    noise.pfn_noise_rendeSimplexStarsEx      = Callback_noise_rendeSimplexStarsEx      ;
    noise.pfn_noise_rendeSimplexStars        = Callback_noise_rendeSimplexStars        ;
    noise.pfn_noise_rendeStars               = Callback_noise_rendeStars               ;
    noise.pfn_noise_renderNebulaC            = Callback_noise_renderNebulaC            ;
    noise.pfn_noise_renderNebulaB            = Callback_noise_renderNebulaB            ;
    noise.pfn_noise_renderNebulaA            = Callback_noise_renderNebulaA            ;
    noise.pfn_noise_renderNebula             = Callback_noise_renderNebula             ;
    noise.pfn_noise_render2DSimplexOctaveExp = Callback_noise_render2DSimplexOctaveExp ;
    noise.pfn_noise_render2DSimplexOctave = Callback_noise_render2DSimplexOctave ;
    noise.pfn_noise_render2DSimplex = Callback_noise_render2DSimplex ;
	
#endif
}

//-----------------------------------------------------------------------------

noisePackage::~noisePackage ( )
{

}

//-----------------------------------------------------------------------------
//  Functions table
//-----------------------------------------------------------------------------

static S3DX::AIFunction aMyFunctions [ ] =
{
    { "rendeSimplexStarsEx"     , Callback_noise_rendeSimplexStarsEx     , "bReturn", "sPixelmap, nOctaves, nPersistence, nScale, nCover, nSharpness, nThreshold"                                                                                                                                                                                              , "Render Stars, nThreshold is between 0 and 255 to bias star color towards white"                                           , 0 }, 
    { "rendeSimplexStars"       , Callback_noise_rendeSimplexStars       , "bReturn", "sPixelmap, nOctaves, nPersistence, nScale, nCover, nSharpness"                                                                                                                                                                                                          , "Render Stars"                                                                                                             , 0 }, 
    { "rendeStars"              , Callback_noise_rendeStars              , "bReturn", "sPixelmap, nStars, nSize, nSeed"                                                                                                                                                                                                                                        , "Renders stars"                                                                                                            , 0 }, 
    { "renderNebulaC"           , Callback_noise_renderNebulaC           , "bReturn", "sPixelmap, nOctaves, nPersistence, nScale, nCover, nSharpness, nSeed, nOctaves1, nPersistence1, nScale1, nCover1, nSharpness1, nSeed1, nOctaves2, nPersistence2, nScale2, nCover2, nSharpness2, nSeed2, nOctaves3, nPersistence3, nScale3, nCover3, nSharpness3, nSeed3", "Renders a nebula by combining 3 Simplex noise values starting at the seed provided and passing through exponential filter", 0 }, 
    { "renderNebulaB"           , Callback_noise_renderNebulaB           , "bReturn", "sPixelmap, nOctaves1, nPersistence1, nScale1, nCover1, nSharpness1, nSeed1, nOctaves2, nPersistence2, nScale2, nCover2, nSharpness2, nSeed2, nOctaves3, nPersistence3, nScale3, nCover3, nSharpness3, nSeed3", "Renders a nebula by combining 3 Simplex noise values starting at the seed provided and passing through exponential filter", 0 }, 
    { "renderNebulaA"           , Callback_noise_renderNebulaA           , "bReturn", "sPixelmap, nOctaves1, nPersistence1, nScale1, nCover1, nSharpness1, nOctaves2, nPersistence2, nScale2, nCover2, nSharpness2, nOctaves3, nPersistence3, nScale3, nCover3, nSharpness3, nSeed", "Renders a nebula by combining 3 Simplex noise values starting at the seed provided and passing through exponential filter", 0 }, 
    { "renderNebula"            , Callback_noise_renderNebula            , "bReturn", "sPixelmap, nOctaves, nPersistence, nScale, nCover, nSharpness, nSeed", "Renders a nebula by combining 3 Simplex noise values starting at the seed provided and passing through exponential filter", 0 }, 
    { "render2DSimplexOctaveExp", Callback_noise_render2DSimplexOctaveExp, "bReturn", "sPixelmap, nOctaves, nPersistence, nScale, nCover, nSharpness", "Renders a multi-octave simplex noise map passed through an exponential filter to the provided pixelmap", 0 }, 
    { "render2DSimplexOctave", Callback_noise_render2DSimplexOctave, "bReturn", "sPixelmap, nOctaves, nPersistence, nScale", "Renders a multi-octave simplex noise map to the provided pixelmap", 0 }, 
    { "render2DSimplex", Callback_noise_render2DSimplex, "bReturn", "sPixelmap", "Renders a simplex noise map to the provided pixelmap", 0 }    
    //{ NULL, NULL, NULL, NULL, NULL, 0}
} ;

//-----------------------------------------------------------------------------
//  Constants table
//-----------------------------------------------------------------------------

static S3DX::AIConstant aMyConstants [ ] =
{
	{ NULL, 0, NULL, 0}
} ;

//-----------------------------------------------------------------------------
//  Accessors
//-----------------------------------------------------------------------------

const char *noisePackage::GetName ( ) const
{
    return "noise" ;
}

//-----------------------------------------------------------------------------

S3DX::uint32 noisePackage::GetFunctionCount ( ) const
{
	if ( aMyFunctions[0].pName == NULL )
	{
		return 0 ;
	}
	else
	{
		return sizeof( aMyFunctions ) / sizeof( S3DX::AIFunction ) ;
	}
}

//-----------------------------------------------------------------------------

S3DX::uint32 noisePackage::GetConstantCount ( ) const
{
	if ( aMyConstants[0].pName == NULL )
	{
		return 0 ;
	}
	else
	{
		return sizeof( aMyConstants ) / sizeof( S3DX::AIConstant ) ;
	}
}

//-----------------------------------------------------------------------------

const S3DX::AIFunction *noisePackage::GetFunctionAt ( S3DX::uint32 _iIndex ) const
{
    return &aMyFunctions[ _iIndex ] ;
}

//-----------------------------------------------------------------------------

const S3DX::AIConstant *noisePackage::GetConstantAt ( S3DX::uint32 _iIndex ) const
{
    return &aMyConstants[ _iIndex ] ;
}
