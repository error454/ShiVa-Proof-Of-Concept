#################################################################
#   ShiVa Extension Plugin Makefile for NACL
#################################################################



#################################################################
#  Platform detection
# 
ifeq ($(origin OS), undefined)
  ifeq ($(shell uname -s), Darwin)
    OS=Darwin
  else
    OS=$(shell uname -o)
  endif
endif

ifeq ($(OS), $(filter $(OS), Windows_NT Cygwin))
  PLATFORM = win
  TARGET = x86
endif
ifeq ($(OS), $(filter $(OS), Darwin MACOS))
  PLATFORM = mac
  TARGET = x86
endif

# Look for 'Linux' in the $(OS) string.  $(OS) is assumed to be a Linux
# variant if the result of $(findstring) is not empty.
ifneq (, $(findstring Linux, $(OS)))
  PLATFORM = linux
  TARGET = x86
endif

#################################################################
NACL_SDK_ROOT       = /cygdrive/C/nacl_sdk/pepper_16
NACL_TOOLCHAIN_DIR  = toolchain/$(PLATFORM)_$(TARGET)_newlib
TEMP_DIR_x86_32     = ../../Temp/NaCl/x86_32
TEMP_DIR_x86_64     = ../../Temp/NaCl/x86_64
SRCROOT             = ../../Sources
S3DXROOT            = ../../Sources/S3DX
BUILT_PRODUCTS_DIR  = ../../Contents/NaCl
PRODUCT_NAME_x86_32 = Simplex_Noise_NaCl_x86_32.a
PRODUCT_NAME_x86_64 = Simplex_Noise_NaCl_x86_64.a


#################################################################
SOURCES				= Plugin.cpp noise.cpp 

#################################################################
#  Compiler executables
#
CC_x86_32      	= $(NACL_SDK_ROOT)/$(NACL_TOOLCHAIN_DIR)/bin/i686-nacl-gcc
CPP_x86_32     	= $(NACL_SDK_ROOT)/$(NACL_TOOLCHAIN_DIR)/bin/i686-nacl-g++
AR_x86_32      	= $(NACL_SDK_ROOT)/$(NACL_TOOLCHAIN_DIR)/bin/i686-nacl-ar

CC_x86_64      	= $(NACL_SDK_ROOT)/$(NACL_TOOLCHAIN_DIR)/bin/x86_64-nacl-gcc
CPP_x86_64     	= $(NACL_SDK_ROOT)/$(NACL_TOOLCHAIN_DIR)/bin/x86_64-nacl-g++
AR_x86_64      	= $(NACL_SDK_ROOT)/$(NACL_TOOLCHAIN_DIR)/bin/x86_64-nacl-ar

####################################################################"
#  Compiler flags
#
USER_INCLUDE_PATH	= 
USER_LIBRARIES		= 
USER_FLAGS			= 
COMMONFLAGS			= -DNDEBUG -O2 -mfpmath=sse -msse -funroll-loops -fomit-frame-pointer -Wno-unused -Wno-long-long -pthread -DXP_UNIX -fsigned-char -DHAVE_STDINT_H -DHAVE_GLES2 -DHAVE_PPAPI -D__NACL__ $(USER_FLAGS) -I$(SRCROOT)/NACL -I$(S3DXROOT) -I$(NACL_SDK_ROOT)/x86_64-nacl/include $(USER_INCLUDE_PATH)
CFLAGS_x86_32      	= -m32 $(COMMONFLAGS) 
CFLAGS_x86_64      	= -m64 $(COMMONFLAGS) 
CPPFLAGS_x86_32   	= -m32 $(COMMONFLAGS) 
CPPFLAGS_x86_64   	= -m64 $(COMMONFLAGS) 
LDFLAGS_WRAPPED				= -Xlinker --wrap -Xlinker read			\
							  -Xlinker --wrap -Xlinker write		\
							  -Xlinker --wrap -Xlinker open			\
							  -Xlinker --wrap -Xlinker close		\
							  -Xlinker --wrap -Xlinker lseek		
LDFLAGS_COMMON				= $(LDFLAGS_WRAPPED) -lppapi -lppapi_cpp -lppruntime -lnosys $(USER_LIBRARIES)
LDFLAGS_x86_32				= $(LDFLAGS_COMMON)  -melf_nacl
LDFLAGS_x86_64				= $(LDFLAGS_COMMON)  -melf64_nacl

ARFLAGS    			= $(USER_LIBRARIES)

####################################################################"
#  Objects
#
OBJECTS  			= \
	$(patsubst %.c,%.o,$(filter %.c,$(SOURCES))) \
	$(patsubst %.cc,%.o,$(filter %.cc,$(SOURCES))) \
	$(patsubst %.cpp,%.o,$(filter %.cpp,$(SOURCES)))

OBJECTS_ABS_x86_32 = $(addprefix $(TEMP_DIR_x86_32)/,$(OBJECTS))
OBJECTS_ABS_x86_64 = $(addprefix $(TEMP_DIR_x86_64)/,$(OBJECTS))
PRODUCT_ABS_x86_32 = $(BUILT_PRODUCTS_DIR)/$(PRODUCT_NAME_x86_32)
PRODUCT_ABS_x86_64 = $(BUILT_PRODUCTS_DIR)/$(PRODUCT_NAME_x86_64)

####################################################################"
#  Rules
#

$(TEMP_DIR_x86_32)/%.o: $(SRCROOT)/%.c
	mkdir -p `dirname $@`
	$(CC_x86_32) $(COMMONFLAGS) $(CFLAGS_x86_32) -c $< -o $@

$(TEMP_DIR_x86_32)/%.o: $(SRCROOT)/%.cpp
	mkdir -p `dirname $@`
	$(CPP_x86_32) $(COMMONFLAGS) $(CPPFLAGS_x86_32) -c $< -o $@

$(TEMP_DIR_x86_64)/%.o: $(SRCROOT)/%.c
	mkdir -p `dirname $@`
	$(CC_x86_64) $(COMMONFLAGS) $(CFLAGS_x86_64) -c $< -o $@

$(TEMP_DIR_x86_64)/%.o: $(SRCROOT)/%.cpp
	mkdir -p `dirname $@`
	$(CPP_x86_64) $(COMMONFLAGS) $(CPPFLAGS_x86_64) -c $< -o $@

####################################################################"
#  Targets
#
all: $(PRODUCT_ABS_x86_32) $(PRODUCT_ABS_x86_64) 

$(PRODUCT_ABS_x86_32): $(OBJECTS_ABS_x86_32)
	mkdir -p $(BUILT_PRODUCTS_DIR)
	$(AR_x86_32) rcs $(PRODUCT_ABS_x86_32) $(OBJECTS_ABS_x86_32) $(ARFLAGS) 
	
$(PRODUCT_ABS_x86_64): $(OBJECTS_ABS_x86_64)
	mkdir -p $(BUILT_PRODUCTS_DIR)
	$(AR_x86_64) rcs $(PRODUCT_ABS_x86_64) $(OBJECTS_ABS_x86_64) $(ARFLAGS) 

clean:
	rm -f $(OBJECTS_ABS_x86_32)
	rm -f $(OBJECTS_ABS_x86_64)
	rm -f $(PRODUCT_ABS_x86_32) 
	rm -f $(PRODUCT_ABS_x86_64) 

####################################################################"
