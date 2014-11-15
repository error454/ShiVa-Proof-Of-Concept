//-----------------------------------------------------------------------------
#ifndef __S3DXPlugin_h__
#define __S3DXPlugin_h__
//-----------------------------------------------------------------------------
#include "S3DXAIPackage.h"
#include "S3DXAIEngineAPI.h"
#include "S3DXAudioBackend.h"
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
namespace S3DX
//-----------------------------------------------------------------------------
{
    class S3DX_API Plugin
    {
    public :

        //---------------------------------------------------------------------
        //  Virtual destructor
        //
        virtual                        ~Plugin                      ( ) { }

        //---------------------------------------------------------------------
        //  SDK informations : this method is called by the engine at plugin 
        //  initialization time.
        //
        virtual         uint32          GetSDKVersion               ( ) const = 0 ;

        //---------------------------------------------------------------------
        //  Plugin contents directory : this method is called by the engine at
        //  plugin initialization time.
        //
        virtual         void            SetContentsDirectory        ( const char *_pDirectory ) = 0 ;

        //---------------------------------------------------------------------
        //  AI engine API : this method is called by the engine at plugin 
        //  initialization time.
        //
        virtual         AIEngineAPI    *GetAIEngineAPI              ( ) = 0 ;

        //---------------------------------------------------------------------
        //  AI packages : those method are called by the engine at plugin 
        //  initialization time.
        //
        virtual         uint32          GetAIPackageCount           ( ) const = 0 ;
        virtual const   AIPackage      *GetAIPackageAt              ( uint32 _iIndex ) const = 0 ;

        //---------------------------------------------------------------------
        //  Java Virtual Machine : this method is called by the engine at
        //  plugin initialization time. The value may be NULL, depending on
        //  the operating system. Useful on Android to implement JNI calls.
        //  Available starting from SDK 1.9.0.6.
        //
        virtual         void            SetJavaVM                   ( void *_pJavaVM ) { }

        //---------------------------------------------------------------------
        //  Direct3D Device Interface : this method is called by the engine at
        //  plugin initialization time. The value may be NULL, depending on
        //  the operating system. Useful on Xbox 360 to implement custom rendering
        //  such as fullscreen effects, UI, etc.
        //  Available starting from SDK 1.9.0.9.
        //
        virtual         void            SetDirect3DDevice           ( void *_pD3DDevice ) { }

        //---------------------------------------------------------------------
        //  XAudio2 Interface : this method is called by the engine at plugin 
        //  initialization time. The value may be NULL, depending on the operating 
        //  system. Useful on Xbox 360 to implement custom audio management.
        //  Available starting from SDK 1.9.0.9.
        //
        virtual         void            SetXAudio2                  ( void *_pXAudio2 ) { }

        //---------------------------------------------------------------------
        //  Engine events definition 
        //
        enum EngineEvent
        {
            eEngineEventApplicationStart    = 0x7CBB0AEF,
            eEngineEventApplicationPause    = 0x3458CD8D,
            eEngineEventApplicationResume   = 0x2D9073A7,
            eEngineEventApplicationStop     = 0x1802643E,
            eEngineEventFrameUpdateBegin    = 0x9791C035,
            eEngineEventFrameUpdateEnd      = 0x6A05F39A,
            eEngineEventFrameRenderBegin    = 0x7D99BEB9,
            eEngineEventFrameRenderEnd      = 0x5ECCBEF5
        } ;

        //---------------------------------------------------------------------
        //  Engine events handler : this method is called by the engine when
        //  various events occur (see event codes definition).
        //  Available starting from SDK 1.9.0.9.
        //
        virtual         void            OnEngineEvent               ( uint32 _iEventCode, uint32 _iArgumentCount, AIVariable *_pArguments ) { }

        //---------------------------------------------------------------------
        //  Native Client Module Instance : this method is called by the engine 
        //  at plugin initialization time. The value may be NULL, depending on
        //  the operating system. Useful only on NaCl to implement various things.
        //  Note that this is a pointer to the pp::Instance, not to the PP_Instance.
        //  Available starting from SDK 1.9.1.0.
        //
        virtual         void            SetNaClModuleInstance       ( void *_pInstance ) { }

        //---------------------------------------------------------------------
        //  Audio backends : those method are called by the engine at plugin 
        //  initialization time.
        //  Available starting from SDK 1.9.2.0.
        //
        virtual         uint32          GetAudioBackendCount        ( ) const { return 0 ; }
        virtual         AudioBackend   *GetAudioBackendAt           ( uint32 _iIndex ) { return NULL ; }
    } ;

    //  Plugin entry point function typedef
    //
    typedef Plugin * ( * GetPluginProc ) ( ) ;

    //  Statically linked plugins functions
    //
    extern "C" uint32           GetStaticallyLinkedPluginCount              ( ) ;
    extern "C" Plugin          *GetStaticallyLinkedPluginAt                 ( uint32  _iIndex  ) ;
    extern "C" const char      *GetStaticallyLinkedPluginNameAt             ( uint32  _iIndex  ) ;
    extern "C" bool             RegisterStaticallyLinkedPlugin              ( Plugin *_pPlugin, const char *_pName ) ;

    //  Dynamically linked plugins functions
    //
    extern "C" bool             RegisterDynamicallyLinkedPlugin             ( Plugin *_pPlugin ) ;

    //  Following function must be called by native code when used, and that 
    //  both engine and plug-ins are dynamic libraries, eg. on WinRT. In all 
    //  other cases, calling this function will have no effect.
    //
    extern "C" S3DX_API void    SetRegisterDynamicallyLinkedPluginCallback  ( bool ( * ) ( Plugin * ) ) ; 
}           
//-----------------------------------------------------------------------------
// Macros
//
#ifdef S3DX_DLL
    #define S3DX_DECLARE_PLUGIN( _name_ )                                                   \
        extern "C" S3DX_API S3DX::Plugin *GetPlugin ( ) ;                                   \
        class _name_ : public S3DX::Plugin
#else
    #define S3DX_DECLARE_PLUGIN( _name_ )                                                   \
        class S3DX_API _name_ : public S3DX::Plugin
#endif
//-----------------------------------------------------------------------------
#define S3DX_DECLARE_PLUGIN_INSTANCE( _name_ )                                              \
    private: static _name_ __oInstance ;                                                    \
    public: static inline _name_ *GetInstance ( ) { return &__oInstance ; }                 \
    public: S3DX::uint32 GetSDKVersion ( ) const;
//-----------------------------------------------------------------------------
#ifdef S3DX_DLL
    #define S3DX_IMPLEMENT_PLUGIN( _name_ )                                                 \
        _name_ _name_::__oInstance ;                                                        \
        S3DX::uint32 _name_::GetSDKVersion ( ) const { return S3DX_SDK_VERSION ; }          \
        S3DX::Plugin *GetPlugin ( ) { return _name_::GetInstance ( ) ; }
#else
    #define S3DX_IMPLEMENT_PLUGIN( _name_ )                                                 \
        _name_ _name_::__oInstance ;                                                        \
        S3DX::uint32 _name_::GetSDKVersion ( ) const { return S3DX_SDK_VERSION ; }          \
        extern "C" S3DX_API S3DX::Plugin *_name_##_GetPlugin ( ) { return _name_::GetInstance ( ) ; }
#endif
//-----------------------------------------------------------------------------
#ifdef S3DX_DLL
    #define S3DX_REGISTER_PLUGIN( _name_ )
#else
    #define S3DX_REGISTER_PLUGIN( _name_ ) S3DX::RegisterStaticallyLinkedPlugin ( this, _name_ )
#endif
//-----------------------------------------------------------------------------
#define S3DX_IMPLEMENT_DYNAMICALLY_LINKED_PLUGIN_REGISTRATION_CALLBACK( )                           \
    class S3DXDynamicallyLinkedPluginRegistrationCallbackHelper                                     \
    {                                                                                               \
        private: S3DXDynamicallyLinkedPluginRegistrationCallbackHelper ( )                          \
        {                                                                                           \
            SetRegisterDynamicallyLinkedPluginCallback ( S3DX::RegisterDynamicallyLinkedPlugin ) ;  \
        }                                                                                           \
        private: static S3DXDynamicallyLinkedPluginRegistrationCallbackHelper __oInstance ;         \
    } ;                                                                                             \
    S3DXDynamicallyLinkedPluginRegistrationCallbackHelper                                           \
    S3DXDynamicallyLinkedPluginRegistrationCallbackHelper::__oInstance ;

//-----------------------------------------------------------------------------
#endif
//-----------------------------------------------------------------------------
