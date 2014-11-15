#################################################################
#   ShiVa Extension Plugin Makefile for Wii
#################################################################

RVL_SDK_ROOT     	= 
CW_RVL_SDK_ROOT     = 
TEMP_DIR       		= ../../Temp/Wii
SRCROOT             = ../../Sources
S3DXROOT            = ../../Sources/S3DX
BUILT_PRODUCTS_DIR  = ../../Contents/Wii
PRODUCT_NAME        = Simplex_Noise_Wii.a


#################################################################
SOURCES				= Plugin.cpp noise.cpp 

#################################################################
#  Compiler executables
#
CC      			= "$(CW_RVL_SDK_ROOT)/PowerPC_EABI_TOOLS/Command_Line_Tools/mwcceppc.exe"
CPP     			= "$(CW_RVL_SDK_ROOT)/PowerPC_EABI_TOOLS/Command_Line_Tools/mwcceppc.exe"
AR                  = "$(CW_RVL_SDK_ROOT)/PowerPC_EABI_TOOLS/Command_Line_Tools/mwldeppc.exe"
LD					= "$(CW_RVL_SDK_ROOT)/PowerPC_EABI_TOOLS/Command_Line_Tools/mwldeppc.exe"

####################################################################"
#  Compiler flags
#
USER_INCLUDE_PATH	= 
USER_LIBRARIES		= 
USER_FLAGS			= 
COMMONFLAGS			= -ipa file -O4,p -inline auto -nodefaults -proc gekko -DRVL -align powerpc -enum int -enc SJIS -DRVL_SDK -fp hardware -Cpp_exceptions off -pragma "cats off" \
					  -DTRK_INTEGRATION -DRVL_OS -DEPPC -DGEKKO -DHOLLYWOOD_REV=1 -DBROADWAY_REV=1 -DIOP_REV=1 \
					  -W nofilecaps -W nosysfilecaps -D__WII__ -D_GNU_SOURCE -DHAVE_STDINT_H \
					  $(USER_FLAGS) \
					  -gccinc \
					  -I$(SRCROOT) -I$(SRCROOT)/Wii -I$(S3DXROOT) \
					  -I"$(RVL_SDK_ROOT)/include" \
                      -ir "$(CW_RVL_SDK_ROOT)/PowerPC_EABI_Support/Msl/Msl_c"     	\
                      -ir "$(CW_RVL_SDK_ROOT)/PowerPC_EABI_Support/Msl/Msl_c++"   	\
                      -I"$(CW_RVL_SDK_ROOT)/PowerPC_EABI_Support/Runtime/Inc"		\
					  $(USER_INCLUDE_PATH)
CFLAGS      		= 
CPPFLAGS    		= 
LDFLAGS    			= 
ARFLAGS    			= -nodefaults -proc gekko -xm l $(USER_LIBRARIES)

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
	$(AR) $(ARFLAGS) -o $(PRODUCT_ABS) $(OBJECTS_ABS)

clean:
	rm -f $(PRODUCT_ABS) $(OBJECTS_ABS)

####################################################################"
