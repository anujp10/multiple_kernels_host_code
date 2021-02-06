//################################################################################
//#
//#                           Author: Arash Fayyazi
//#                          E-mail: fayyazi@usc.edu
//#
//################################################################################

# define AP_INT_MAX_W 10000
#include <ap_int.h>

#ifndef __HYBRIDCONFIG_H__FG
#define __HYBRIDCONFIG_H__

#define weight_mem_size 71684
#define data_mem_size 15462
#define STARTING_LOC_ACT_8 15148
#define STARTING_LOC_RES_13 15380
// data type definitions
typedef ap_uint <1> bit_data_type;
typedef ap_uint <27> addr_ind_type;
typedef ap_uint <15> loop_ind_type;
// data types for streaming
typedef ap_uint <512> mem_stream_type;



#endif
