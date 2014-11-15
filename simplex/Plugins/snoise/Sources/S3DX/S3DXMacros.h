//-----------------------------------------------------------------------------
#ifndef __S3DXMacros_h__
#define __S3DXMacros_h__
//-----------------------------------------------------------------------------
#include "S3DXTypes.h"
//-----------------------------------------------------------------------------

#ifndef S3DX_FOURCC
#define S3DX_FOURCC(ch0, ch1, ch2, ch3)                                                 \
    ((S3DX::uint32)(S3DX::uint8)(ch0)        | ((S3DX::uint32)(S3DX::uint8)(ch1) << 8) |\
    ((S3DX::uint32)(S3DX::uint8)(ch2) << 16) | ((S3DX::uint32)(S3DX::uint8)(ch3) << 24 ))
#endif

#define S3DX_DECLARE_VIN_01( _0_                                                                                                                                                                                  ) S3DX::AIVariable vIn[1]  ; vIn[0] = (_0_) 
#define S3DX_DECLARE_VIN_02( _0_, _1_                                                                                                                                                                             ) S3DX::AIVariable vIn[2]  ; vIn[0] = (_0_) ; vIn[1] = (_1_) 
#define S3DX_DECLARE_VIN_03( _0_, _1_, _2_                                                                                                                                                                        ) S3DX::AIVariable vIn[3]  ; vIn[0] = (_0_) ; vIn[1] = (_1_) ; vIn[2] = (_2_) 
#define S3DX_DECLARE_VIN_04( _0_, _1_, _2_, _3_                                                                                                                                                                   ) S3DX::AIVariable vIn[4]  ; vIn[0] = (_0_) ; vIn[1] = (_1_) ; vIn[2] = (_2_) ; vIn[3] = (_3_) 
#define S3DX_DECLARE_VIN_05( _0_, _1_, _2_, _3_, _4_                                                                                                                                                              ) S3DX::AIVariable vIn[5]  ; vIn[0] = (_0_) ; vIn[1] = (_1_) ; vIn[2] = (_2_) ; vIn[3] = (_3_) ; vIn[4] = (_4_)
#define S3DX_DECLARE_VIN_06( _0_, _1_, _2_, _3_, _4_, _5_                                                                                                                                                         ) S3DX::AIVariable vIn[6]  ; vIn[0] = (_0_) ; vIn[1] = (_1_) ; vIn[2] = (_2_) ; vIn[3] = (_3_) ; vIn[4] = (_4_) ; vIn[5] = (_5_)
#define S3DX_DECLARE_VIN_07( _0_, _1_, _2_, _3_, _4_, _5_, _6_                                                                                                                                                    ) S3DX::AIVariable vIn[7]  ; vIn[0] = (_0_) ; vIn[1] = (_1_) ; vIn[2] = (_2_) ; vIn[3] = (_3_) ; vIn[4] = (_4_) ; vIn[5] = (_5_) ; vIn[6] = (_6_)
#define S3DX_DECLARE_VIN_08( _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_                                                                                                                                               ) S3DX::AIVariable vIn[8]  ; vIn[0] = (_0_) ; vIn[1] = (_1_) ; vIn[2] = (_2_) ; vIn[3] = (_3_) ; vIn[4] = (_4_) ; vIn[5] = (_5_) ; vIn[6] = (_6_) ; vIn[7] = (_7_)
#define S3DX_DECLARE_VIN_09( _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_                                                                                                                                          ) S3DX::AIVariable vIn[9]  ; vIn[0] = (_0_) ; vIn[1] = (_1_) ; vIn[2] = (_2_) ; vIn[3] = (_3_) ; vIn[4] = (_4_) ; vIn[5] = (_5_) ; vIn[6] = (_6_) ; vIn[7] = (_7_) ; vIn[8] = (_8_)
#define S3DX_DECLARE_VIN_10( _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_                                                                                                                                     ) S3DX::AIVariable vIn[10] ; vIn[0] = (_0_) ; vIn[1] = (_1_) ; vIn[2] = (_2_) ; vIn[3] = (_3_) ; vIn[4] = (_4_) ; vIn[5] = (_5_) ; vIn[6] = (_6_) ; vIn[7] = (_7_) ; vIn[8] = (_8_) ; vIn[9] = (_9_)
#define S3DX_DECLARE_VIN_11( _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_, _10_                                                                                                                               ) S3DX::AIVariable vIn[11] ; vIn[0] = (_0_) ; vIn[1] = (_1_) ; vIn[2] = (_2_) ; vIn[3] = (_3_) ; vIn[4] = (_4_) ; vIn[5] = (_5_) ; vIn[6] = (_6_) ; vIn[7] = (_7_) ; vIn[8] = (_8_) ; vIn[9] = (_9_) ; vIn[10] = (_10_)
#define S3DX_DECLARE_VIN_12( _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_, _10_, _11_                                                                                                                         ) S3DX::AIVariable vIn[12] ; vIn[0] = (_0_) ; vIn[1] = (_1_) ; vIn[2] = (_2_) ; vIn[3] = (_3_) ; vIn[4] = (_4_) ; vIn[5] = (_5_) ; vIn[6] = (_6_) ; vIn[7] = (_7_) ; vIn[8] = (_8_) ; vIn[9] = (_9_) ; vIn[10] = (_10_) ; vIn[11] = (_11_)
#define S3DX_DECLARE_VIN_13( _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_, _10_, _11_, _12_                                                                                                                   ) S3DX::AIVariable vIn[13] ; vIn[0] = (_0_) ; vIn[1] = (_1_) ; vIn[2] = (_2_) ; vIn[3] = (_3_) ; vIn[4] = (_4_) ; vIn[5] = (_5_) ; vIn[6] = (_6_) ; vIn[7] = (_7_) ; vIn[8] = (_8_) ; vIn[9] = (_9_) ; vIn[10] = (_10_) ; vIn[11] = (_11_) ; vIn[12] = (_12_)
#define S3DX_DECLARE_VIN_14( _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_, _10_, _11_, _12_, _13_                                                                                                             ) S3DX::AIVariable vIn[14] ; vIn[0] = (_0_) ; vIn[1] = (_1_) ; vIn[2] = (_2_) ; vIn[3] = (_3_) ; vIn[4] = (_4_) ; vIn[5] = (_5_) ; vIn[6] = (_6_) ; vIn[7] = (_7_) ; vIn[8] = (_8_) ; vIn[9] = (_9_) ; vIn[10] = (_10_) ; vIn[11] = (_11_) ; vIn[12] = (_12_) ; vIn[13] = (_13_)
#define S3DX_DECLARE_VIN_15( _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_, _10_, _11_, _12_, _13_, _14_                                                                                                       ) S3DX::AIVariable vIn[15] ; vIn[0] = (_0_) ; vIn[1] = (_1_) ; vIn[2] = (_2_) ; vIn[3] = (_3_) ; vIn[4] = (_4_) ; vIn[5] = (_5_) ; vIn[6] = (_6_) ; vIn[7] = (_7_) ; vIn[8] = (_8_) ; vIn[9] = (_9_) ; vIn[10] = (_10_) ; vIn[11] = (_11_) ; vIn[12] = (_12_) ; vIn[13] = (_13_) ; vIn[14] = (_14_)
#define S3DX_DECLARE_VIN_16( _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_, _10_, _11_, _12_, _13_, _14_, _15_                                                                                                 ) S3DX::AIVariable vIn[16] ; vIn[0] = (_0_) ; vIn[1] = (_1_) ; vIn[2] = (_2_) ; vIn[3] = (_3_) ; vIn[4] = (_4_) ; vIn[5] = (_5_) ; vIn[6] = (_6_) ; vIn[7] = (_7_) ; vIn[8] = (_8_) ; vIn[9] = (_9_) ; vIn[10] = (_10_) ; vIn[11] = (_11_) ; vIn[12] = (_12_) ; vIn[13] = (_13_) ; vIn[14] = (_14_) ; vIn[15] = (_15_)
#define S3DX_DECLARE_VIN_17( _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_, _10_, _11_, _12_, _13_, _14_, _15_, _16_                                                                                           ) S3DX::AIVariable vIn[17] ; vIn[0] = (_0_) ; vIn[1] = (_1_) ; vIn[2] = (_2_) ; vIn[3] = (_3_) ; vIn[4] = (_4_) ; vIn[5] = (_5_) ; vIn[6] = (_6_) ; vIn[7] = (_7_) ; vIn[8] = (_8_) ; vIn[9] = (_9_) ; vIn[10] = (_10_) ; vIn[11] = (_11_) ; vIn[12] = (_12_) ; vIn[13] = (_13_) ; vIn[14] = (_14_) ; vIn[15] = (_15_) ; vIn[16] = (_16_)
#define S3DX_DECLARE_VIN_18( _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_, _10_, _11_, _12_, _13_, _14_, _15_, _16_, _17_                                                                                     ) S3DX::AIVariable vIn[18] ; vIn[0] = (_0_) ; vIn[1] = (_1_) ; vIn[2] = (_2_) ; vIn[3] = (_3_) ; vIn[4] = (_4_) ; vIn[5] = (_5_) ; vIn[6] = (_6_) ; vIn[7] = (_7_) ; vIn[8] = (_8_) ; vIn[9] = (_9_) ; vIn[10] = (_10_) ; vIn[11] = (_11_) ; vIn[12] = (_12_) ; vIn[13] = (_13_) ; vIn[14] = (_14_) ; vIn[15] = (_15_) ; vIn[16] = (_16_) ; vIn[17] = (_17_)
#define S3DX_DECLARE_VIN_19( _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_, _10_, _11_, _12_, _13_, _14_, _15_, _16_, _17_, _18_                                                                               ) S3DX::AIVariable vIn[19] ; vIn[0] = (_0_) ; vIn[1] = (_1_) ; vIn[2] = (_2_) ; vIn[3] = (_3_) ; vIn[4] = (_4_) ; vIn[5] = (_5_) ; vIn[6] = (_6_) ; vIn[7] = (_7_) ; vIn[8] = (_8_) ; vIn[9] = (_9_) ; vIn[10] = (_10_) ; vIn[11] = (_11_) ; vIn[12] = (_12_) ; vIn[13] = (_13_) ; vIn[14] = (_14_) ; vIn[15] = (_15_) ; vIn[16] = (_16_) ; vIn[17] = (_17_) ; vIn[18] = (_18_)
#define S3DX_DECLARE_VIN_20( _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_, _10_, _11_, _12_, _13_, _14_, _15_, _16_, _17_, _18_, _19_                                                                         ) S3DX::AIVariable vIn[20] ; vIn[0] = (_0_) ; vIn[1] = (_1_) ; vIn[2] = (_2_) ; vIn[3] = (_3_) ; vIn[4] = (_4_) ; vIn[5] = (_5_) ; vIn[6] = (_6_) ; vIn[7] = (_7_) ; vIn[8] = (_8_) ; vIn[9] = (_9_) ; vIn[10] = (_10_) ; vIn[11] = (_11_) ; vIn[12] = (_12_) ; vIn[13] = (_13_) ; vIn[14] = (_14_) ; vIn[15] = (_15_) ; vIn[16] = (_16_) ; vIn[17] = (_17_) ; vIn[18] = (_18_) ; vIn[19] = (_19_)
#define S3DX_DECLARE_VIN_21( _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_, _10_, _11_, _12_, _13_, _14_, _15_, _16_, _17_, _18_, _19_, _20_                                                                   ) S3DX::AIVariable vIn[21] ; vIn[0] = (_0_) ; vIn[1] = (_1_) ; vIn[2] = (_2_) ; vIn[3] = (_3_) ; vIn[4] = (_4_) ; vIn[5] = (_5_) ; vIn[6] = (_6_) ; vIn[7] = (_7_) ; vIn[8] = (_8_) ; vIn[9] = (_9_) ; vIn[10] = (_10_) ; vIn[11] = (_11_) ; vIn[12] = (_12_) ; vIn[13] = (_13_) ; vIn[14] = (_14_) ; vIn[15] = (_15_) ; vIn[16] = (_16_) ; vIn[17] = (_17_) ; vIn[18] = (_18_) ; vIn[19] = (_19_) ; vIn[20] = (_20_)
#define S3DX_DECLARE_VIN_22( _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_, _10_, _11_, _12_, _13_, _14_, _15_, _16_, _17_, _18_, _19_, _20_, _21_                                                             ) S3DX::AIVariable vIn[22] ; vIn[0] = (_0_) ; vIn[1] = (_1_) ; vIn[2] = (_2_) ; vIn[3] = (_3_) ; vIn[4] = (_4_) ; vIn[5] = (_5_) ; vIn[6] = (_6_) ; vIn[7] = (_7_) ; vIn[8] = (_8_) ; vIn[9] = (_9_) ; vIn[10] = (_10_) ; vIn[11] = (_11_) ; vIn[12] = (_12_) ; vIn[13] = (_13_) ; vIn[14] = (_14_) ; vIn[15] = (_15_) ; vIn[16] = (_16_) ; vIn[17] = (_17_) ; vIn[18] = (_18_) ; vIn[19] = (_19_) ; vIn[20] = (_20_) ; vIn[21] = (_21_)
#define S3DX_DECLARE_VIN_23( _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_, _10_, _11_, _12_, _13_, _14_, _15_, _16_, _17_, _18_, _19_, _20_, _21_, _22_                                                       ) S3DX::AIVariable vIn[23] ; vIn[0] = (_0_) ; vIn[1] = (_1_) ; vIn[2] = (_2_) ; vIn[3] = (_3_) ; vIn[4] = (_4_) ; vIn[5] = (_5_) ; vIn[6] = (_6_) ; vIn[7] = (_7_) ; vIn[8] = (_8_) ; vIn[9] = (_9_) ; vIn[10] = (_10_) ; vIn[11] = (_11_) ; vIn[12] = (_12_) ; vIn[13] = (_13_) ; vIn[14] = (_14_) ; vIn[15] = (_15_) ; vIn[16] = (_16_) ; vIn[17] = (_17_) ; vIn[18] = (_18_) ; vIn[19] = (_19_) ; vIn[20] = (_20_) ; vIn[21] = (_21_) ; vIn[22] = (_22_)
#define S3DX_DECLARE_VIN_24( _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_, _10_, _11_, _12_, _13_, _14_, _15_, _16_, _17_, _18_, _19_, _20_, _21_, _22_, _23_                                                 ) S3DX::AIVariable vIn[24] ; vIn[0] = (_0_) ; vIn[1] = (_1_) ; vIn[2] = (_2_) ; vIn[3] = (_3_) ; vIn[4] = (_4_) ; vIn[5] = (_5_) ; vIn[6] = (_6_) ; vIn[7] = (_7_) ; vIn[8] = (_8_) ; vIn[9] = (_9_) ; vIn[10] = (_10_) ; vIn[11] = (_11_) ; vIn[12] = (_12_) ; vIn[13] = (_13_) ; vIn[14] = (_14_) ; vIn[15] = (_15_) ; vIn[16] = (_16_) ; vIn[17] = (_17_) ; vIn[18] = (_18_) ; vIn[19] = (_19_) ; vIn[20] = (_20_) ; vIn[21] = (_21_) ; vIn[22] = (_22_) ; vIn[23] = (_23_)
#define S3DX_DECLARE_VIN_25( _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_, _10_, _11_, _12_, _13_, _14_, _15_, _16_, _17_, _18_, _19_, _20_, _21_, _22_, _23_, _24_                                           ) S3DX::AIVariable vIn[25] ; vIn[0] = (_0_) ; vIn[1] = (_1_) ; vIn[2] = (_2_) ; vIn[3] = (_3_) ; vIn[4] = (_4_) ; vIn[5] = (_5_) ; vIn[6] = (_6_) ; vIn[7] = (_7_) ; vIn[8] = (_8_) ; vIn[9] = (_9_) ; vIn[10] = (_10_) ; vIn[11] = (_11_) ; vIn[12] = (_12_) ; vIn[13] = (_13_) ; vIn[14] = (_14_) ; vIn[15] = (_15_) ; vIn[16] = (_16_) ; vIn[17] = (_17_) ; vIn[18] = (_18_) ; vIn[19] = (_19_) ; vIn[20] = (_20_) ; vIn[21] = (_21_) ; vIn[22] = (_22_) ; vIn[23] = (_23_) ; vIn[24] = (_24_)
#define S3DX_DECLARE_VIN_26( _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_, _10_, _11_, _12_, _13_, _14_, _15_, _16_, _17_, _18_, _19_, _20_, _21_, _22_, _23_, _24_, _25_                                     ) S3DX::AIVariable vIn[26] ; vIn[0] = (_0_) ; vIn[1] = (_1_) ; vIn[2] = (_2_) ; vIn[3] = (_3_) ; vIn[4] = (_4_) ; vIn[5] = (_5_) ; vIn[6] = (_6_) ; vIn[7] = (_7_) ; vIn[8] = (_8_) ; vIn[9] = (_9_) ; vIn[10] = (_10_) ; vIn[11] = (_11_) ; vIn[12] = (_12_) ; vIn[13] = (_13_) ; vIn[14] = (_14_) ; vIn[15] = (_15_) ; vIn[16] = (_16_) ; vIn[17] = (_17_) ; vIn[18] = (_18_) ; vIn[19] = (_19_) ; vIn[20] = (_20_) ; vIn[21] = (_21_) ; vIn[22] = (_22_) ; vIn[23] = (_23_) ; vIn[24] = (_24_) ; vIn[25] = (_25_)
#define S3DX_DECLARE_VIN_27( _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_, _10_, _11_, _12_, _13_, _14_, _15_, _16_, _17_, _18_, _19_, _20_, _21_, _22_, _23_, _24_, _25_, _26_                               ) S3DX::AIVariable vIn[27] ; vIn[0] = (_0_) ; vIn[1] = (_1_) ; vIn[2] = (_2_) ; vIn[3] = (_3_) ; vIn[4] = (_4_) ; vIn[5] = (_5_) ; vIn[6] = (_6_) ; vIn[7] = (_7_) ; vIn[8] = (_8_) ; vIn[9] = (_9_) ; vIn[10] = (_10_) ; vIn[11] = (_11_) ; vIn[12] = (_12_) ; vIn[13] = (_13_) ; vIn[14] = (_14_) ; vIn[15] = (_15_) ; vIn[16] = (_16_) ; vIn[17] = (_17_) ; vIn[18] = (_18_) ; vIn[19] = (_19_) ; vIn[20] = (_20_) ; vIn[21] = (_21_) ; vIn[22] = (_22_) ; vIn[23] = (_23_) ; vIn[24] = (_24_) ; vIn[25] = (_25_) ; vIn[26] = (_26_)
#define S3DX_DECLARE_VIN_28( _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_, _10_, _11_, _12_, _13_, _14_, _15_, _16_, _17_, _18_, _19_, _20_, _21_, _22_, _23_, _24_, _25_, _26_, _27_                         ) S3DX::AIVariable vIn[28] ; vIn[0] = (_0_) ; vIn[1] = (_1_) ; vIn[2] = (_2_) ; vIn[3] = (_3_) ; vIn[4] = (_4_) ; vIn[5] = (_5_) ; vIn[6] = (_6_) ; vIn[7] = (_7_) ; vIn[8] = (_8_) ; vIn[9] = (_9_) ; vIn[10] = (_10_) ; vIn[11] = (_11_) ; vIn[12] = (_12_) ; vIn[13] = (_13_) ; vIn[14] = (_14_) ; vIn[15] = (_15_) ; vIn[16] = (_16_) ; vIn[17] = (_17_) ; vIn[18] = (_18_) ; vIn[19] = (_19_) ; vIn[20] = (_20_) ; vIn[21] = (_21_) ; vIn[22] = (_22_) ; vIn[23] = (_23_) ; vIn[24] = (_24_) ; vIn[25] = (_25_) ; vIn[26] = (_26_) ; vIn[27] = (_27_)
#define S3DX_DECLARE_VIN_29( _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_, _10_, _11_, _12_, _13_, _14_, _15_, _16_, _17_, _18_, _19_, _20_, _21_, _22_, _23_, _24_, _25_, _26_, _27_, _28_                   ) S3DX::AIVariable vIn[29] ; vIn[0] = (_0_) ; vIn[1] = (_1_) ; vIn[2] = (_2_) ; vIn[3] = (_3_) ; vIn[4] = (_4_) ; vIn[5] = (_5_) ; vIn[6] = (_6_) ; vIn[7] = (_7_) ; vIn[8] = (_8_) ; vIn[9] = (_9_) ; vIn[10] = (_10_) ; vIn[11] = (_11_) ; vIn[12] = (_12_) ; vIn[13] = (_13_) ; vIn[14] = (_14_) ; vIn[15] = (_15_) ; vIn[16] = (_16_) ; vIn[17] = (_17_) ; vIn[18] = (_18_) ; vIn[19] = (_19_) ; vIn[20] = (_20_) ; vIn[21] = (_21_) ; vIn[22] = (_22_) ; vIn[23] = (_23_) ; vIn[24] = (_24_) ; vIn[25] = (_25_) ; vIn[26] = (_26_) ; vIn[27] = (_27_) ; vIn[28] = (_28_)
#define S3DX_DECLARE_VIN_30( _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_, _10_, _11_, _12_, _13_, _14_, _15_, _16_, _17_, _18_, _19_, _20_, _21_, _22_, _23_, _24_, _25_, _26_, _27_, _28_, _29_             ) S3DX::AIVariable vIn[30] ; vIn[0] = (_0_) ; vIn[1] = (_1_) ; vIn[2] = (_2_) ; vIn[3] = (_3_) ; vIn[4] = (_4_) ; vIn[5] = (_5_) ; vIn[6] = (_6_) ; vIn[7] = (_7_) ; vIn[8] = (_8_) ; vIn[9] = (_9_) ; vIn[10] = (_10_) ; vIn[11] = (_11_) ; vIn[12] = (_12_) ; vIn[13] = (_13_) ; vIn[14] = (_14_) ; vIn[15] = (_15_) ; vIn[16] = (_16_) ; vIn[17] = (_17_) ; vIn[18] = (_18_) ; vIn[19] = (_19_) ; vIn[20] = (_20_) ; vIn[21] = (_21_) ; vIn[22] = (_22_) ; vIn[23] = (_23_) ; vIn[24] = (_24_) ; vIn[25] = (_25_) ; vIn[26] = (_26_) ; vIn[27] = (_27_) ; vIn[28] = (_28_) ; vIn[29] = (_29_)
#define S3DX_DECLARE_VIN_31( _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_, _10_, _11_, _12_, _13_, _14_, _15_, _16_, _17_, _18_, _19_, _20_, _21_, _22_, _23_, _24_, _25_, _26_, _27_, _28_, _29_, _30_       ) S3DX::AIVariable vIn[31] ; vIn[0] = (_0_) ; vIn[1] = (_1_) ; vIn[2] = (_2_) ; vIn[3] = (_3_) ; vIn[4] = (_4_) ; vIn[5] = (_5_) ; vIn[6] = (_6_) ; vIn[7] = (_7_) ; vIn[8] = (_8_) ; vIn[9] = (_9_) ; vIn[10] = (_10_) ; vIn[11] = (_11_) ; vIn[12] = (_12_) ; vIn[13] = (_13_) ; vIn[14] = (_14_) ; vIn[15] = (_15_) ; vIn[16] = (_16_) ; vIn[17] = (_17_) ; vIn[18] = (_18_) ; vIn[19] = (_19_) ; vIn[20] = (_20_) ; vIn[21] = (_21_) ; vIn[22] = (_22_) ; vIn[23] = (_23_) ; vIn[24] = (_24_) ; vIn[25] = (_25_) ; vIn[26] = (_26_) ; vIn[27] = (_27_) ; vIn[28] = (_28_) ; vIn[29] = (_29_) ; vIn[30] = (_30_)
#define S3DX_DECLARE_VIN_32( _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_, _10_, _11_, _12_, _13_, _14_, _15_, _16_, _17_, _18_, _19_, _20_, _21_, _22_, _23_, _24_, _25_, _26_, _27_, _28_, _29_, _30_, _31_ ) S3DX::AIVariable vIn[32] ; vIn[0] = (_0_) ; vIn[1] = (_1_) ; vIn[2] = (_2_) ; vIn[3] = (_3_) ; vIn[4] = (_4_) ; vIn[5] = (_5_) ; vIn[6] = (_6_) ; vIn[7] = (_7_) ; vIn[8] = (_8_) ; vIn[9] = (_9_) ; vIn[10] = (_10_) ; vIn[11] = (_11_) ; vIn[12] = (_12_) ; vIn[13] = (_13_) ; vIn[14] = (_14_) ; vIn[15] = (_15_) ; vIn[16] = (_16_) ; vIn[17] = (_17_) ; vIn[18] = (_18_) ; vIn[19] = (_19_) ; vIn[20] = (_20_) ; vIn[21] = (_21_) ; vIn[22] = (_22_) ; vIn[23] = (_23_) ; vIn[24] = (_24_) ; vIn[25] = (_25_) ; vIn[26] = (_26_) ; vIn[27] = (_27_) ; vIn[28] = (_28_) ; vIn[29] = (_29_) ; vIn[30] = (_30_) ; vIn[31] = (_31_)

namespace S3DX
{
    class  AIVariable ; // Forward declaration
    class  AIModel    ; // Forward declaration
}

typedef int ( S3DX::AIModel::* S3DX_PROC ) ( int, const S3DX::AIVariable *, S3DX::AIVariable * ) ; 
typedef S3DX::AIVariable S3DX::AIModel::* S3DX_VAR ;

struct S3DX_STATE_MAP_ENTRY 
{
    const char *pName           ;
    S3DX_PROC   pEnterCallback  ;
    S3DX_PROC   pLoopCallback   ;
    S3DX_PROC   pLeaveCallback  ;
} ;

struct S3DX_HANDLER_MAP_ENTRY
{
    const char *pName       ;
    S3DX_PROC   pCallback   ;
} ;

struct S3DX_VARIABLE_MAP_ENTRY 
{
    const char *pName       ;
    const char  iType       ;
    //???S3DX_VAR    pVariable   ;
} ;

typedef S3DX::AIModel                 * ( * S3DXNATIVEAIMODELCREATEINSTANCEPROC ) ( ) ;
typedef const S3DX_STATE_MAP_ENTRY    * ( * S3DXNATIVEAIMODELGETSTATEMAPPROC    ) ( ) ;
typedef const S3DX_HANDLER_MAP_ENTRY  * ( * S3DXNATIVEAIMODELGETHANDLERMAPPROC  ) ( ) ;
typedef const S3DX_VARIABLE_MAP_ENTRY * ( * S3DXNATIVEAIMODELGETVARIABLEMAPPROC ) ( ) ;

// TODO: rename as "member type" or similar...
//
#define S3DX_VARIABLE_TYPE_NUMBER       1
#define S3DX_VARIABLE_TYPE_STRING       2
#define S3DX_VARIABLE_TYPE_BOOLEAN      3
#define S3DX_VARIABLE_TYPE_TABLE        4
#define S3DX_VARIABLE_TYPE_OBJECT       5
#define S3DX_VARIABLE_TYPE_HASHTABLE    6
#define S3DX_VARIABLE_TYPE_XML          7

#define S3DX_DECLARE_AIMODEL( _name_ ) \
    extern "C" S3DX::AIModel * _name_##__CreateInstance ( ); \
    extern "C" const S3DX_STATE_MAP_ENTRY * _name_##__GetStateMap ( ); \
    extern "C" const S3DX_HANDLER_MAP_ENTRY * _name_##__GetHandlerMap ( ); \
    extern "C" const S3DX_VARIABLE_MAP_ENTRY * _name_##__GetVariableMap ( ); \
    class _name_ : public S3DX::AIModel

#define S3DX_IMPLEMENT_AIMODEL( _name_ ) \
    S3DX::AIModel * _name_##__CreateInstance ( ) { return new _name_ ( ) ; } \
    class    _name_##__AutoRegisterClass { \
    public : _name_##__AutoRegisterClass ( ) { \
    RegisterStaticallyLinkedNativeAIModel ( _name_##__CreateInstance, \
                                            _name_##__GetStateMap,    \
                                            _name_##__GetHandlerMap,  \
                                            _name_##__GetVariableMap, #_name_ ); } }; \
    static _name_##__AutoRegisterClass _name_##__AutoRegisterSingleton ;
    

#define S3DX_DECLARE_STATE( _name_ ) \
    int _name_##_onEnter ( int _iInCount, const S3DX::AIVariable *_pIn, S3DX::AIVariable *_pOut ); \
    int _name_##_onLoop  ( int _iInCount, const S3DX::AIVariable *_pIn, S3DX::AIVariable *_pOut ); \
    int _name_##_onLeave ( int _iInCount, const S3DX::AIVariable *_pIn, S3DX::AIVariable *_pOut ); \
    inline void _name_ ( ) { this->sendStateChange ( #_name_ ); }

#define S3DX_DECLARE_HANDLER( _name_ ) int _name_ ( int _iInCount, const S3DX::AIVariable *_pIn, S3DX::AIVariable *_pOut )

#define S3DX_DECLARE_VARIABLE( _name_ ) \
    inline S3DX::AIVariable _name_ ( ) { return __getVariable ( #_name_ ); } \
    inline S3DX::AIVariable _name_ ( S3DX::AIVariable _vValue ) { return __setVariable ( #_name_, _vValue ); }

#define S3DX_BEGIN_STATE_MAP( _aimodel_ ) const S3DX_STATE_MAP_ENTRY _aimodel_##__StateEntries[] = {
#define S3DX_STATE( _aimodel_, _state_ ) { #_state_, (S3DX_PROC)&_aimodel_::_state_##_onEnter, (S3DX_PROC)&_aimodel_::_state_##_onLoop, (S3DX_PROC)&_aimodel_::_state_##_onLeave },
#define S3DX_END_STATE_MAP( _aimodel_ ) \
    { "", NULL, NULL, NULL } } ; \
    const S3DX_STATE_MAP_ENTRY *_aimodel_##__GetStateMap ( ) \
    { \
        return _aimodel_##__StateEntries ; \
    }

#define S3DX_BEGIN_HANDLER_MAP( _aimodel_ ) const S3DX_HANDLER_MAP_ENTRY _aimodel_##__HandlerEntries[] = {
#define S3DX_HANDLER( _aimodel_, _handler_ ) { #_handler_, (S3DX_PROC)&_aimodel_::_handler_ },
#define S3DX_END_HANDLER_MAP( _aimodel_ ) \
    { "", NULL } } ; \
    const S3DX_HANDLER_MAP_ENTRY *_aimodel_##__GetHandlerMap ( ) \
    { \
        return _aimodel_##__HandlerEntries ; \
    }

#define S3DX_BEGIN_VARIABLE_MAP( _aimodel_ ) const S3DX_VARIABLE_MAP_ENTRY _aimodel_##__VariableEntries[] = {
//???#define S3DX_VARIABLE( _aimodel_, _variable_, _type_ ) { #_variable_, _type_, (S3DX_VAR)&_aimodel_::__##_variable_ },
#define S3DX_VARIABLE( _aimodel_, _variable_, _type_ ) { #_variable_, _type_ },
#define S3DX_END_VARIABLE_MAP( _aimodel_ ) \
    { "", 0 } } ; \
    const S3DX_VARIABLE_MAP_ENTRY *_aimodel_##__GetVariableMap ( ) \
    { \
        return _aimodel_##__VariableEntries ; \
    }

#define S3DX_BEGIN_HANDLER_00( _aimodel_, _handler_                                                                                       ) int _aimodel_::_handler_ ( int _iInCount, const S3DX::AIVariable *_pIn, S3DX::AIVariable *_pOut ) {
#define S3DX_BEGIN_HANDLER_01( _aimodel_, _handler_, _0_                                                                                  ) S3DX_BEGIN_HANDLER_00( _aimodel_, _handler_ ) S3DX::AIVariable _0_ = _pIn[0] ;
#define S3DX_BEGIN_HANDLER_02( _aimodel_, _handler_, _0_, _1_                                                                             ) S3DX_BEGIN_HANDLER_01( _aimodel_, _handler_, _0_ ) S3DX::AIVariable _1_ = _pIn[1] ; 
#define S3DX_BEGIN_HANDLER_03( _aimodel_, _handler_, _0_, _1_, _2_                                                                        ) S3DX_BEGIN_HANDLER_02( _aimodel_, _handler_, _0_, _1_ ) S3DX::AIVariable _2_ = _pIn[2] ; 
#define S3DX_BEGIN_HANDLER_04( _aimodel_, _handler_, _0_, _1_, _2_, _3_                                                                   ) S3DX_BEGIN_HANDLER_03( _aimodel_, _handler_, _0_, _1_, _2_ ) S3DX::AIVariable _3_ = _pIn[3] ; 
#define S3DX_BEGIN_HANDLER_05( _aimodel_, _handler_, _0_, _1_, _2_, _3_, _4_                                                              ) S3DX_BEGIN_HANDLER_04( _aimodel_, _handler_, _0_, _1_, _2_, _3_ ) S3DX::AIVariable _4_ = _pIn[4] ; 
#define S3DX_BEGIN_HANDLER_06( _aimodel_, _handler_, _0_, _1_, _2_, _3_, _4_, _5_                                                         ) S3DX_BEGIN_HANDLER_05( _aimodel_, _handler_, _0_, _1_, _2_, _3_, _4_ ) S3DX::AIVariable _5_ = _pIn[5] ; 
#define S3DX_BEGIN_HANDLER_07( _aimodel_, _handler_, _0_, _1_, _2_, _3_, _4_, _5_, _6_                                                    ) S3DX_BEGIN_HANDLER_06( _aimodel_, _handler_, _0_, _1_, _2_, _3_, _4_, _5_ ) S3DX::AIVariable _6_ = _pIn[6] ; 
#define S3DX_BEGIN_HANDLER_08( _aimodel_, _handler_, _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_                                               ) S3DX_BEGIN_HANDLER_07( _aimodel_, _handler_, _0_, _1_, _2_, _3_, _4_, _5_, _6_ ) S3DX::AIVariable _7_ = _pIn[7] ; 
#define S3DX_BEGIN_HANDLER_09( _aimodel_, _handler_, _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_                                          ) S3DX_BEGIN_HANDLER_08( _aimodel_, _handler_, _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_ ) S3DX::AIVariable _8_ = _pIn[8] ; 
#define S3DX_BEGIN_HANDLER_10( _aimodel_, _handler_, _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_                                     ) S3DX_BEGIN_HANDLER_09( _aimodel_, _handler_, _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_ ) S3DX::AIVariable _9_ = _pIn[9] ; 
#define S3DX_BEGIN_HANDLER_11( _aimodel_, _handler_, _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_, _10_                               ) S3DX_BEGIN_HANDLER_10( _aimodel_, _handler_, _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_ ) S3DX::AIVariable _10_ = _pIn[10] ; 
#define S3DX_BEGIN_HANDLER_12( _aimodel_, _handler_, _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_, _10_, _11_                         ) S3DX_BEGIN_HANDLER_11( _aimodel_, _handler_, _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_, _10_ ) S3DX::AIVariable _11_ = _pIn[11] ; 
#define S3DX_BEGIN_HANDLER_13( _aimodel_, _handler_, _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_, _10_, _11_, _12_                   ) S3DX_BEGIN_HANDLER_12( _aimodel_, _handler_, _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_, _10_, _11_ ) S3DX::AIVariable _12_ = _pIn[12] ; 
#define S3DX_BEGIN_HANDLER_14( _aimodel_, _handler_, _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_, _10_, _11_, _12_, _13_             ) S3DX_BEGIN_HANDLER_13( _aimodel_, _handler_, _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_, _10_, _11_, _12_ ) S3DX::AIVariable _13_ = _pIn[13] ; 
#define S3DX_BEGIN_HANDLER_15( _aimodel_, _handler_, _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_, _10_, _11_, _12_, _13_, _14_       ) S3DX_BEGIN_HANDLER_14( _aimodel_, _handler_, _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_, _10_, _11_, _12_, _13_ ) S3DX::AIVariable _14_ = _pIn[14] ; 
#define S3DX_BEGIN_HANDLER_16( _aimodel_, _handler_, _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_, _10_, _11_, _12_, _13_, _14_, _15_ ) S3DX_BEGIN_HANDLER_15( _aimodel_, _handler_, _0_, _1_, _2_, _3_, _4_, _5_, _6_, _7_, _8_, _9_, _10_, _11_, _12_, _13_, _14_ ) S3DX::AIVariable _15_ = _pIn[15] ; 
#define S3DX_END_HANDLER( ) return 0 ; }

#define S3DX_BEGIN_STATE_ON_ENTER( _aimodel_, _state_ ) int _aimodel_::_state_##_onEnter ( int _iInCount, const S3DX::AIVariable *_pIn, S3DX::AIVariable *_pOut ) {
#define S3DX_END_STATE_ON_ENTER( ) return 0 ; }
#define S3DX_BEGIN_STATE_ON_LOOP( _aimodel_, _state_ ) int _aimodel_::_state_##_onLoop ( int _iInCount, const S3DX::AIVariable *_pIn, S3DX::AIVariable *_pOut ) {
#define S3DX_END_STATE_ON_LOOP( ) return 0 ; }
#define S3DX_BEGIN_STATE_ON_LEAVE( _aimodel_, _state_ ) int _aimodel_::_state_##_onLeave ( int _iInCount, const S3DX::AIVariable *_pIn, S3DX::AIVariable *_pOut ) {
#define S3DX_END_STATE_ON_LEAVE( ) return 0 ; }

#define S3DX_API_PROFILING_START( _name_ )
#define S3DX_API_PROFILING_STOP( )

// TEST...
//#define S3DX_DECLARE_FUNCTION( _name_ ) void _name_ ( )
//#define S3DX_BEGIN_FUNCTION( _aimodel_, _function_ ) void _aimodel_::_function_ ( )
//#define S3DX_END_FUNCTION( )

#define S3DX_LUA_FOR(           __var__, __init__, __limit__)           for ( S3DX::AIVariable __var__=__init__, __s3dx_lua_for_limit_##__LINE__=__limit__ ; __var__<=__s3dx_lua_for_limit_##__LINE__ ; __var__ += 1.0f )
#define S3DX_LUA_FOR_WITH_STEP( __var__, __init__, __limit__, __step__) for ( S3DX::AIVariable __var__=__init__, __s3dx_lua_for_limit_##__LINE__=__limit__, __s3dx_lua_for_step_##__LINE__=__step__ ; (__s3dx_lua_for_step_##__LINE__ > 0.0f) ? (__var__<=__s3dx_lua_for_limit_##__LINE__) : (__var__>=__s3dx_lua_for_limit_##__LINE__) ; __var__+=__s3dx_lua_for_step_##__LINE__ )

//-----------------------------------------------------------------------------
#endif
//-----------------------------------------------------------------------------
