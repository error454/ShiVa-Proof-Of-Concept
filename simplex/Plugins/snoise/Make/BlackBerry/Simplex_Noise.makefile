#################################################################
#   ShiVa Extension Plugin Makefile for BlackBerry
#################################################################

BLACKBERRY_NDK_ROOT = C:/bbndk-1.0
TEMP_DIR       		= ../../Temp/BlackBerry
SRCROOT             = ../../Sources
S3DXROOT            = ../../Sources/S3DX
BUILT_PRODUCTS_DIR  = ../../Contents/BlackBerry
PRODUCT_NAME        = Simplex_Noise_BlackBerry.a

#################################################################

export QNX_TARGET			= $(BLACKBERRY_NDK_ROOT)/target/qnx6
export QNX_TARGET_OVERRIDE	= $(BLACKBERRY_NDK_ROOT)/target/target-override
export QNX_HOST				= $(BLACKBERRY_NDK_ROOT)/host/win32/x86

#################################################################
SOURCES				= Plugin.cpp noise.cpp 

#################################################################
#  Compiler executables
#
CC      			= $(BLACKBERRY_NDK_ROOT)/host/win32/x86/usr/bin/qcc -Vgcc_ntoarmv7
CPP     			= $(BLACKBERRY_NDK_ROOT)/host/win32/x86/usr/bin/qcc -Vgcc_ntoarmv7
AR                  = $(BLACKBERRY_NDK_ROOT)/host/win32/x86/usr/bin/ntoarmv7-ar-2.19.exe
LD					= $(CPP)

####################################################################"
#  Compiler flags
#
USER_INCLUDE_PATH	= 
USER_LIBRARIES		= 
USER_FLAGS			= 
COMMONFLAGS			= -DNDEBUG -O2 -g0 -D__BLACKBERRY__ -D_QNX_SOURCE -DHAVE_STDINT_H -DHAVE_ALLOCA_H -W -fno-strict-aliasing -fstack-protector-all -D_FORTIFY_SOURCE=2 -EL -DVARIANT_v7 -DVARIANT_le -DBUILDENV_qss $(USER_FLAGS) -I$(SRCROOT) -I$(SRCROOT)/BlackBerry -I$(S3DXROOT) -I$(BLACKBERRY_NDK_ROOT)/target/qnx6/usr/include -I$(BLACKBERRY_NDK_ROOT)/target/qnx6/usr/include/cpp/c -I$(BLACKBERRY_NDK_ROOT)/target/target-override/usr/include $(USER_INCLUDE_PATH)
CFLAGS      		= $(COMMONFLAGS)
CPPFLAGS    		= $(COMMONFLAGS) -fno-rtti -fno-exceptions
LDFLAGS    			= $(USER_LIBRARIES)
ARFLAGS    			= $(USER_LIBRARIES)

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
	$(CC) $(COMMONFLAGS) $(CFLAGS) -c $< -o $@

$(TEMP_DIR)/%.o: $(SRCROOT)/%.cpp
	mkdir -p `dirname $@`
	$(CPP) $(COMMONFLAGS) $(CPPFLAGS) -c $< -o $@

####################################################################"
#  Targets
#
all: $(PRODUCT_ABS) 

$(PRODUCT_ABS): $(OBJECTS_ABS)
	mkdir -p $(BUILT_PRODUCTS_DIR)
	$(AR) rcs $(PRODUCT_ABS) $(OBJECTS_ABS) $(ARFLAGS) 

clean:
	rm -f $(PRODUCT_ABS) $(OBJECTS_ABS)

####################################################################"
