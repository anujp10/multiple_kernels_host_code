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


void kernel_9_wrapper(reg_in_9_type &in_reg, reg_out_9_type &out_reg)
{
#pragma HLS INLINE off

  bit_data_type i_9_0 = in_reg[0];
  bit_data_type i_9_1 = in_reg[512];
  bit_data_type i_9_2 = in_reg[1024];
  bit_data_type i_9_3 = in_reg[1536];
  bit_data_type i_9_4 = in_reg[2048];
  bit_data_type i_9_5 = in_reg[2560];
  bit_data_type i_9_6 = in_reg[3072];
  bit_data_type i_9_7 = in_reg[3584];
  bit_data_type i_9_8 = in_reg[4096];
  bit_data_type i_9_9 = in_reg[1];
  bit_data_type i_9_10 = in_reg[513];
  bit_data_type i_9_11 = in_reg[1025];
  bit_data_type i_9_12 = in_reg[1537];
  bit_data_type i_9_13 = in_reg[2049];
  bit_data_type i_9_14 = in_reg[2561];
  bit_data_type i_9_15 = in_reg[3073];
  bit_data_type i_9_16 = in_reg[3585];
  bit_data_type i_9_17 = in_reg[4097];
  bit_data_type i_9_18 = in_reg[2];
  bit_data_type i_9_19 = in_reg[514];

  out_reg[3] = i_9_7 & i_9_18;

  out_reg[9] = i_9_14 & i_9_19;

  out_reg[13] = i_9_8 & i_9_9;

  out_reg[16] = i_9_11 & i_9_15;

  out_reg[19] = i_9_1 & i_9_16;


}
