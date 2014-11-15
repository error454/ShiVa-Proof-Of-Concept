#################################################################
#   ShiVa Extension Plugin Makefile for PS3
#################################################################

CELL_SDK_ROOT       = /usr/local/cell
TEMP_DIR       		= ../../Temp/PS3
SRCROOT             = ../../Sources
S3DXROOT            = ../../Sources/S3DX
BUILT_PRODUCTS_DIR  = ../../Contents/PS3
PRODUCT_NAME        = Simplex_Noise_PS3.a


#################################################################
SOURCES				= Plugin.cpp noise.cpp 

#################################################################
#  Compiler executables
#
CC      			= "$(CELL_SDK_ROOT)/host-win32/ppu/bin/ppu-lv2-gcc.exe"
CPP     			= "$(CELL_SDK_ROOT)/host-win32/ppu/bin/ppu-lv2-g++.exe"
AR                  = "$(CELL_SDK_ROOT)/host-win32/ppu/bin/ppu-lv2-ar.exe"
LD					= $(CPP)

####################################################################"
#  Compiler flags
#
USER_INCLUDE_PATH	= 
USER_LIBRARIES		= 
USER_FLAGS			= 
COMMONFLAGS			= -Os -g0 -Wno-unknown-pragmas -fsigned-char -fno-strict-aliasing -D__PS3__ -D_GNU_SOURCE -DHAVE_STDINT_H $(USER_FLAGS) -I$(SRCROOT) -I$(SRCROOT)/PS3 -I$(S3DXROOT) -I$(CELL_SDK)/target/ppu/include $(USER_INCLUDE_PATH)
CFLAGS      		= -std=c99
CPPFLAGS    		= -std=c++98 -fno-rtti -fno-exceptions
#CPPFLAGS    		= -std=c++98
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
