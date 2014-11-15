//-----------------------------------------------------------------------------
#ifndef __S3DXAudioBackend_h__
#define __S3DXAudioBackend_h__
//-----------------------------------------------------------------------------
//  WORK IN PROGRESS INTERFACE, DO *NOT* USE IT !!!
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
namespace S3DX
//-----------------------------------------------------------------------------
{
    class AudioBackend
    {
    public :

        //---------------------------------------------------------------------
        //  Virtual destructor
        //
        virtual ~AudioBackend ( ) { }

        //---------------------------------------------------------------------
        //  Enums
        //
        enum
        {
            eSeekSet                        = 0,
            eSeekCur                        = 1,
            eSeekEnd                        = 2
        } ;
        enum
        {
            eInvalidContext                 = -1,
            eInvalidSample                  = -1,
            eInvalidStream                  = -1,
            eInvalidSource                  = -1
        } ;
        enum
        {
            eReverbPresetNone               = 0,
            eReverbPresetGeneric            = 1,
            eReverbPresetPaddedCell         = 2,
            eReverbPresetRoom               = 3,
            eReverbPresetBathRoom           = 4,
            eReverbPresetLivingRoom         = 5,
            eReverbPresetStoneRoom          = 6,
            eReverbPresetAuditorium         = 7,
            eReverbPresetConcertHall        = 8,
            eReverbPresetCave               = 9,
            eReverbPresetArena              = 10,
            eReverbPresetHangar             = 11,
            eReverbPresetCarpetedHallway    = 12,
            eReverbPresetHallway            = 13,
            eReverbPresetStoneCorridor      = 14,
            eReverbPresetAlley              = 15,
            eReverbPresetForest             = 16,
            eReverbPresetCity               = 17,
            eReverbPresetMountains          = 18,
            eReverbPresetQuarry             = 19,
            eReverbPresetPlain              = 20,
            eReverbPresetParkingLot         = 21,
            eReverbPresetSewerPipe          = 22,
            eReverbPresetUnderwater         = 23,
            eReverbPresetDrugged            = 24,
            eReverbPresetDizzy              = 25,
            eReverbPresetPsychotic          = 26
        } ;

        //---------------------------------------------------------------------
        //  Callbacks
        //
        typedef int     ( * StreamReadCallback )            ( void *_pStream, const char *_pBuffer, int _iBufferSize ) ;
        typedef int     ( * StreamSeekCallback )            ( void *_pStream, int _iOffset, int _iWhence ) ;
        typedef int     ( * StreamTellCallback )            ( void *_pStream ) ;

        //---------------------------------------------------------------------
        //  Methods
        //
        virtual const char *GetName                         ( ) = 0 ;

        virtual bool        OnInitialize                    ( ) = 0 ;
        virtual bool        OnUpdate                        ( ) = 0 ;
        virtual void        OnShutdown                      ( ) = 0 ;
        virtual void        OnSuspend                       ( bool _bSuspend ) = 0 ;

        virtual int         OnSampleLoad                    ( const char *_pName, const char *_pBuffer, int _iBufferSize ) = 0 ;
        virtual void        OnSampleUnload                  ( int _iSampleID ) = 0 ;
        virtual float       OnSampleGetDuration             ( int _iSampleID ) = 0 ;

        virtual int         OnStreamOpen                    ( const char *_pName, void *_pStream, StreamReadCallback _pReadCallback, StreamSeekCallback _pSeekCallback, StreamTellCallback _pTellCallback ) = 0 ;
        virtual void        OnStreamClose                   ( int _iStreamID ) = 0 ;

        virtual int         OnContextCreate                 ( ) = 0 ;
        virtual void        OnContextDispose                ( int _iContextID ) = 0 ;
        virtual void        OnContextSetVolume              ( int _iContextID, float _fVolume ) = 0 ;
        virtual void        OnContextSetReverbPreset        ( int _iContextID, int   _iReverbPreset ) = 0 ;
        virtual void        OnContextSetReverbLevels        ( int _iContextID, float _fDryLevel, float _fWetLevel ) = 0 ;
        virtual void        OnContextSetListenerPosition    ( int _iContextID, float _fX, float _fY, float _fZ ) = 0 ;
        virtual void        OnContextSetListenerOrientation ( int _iContextID, float _fToX, float _fToY, float _fToZ, float _fUpX, float _fUpY, float _fUpZ ) = 0 ;
        
        virtual int         OnSourceCreate                  ( int _iContextID ) = 0 ;
        virtual void        OnSourceDispose                 ( int _iSourceID  ) = 0 ;
        virtual int         OnSourceSetSample               ( int _iSourceID, int _iSampleID ) = 0 ;
        virtual int         OnSourceSetStream               ( int _iSourceID, int _iStreamID ) = 0 ;
        virtual bool        OnSourcePlay                    ( int _iSourceID  ) = 0 ;
        virtual void        OnSourcePause                   ( int _iSourceID  ) = 0 ;
        virtual void        OnSourceResume                  ( int _iSourceID  ) = 0 ;
        virtual void        OnSourceStop                    ( int _iSourceID  ) = 0 ;
        virtual void        OnSourceSetPriority             ( int _iSourceID, float _fPriority ) = 0 ;
        virtual void        OnSourceSetPosition             ( int _iSourceID, float _fX, float _fY, float _fZ ) = 0 ;
        virtual void        OnSourceSetVolume               ( int _iSourceID, float _fVolume   ) = 0 ;
        virtual void        OnSourceSetPitch                ( int _iSourceID, float _fPitch    ) = 0 ;
        virtual void        OnSourceSetLooping              ( int _iSourceID, bool  _bLooping  ) = 0 ;
        virtual void        OnSourceSetRolloffFactor        ( int _iSourceID, float _fFactor   ) = 0 ;
        virtual void        OnSourceSetReferenceDistance    ( int _iSourceID, float _fDistance ) = 0 ;
        virtual void        OnSourceSetReverbLevels         ( int _iSourceID, float _fDryLevel, float _fWetLevel ) = 0 ;
        virtual bool        OnSourceIsPlaying               ( int _iSourceID  ) = 0 ;
        virtual bool        OnSourceIsPaused                ( int _iSourceID  ) = 0 ;
        virtual void        OnSourceSetProgress             ( int _iSourceID, float _fProgress ) = 0 ;
        virtual float       OnSourceGetProgress             ( int _iSourceID  ) = 0 ;

    } ;
}
//-----------------------------------------------------------------------------


//-----------------------------------------------------------------------------
#endif
//-----------------------------------------------------------------------------
