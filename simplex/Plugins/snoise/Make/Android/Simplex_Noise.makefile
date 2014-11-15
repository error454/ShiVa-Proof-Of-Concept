#################################################################
#   ShiVa Extension Plugin Makefile for Android
#################################################################

ANDROID_NDK_ROOT    = C:/android-ndk-r5
TEMP_DIR       		= ../../Temp/Android
SRCROOT             = ../../Sources
S3DXROOT            = ../../Sources/S3DX
BUILT_PRODUCTS_DIR  = ../../Contents/Android
PRODUCT_NAME        = Simplex_Noise_Android.a

#################################################################
#  User data
#
USER_INCLUDE_PATH	= 
USER_LIBRARIES		= 
USER_FLAGS			= 

#################################################################
SOURCES				= Plugin.cpp noise.cpp 

#################################################################
#  Compiler executables
#
CC      			= "$(ANDROID_NDK_ROOT)/toolchains/arm-linux-androideabi-4.4.3/prebuilt/windows/bin/arm-linux-androideabi-gcc"
CPP     			= "$(ANDROID_NDK_ROOT)/toolchains/arm-linux-androideabi-4.4.3/prebuilt/windows/bin/arm-linux-androideabi-g++"
AR      			= "$(ANDROID_NDK_ROOT)/toolchains/arm-linux-androideabi-4.4.3/prebuilt/windows/bin/arm-linux-androideabi-ar"

####################################################################"
#  Includes
#
SYSROOT         	= $(ANDROID_NDK_ROOT)/platforms/android-5/arch-arm
SYSTEM_INCLUDES		= 

####################################################################"
#  Compiler flags
#
CFLAGS_Arch 		= -march=armv5te -msoft-float
CFLAGS_Common		= --sysroot="$(SYSROOT)" $(CFLAGS_Arch) -Os -Wno-unknown-pragmas -fsigned-char -fno-strict-aliasing -fno-short-enums -fno-exceptions -D__ANDROID__ -DANDROID_NDK -DANDROID -DRELEASE -D_GNU_SOURCE -DHAVE_STDINT_H
CFLAGS      		= $(CFLAGS_Common) $(SYSTEM_INCLUDES) -I"$(SRCROOT)" -I$(SRCROOT)/Android -I$(S3DXROOT) -I"$(SYSROOT)/usr/bin"
CPPFLAGS    		= -fno-rtti 


####################################################################"
#  Objects
#
OBJECTS  			= \
	$(patsubst %.c,%.o,$(filter %.c,$(SOURCES))) \
	$(patsubst %.cc,%.o,$(filter %.cc,$(SOURCES))) \
	$(patsubst %.cpp,%.o,$(filter %.cpp,$(SOURCES)))

OBJECTS_ABS			= $(addprefix $(TEMP_DIR)/,$(OBJECTS))
PRODUCT_ABS         = $(BUILT_PRODUCTS_DIR)/$(PRODUCT_NAME)

####################################################################"
#  Rules
#

$(TEMP_DIR)/%.o: $(SRCROOT)/%.c
	mkdir -p `dirname $@`
	$(CC) $(CFLAGS) -c $< -o $@

$(TEMP_DIR)/%.o: $(SRCROOT)/%.cpp
	mkdir -p `dirname $@`
	$(CPP) $(CFLAGS) $(CPPFLAGS) -c $< -o $@

####################################################################"
#  Targets
#
all: $(PRODUCT_ABS) 

$(PRODUCT_ABS): $(OBJECTS_ABS)
	mkdir -p $(BUILT_PRODUCTS_DIR)
	$(AR) rcs $(PRODUCT_ABS) $(OBJECTS_ABS)

clean:
	rm -f $(PRODUCT_ABS) $(OBJECTS_ABS)

####################################################################"
