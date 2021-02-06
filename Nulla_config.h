//################################################################################
//#
//#                           Author: Arash Fayyazi
//#                          E-mail: fayyazi@usc.edu
//#
//################################################################################

# define AP_INT_MAX_W 10000
#include <ap_int.h>
#include <hls_stream.h>

#ifndef __NULLACONFIG_H__FG
#define __NULLACONFIG_H__

// layer 8 parameters
#define NUM_REP_H_8 4
#define NUM_REP_W_8 4
#define LOOP_COUNT_INNER_H_8 1
#define LOOP_COUNT_INNER_W_8 1
#define NUM_REP_8 16
#define B_wHeight_8 3
#define B_wWidth_8 3
#define STRIDE_A_I_INNER_8 24
#define STRIDE_A_J_INNER_8 4
#define STRIDE_C_I_INNER_8 16
#define STRIDE_C_J_INNER_8 4
#define LOOP_COUNT_TILE_I_8 1
#define LOOP_COUNT_TILE_J_8 1
#define STARTING_LOC_A_8 0
#define STRIDE_A_I_8 16
#define STRIDE_A_J_8 4
#define B_iHeight_8 6
#define B_iWidth_8 6
#define iChannel_8 256
#define iWidth_8 4
#define iHeight_8 4
#define STARTING_LOC_C_8 8
#define STRIDE_C_I_8 16
#define STRIDE_C_J_8 4
#define B_oHeight_8 4
#define B_oWidth_8 4
#define oChannel_8 512
#define oWidth_8 4
#define IN_8_LOCAL_SIZE 16
#define OUT_8_LOCAL_SIZE 16
#define NUM_REP_H_8_MUL_B_iWidth_8 24
#define NUM_REP_H_8_MUL_B_oWidth_8 16
#define B_wHeight_8_MUL_B_iWidth_8 18
// streaming related definitions
#define MEM_IN_8_STREAM_SIZE 128
#define MEM_IN_8_LAST_IDX 224
#define MEM_IN_8_LAST_IDX_LAST 32
#define MEM_IN_8_NUM_DATA 128
#define IN_WIDTH_SIZE_8 32
#define IN_HEIGHT_SIZE_8 192
#define IN_HEIGHT_STEP_8 48
#define PAD_H_8 1
#define PAD_W_8 1

// layer 9 parameters
#define NUM_REP_H_9 4
#define NUM_REP_W_9 4
#define LOOP_COUNT_INNER_H_9 1
#define LOOP_COUNT_INNER_W_9 1
#define NUM_REP_9 16
#define B_wHeight_9 3
#define B_wWidth_9 3
#define STRIDE_A_I_INNER_9 24
#define STRIDE_A_J_INNER_9 4
#define STRIDE_C_I_INNER_9 16
#define STRIDE_C_J_INNER_9 4
#define LOOP_COUNT_TILE_I_9 1
#define LOOP_COUNT_TILE_J_9 1
#define STARTING_LOC_A_9 8
#define STRIDE_A_I_9 16
#define STRIDE_A_J_9 4
#define B_iHeight_9 6
#define B_iWidth_9 6
#define iChannel_9 512
#define iWidth_9 4
#define iHeight_9 4
#define STARTING_LOC_C_9 8
#define STRIDE_C_I_9 16
#define STRIDE_C_J_9 4
#define B_oHeight_9 4
#define B_oWidth_9 4
#define oChannel_9 512
#define oWidth_9 4
#define IN_9_LOCAL_SIZE 16
#define OUT_9_LOCAL_SIZE 16
#define NUM_REP_H_9_MUL_B_iWidth_9 24
#define NUM_REP_H_9_MUL_B_oWidth_9 16
#define B_wHeight_9_MUL_B_iWidth_9 18
#define PAD_H_9 1
#define PAD_W_9 1

// layer 10 parameters
#define NUM_REP_H_10 4
#define NUM_REP_W_10 4
#define LOOP_COUNT_INNER_H_10 1
#define LOOP_COUNT_INNER_W_10 1
#define NUM_REP_10 16
#define B_wHeight_10 3
#define B_wWidth_10 3
#define STRIDE_A_I_INNER_10 24
#define STRIDE_A_J_INNER_10 4
#define STRIDE_C_I_INNER_10 16
#define STRIDE_C_J_INNER_10 4
#define LOOP_COUNT_TILE_I_10 1
#define LOOP_COUNT_TILE_J_10 1
#define STARTING_LOC_A_10 8
#define STRIDE_A_I_10 16
#define STRIDE_A_J_10 4
#define B_iHeight_10 6
#define B_iWidth_10 6
#define iChannel_10 512
#define iWidth_10 4
#define iHeight_10 4
#define STARTING_LOC_C_10 12
#define STRIDE_C_I_10 16
#define STRIDE_C_J_10 4
#define B_oHeight_10 4
#define B_oWidth_10 4
#define oChannel_10 512
#define oWidth_10 4
#define IN_10_LOCAL_SIZE 16
#define OUT_10_LOCAL_SIZE 16
#define NUM_REP_H_10_MUL_B_iWidth_10 24
#define NUM_REP_H_10_MUL_B_oWidth_10 16
#define B_wHeight_10_MUL_B_iWidth_10 18
#define MEM_OUT_10_STREAM_SIZE 4
#define MEM_OUT_10_LAST_IDX 512
#define MEM_OUT_10_LAST_IDX_LAST 512
#define MEM_OUT_10_NUM_DATA 1
#define POOLING_10_SIZE 4
#define OUT_10_POOL_LOCAL_SIZE 4
#define B_oHeight_MUL_B_oWidth_10 16
#define hPool_MUL_B_oWidth_10 8
#define wPool_10 2
#define PAD_H_10 1
#define PAD_W_10 1

// layer 11 parameters
#define NUM_REP_H_11 2
#define NUM_REP_W_11 2
#define LOOP_COUNT_INNER_H_11 1
#define LOOP_COUNT_INNER_W_11 1
#define NUM_REP_11 4
#define B_wHeight_11 3
#define B_wWidth_11 3
#define STRIDE_A_I_INNER_11 8
#define STRIDE_A_J_INNER_11 2
#define STRIDE_C_I_INNER_11 4
#define STRIDE_C_J_INNER_11 2
#define LOOP_COUNT_TILE_I_11 1
#define LOOP_COUNT_TILE_J_11 1
#define STARTING_LOC_A_11 12
#define STRIDE_A_I_11 4
#define STRIDE_A_J_11 2
#define B_iHeight_11 4
#define B_iWidth_11 4
#define iChannel_11 512
#define iWidth_11 2
#define iHeight_11 2
#define STARTING_LOC_C_11 12
#define STRIDE_C_I_11 4
#define STRIDE_C_J_11 2
#define B_oHeight_11 2
#define B_oWidth_11 2
#define oChannel_11 512
#define oWidth_11 2
#define IN_11_LOCAL_SIZE 4
#define OUT_11_LOCAL_SIZE 4
#define NUM_REP_H_11_MUL_B_iWidth_11 8
#define NUM_REP_H_11_MUL_B_oWidth_11 4
#define B_wHeight_11_MUL_B_iWidth_11 12
// streaming related definitions
#define MEM_IN_11_STREAM_SIZE 4
#define MEM_IN_11_LAST_IDX 512
#define MEM_IN_11_LAST_IDX_LAST 512
#define MEM_IN_11_NUM_DATA 1
#define PAD_H_11 1
#define PAD_W_11 1

// layer 12 parameters
#define NUM_REP_H_12 2
#define NUM_REP_W_12 2
#define LOOP_COUNT_INNER_H_12 1
#define LOOP_COUNT_INNER_W_12 1
#define NUM_REP_12 4
#define B_wHeight_12 3
#define B_wWidth_12 3
#define STRIDE_A_I_INNER_12 8
#define STRIDE_A_J_INNER_12 2
#define STRIDE_C_I_INNER_12 4
#define STRIDE_C_J_INNER_12 2
#define LOOP_COUNT_TILE_I_12 1
#define LOOP_COUNT_TILE_J_12 1
#define STARTING_LOC_A_12 12
#define STRIDE_A_I_12 4
#define STRIDE_A_J_12 2
#define B_iHeight_12 4
#define B_iWidth_12 4
#define iChannel_12 512
#define iWidth_12 2
#define iHeight_12 2
#define STARTING_LOC_C_12 12
#define STRIDE_C_I_12 4
#define STRIDE_C_J_12 2
#define B_oHeight_12 2
#define B_oWidth_12 2
#define oChannel_12 512
#define oWidth_12 2
#define IN_12_LOCAL_SIZE 4
#define OUT_12_LOCAL_SIZE 4
#define NUM_REP_H_12_MUL_B_iWidth_12 8
#define NUM_REP_H_12_MUL_B_oWidth_12 4
#define B_wHeight_12_MUL_B_iWidth_12 12
#define PAD_H_12 1
#define PAD_W_12 1

// layer 13 parameters
#define NUM_REP_H_13 2
#define NUM_REP_W_13 2
#define LOOP_COUNT_INNER_H_13 1
#define LOOP_COUNT_INNER_W_13 1
#define NUM_REP_13 4
#define B_wHeight_13 3
#define B_wWidth_13 3
#define STRIDE_A_I_INNER_13 8
#define STRIDE_A_J_INNER_13 2
#define STRIDE_C_I_INNER_13 4
#define STRIDE_C_J_INNER_13 2
#define LOOP_COUNT_TILE_I_13 1
#define LOOP_COUNT_TILE_J_13 1
#define STARTING_LOC_A_13 12
#define STRIDE_A_I_13 4
#define STRIDE_A_J_13 2
#define B_iHeight_13 4
#define B_iWidth_13 4
#define iChannel_13 512
#define iWidth_13 2
#define iHeight_13 2
#define STARTING_LOC_C_13 13
#define STRIDE_C_I_13 4
#define STRIDE_C_J_13 2
#define B_oHeight_13 2
#define B_oWidth_13 2
#define oChannel_13 512
#define oWidth_13 2
#define IN_13_LOCAL_SIZE 4
#define OUT_13_LOCAL_SIZE 4
#define NUM_REP_H_13_MUL_B_iWidth_13 8
#define NUM_REP_H_13_MUL_B_oWidth_13 4
#define B_wHeight_13_MUL_B_iWidth_13 12
#define MEM_OUT_13_STREAM_SIZE 16
#define MEM_OUT_13_LAST_IDX 480
#define MEM_OUT_13_LAST_IDX_LAST 32
#define MEM_OUT_13_NUM_DATA 16
#define OUT_WIDTH_SIZE_13 16
#define OUT_HEIGHT_SIZE_13 16
#define OUT_HEIGHT_STEP_13 16
#define POOLING_13_SIZE 4
#define OUT_13_POOL_LOCAL_SIZE 1
#define B_oHeight_MUL_B_oWidth_13 4
#define hPool_MUL_B_oWidth_13 4
#define wPool_13 2
#define PAD_H_13 1
#define PAD_W_13 1

// Memory Sizes
#define MEM_IN_TOT_STREAM_SIZE 132
#define MEM_OUT_TOT_STREAM_SIZE 20
// layer 8 data type definitions
typedef ap_uint <256> local_in_8_type;
typedef ap_uint <512> local_out_8_type;
typedef ap_uint <2304> reg_in_8_type;
typedef ap_uint <512> reg_out_8_type;
typedef ap_uint <512> out_stream_8_type;
// layer 9 data type definitions
typedef ap_uint <512> local_in_9_type;
typedef ap_uint <512> local_out_9_type;
typedef ap_uint <4608> reg_in_9_type;
typedef ap_uint <512> reg_out_9_type;
typedef ap_uint <512> out_stream_9_type;
// layer 10 data type definitions
typedef ap_uint <512> local_in_10_type;
typedef ap_uint <512> local_out_10_type;
typedef ap_uint <4608> reg_in_10_type;
typedef ap_uint <512> reg_out_10_type;
typedef ap_uint <512> out_stream_10_type;
// layer 11 data type definitions
typedef ap_uint <512> local_in_11_type;
typedef ap_uint <512> local_out_11_type;
typedef ap_uint <4608> reg_in_11_type;
typedef ap_uint <512> reg_out_11_type;
typedef ap_uint <512> out_stream_11_type;
// layer 12 data type definitions
typedef ap_uint <512> local_in_12_type;
typedef ap_uint <512> local_out_12_type;
typedef ap_uint <4608> reg_in_12_type;
typedef ap_uint <512> reg_out_12_type;
typedef ap_uint <512> out_stream_12_type;
// layer 13 data type definitions
typedef ap_uint <512> local_in_13_type;
typedef ap_uint <512> local_out_13_type;
typedef ap_uint <4608> reg_in_13_type;
typedef ap_uint <512> reg_out_13_type;
typedef ap_uint <512> out_stream_13_type;


#endif
