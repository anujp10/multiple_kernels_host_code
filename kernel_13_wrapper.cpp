//################################################################################
//#
//#                           Author: Arash Fayyazi
//#                          E-mail: fayyazi@usc.edu
//#
//################################################################################

# define AP_INT_MAX_W 10000
#include <ap_int.h>
#include "Nulla_config.h"
#include "Hybrid_config.h"


void kernel_13_wrapper(reg_in_13_type &in_reg, reg_out_13_type &out_reg)
{
#pragma HLS INLINE off

  bit_data_type i_13_0 = in_reg[0];
  bit_data_type i_13_1 = in_reg[512];
  bit_data_type i_13_2 = in_reg[1024];
  bit_data_type i_13_3 = in_reg[1536];
  bit_data_type i_13_4 = in_reg[2048];
  bit_data_type i_13_5 = in_reg[2560];
  bit_data_type i_13_6 = in_reg[3072];
  bit_data_type i_13_7 = in_reg[3584];
  bit_data_type i_13_8 = in_reg[4096];
  bit_data_type i_13_9 = in_reg[1];
  bit_data_type i_13_10 = in_reg[513];
  bit_data_type i_13_11 = in_reg[1025];
  bit_data_type i_13_12 = in_reg[1537];
  bit_data_type i_13_13 = in_reg[2049];
  bit_data_type i_13_14 = in_reg[2561];
  bit_data_type i_13_15 = in_reg[3073];
  bit_data_type i_13_16 = in_reg[3585];
  bit_data_type i_13_17 = in_reg[4097];
  bit_data_type i_13_18 = in_reg[2];
  bit_data_type i_13_19 = in_reg[514];

  out_reg[0] = i_13_12 & i_13_13;

  out_reg[1] = i_13_4 & i_13_18;

  out_reg[2] = i_13_1 & i_13_2;

  out_reg[3] = i_13_7 & i_13_18;

  out_reg[4] = i_13_7 & i_13_9;

  out_reg[5] = i_13_19 & i_13_8;

  out_reg[6] = i_13_18 & i_13_2;

  out_reg[7] = i_13_10 & i_13_4;

  out_reg[8] = i_13_7 & i_13_11;

  out_reg[9] = i_13_14 & i_13_19;

  out_reg[10] = i_13_18 & i_13_1;

  out_reg[11] = i_13_14 & i_13_17;

  out_reg[12] = i_13_15 & i_13_8;

  out_reg[13] = i_13_8 & i_13_9;

  out_reg[14] = i_13_3 & i_13_19;

  out_reg[15] = i_13_6 & i_13_0;

  out_reg[16] = i_13_11 & i_13_15;

  out_reg[17] = i_13_16 & i_13_13;

  out_reg[18] = i_13_5 & i_13_3;

  out_reg[19] = i_13_1 & i_13_16;


}
