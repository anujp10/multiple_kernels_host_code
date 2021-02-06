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


void kernel_12_wrapper(reg_in_12_type &in_reg, reg_out_12_type &out_reg)
{
#pragma HLS INLINE off

  bit_data_type i_12_0 = in_reg[0];
  bit_data_type i_12_1 = in_reg[512];
  bit_data_type i_12_2 = in_reg[1024];
  bit_data_type i_12_3 = in_reg[1536];
  bit_data_type i_12_4 = in_reg[2048];
  bit_data_type i_12_5 = in_reg[2560];
  bit_data_type i_12_6 = in_reg[3072];
  bit_data_type i_12_7 = in_reg[3584];
  bit_data_type i_12_8 = in_reg[4096];
  bit_data_type i_12_9 = in_reg[1];
  bit_data_type i_12_10 = in_reg[513];
  bit_data_type i_12_11 = in_reg[1025];
  bit_data_type i_12_12 = in_reg[1537];
  bit_data_type i_12_13 = in_reg[2049];
  bit_data_type i_12_14 = in_reg[2561];
  bit_data_type i_12_15 = in_reg[3073];
  bit_data_type i_12_16 = in_reg[3585];
  bit_data_type i_12_17 = in_reg[4097];
  bit_data_type i_12_18 = in_reg[2];
  bit_data_type i_12_19 = in_reg[514];

  out_reg[3] = i_12_7 & i_12_18;

  out_reg[5] = i_12_19 & i_12_8;

  out_reg[6] = i_12_18 & i_12_2;

  out_reg[7] = i_12_10 & i_12_4;

  out_reg[8] = i_12_7 & i_12_11;

  out_reg[10] = i_12_18 & i_12_1;

  out_reg[11] = i_12_14 & i_12_17;

  out_reg[12] = i_12_15 & i_12_8;

  out_reg[13] = i_12_8 & i_12_9;

  out_reg[15] = i_12_6 & i_12_0;

  out_reg[19] = i_12_1 & i_12_16;


}
