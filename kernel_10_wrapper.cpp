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


void kernel_10_wrapper(reg_in_10_type &in_reg, reg_out_10_type &out_reg)
{
#pragma HLS INLINE off

  bit_data_type i_10_0 = in_reg[0];
  bit_data_type i_10_1 = in_reg[512];
  bit_data_type i_10_2 = in_reg[1024];
  bit_data_type i_10_3 = in_reg[1536];
  bit_data_type i_10_4 = in_reg[2048];
  bit_data_type i_10_5 = in_reg[2560];
  bit_data_type i_10_6 = in_reg[3072];
  bit_data_type i_10_7 = in_reg[3584];
  bit_data_type i_10_8 = in_reg[4096];
  bit_data_type i_10_9 = in_reg[1];
  bit_data_type i_10_10 = in_reg[513];
  bit_data_type i_10_11 = in_reg[1025];
  bit_data_type i_10_12 = in_reg[1537];
  bit_data_type i_10_13 = in_reg[2049];
  bit_data_type i_10_14 = in_reg[2561];
  bit_data_type i_10_15 = in_reg[3073];
  bit_data_type i_10_16 = in_reg[3585];
  bit_data_type i_10_17 = in_reg[4097];
  bit_data_type i_10_18 = in_reg[2];
  bit_data_type i_10_19 = in_reg[514];

  out_reg[2] = i_10_1 & i_10_2;

  out_reg[8] = i_10_7 & i_10_11;

  out_reg[13] = i_10_8 & i_10_9;

  out_reg[14] = i_10_3 & i_10_19;

  out_reg[18] = i_10_5 & i_10_3;


}
