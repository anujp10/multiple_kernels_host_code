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


void kernel_11_wrapper(reg_in_11_type &in_reg, reg_out_11_type &out_reg)
{
#pragma HLS INLINE off

  bit_data_type i_11_0 = in_reg[0];
  bit_data_type i_11_1 = in_reg[512];
  bit_data_type i_11_2 = in_reg[1024];
  bit_data_type i_11_3 = in_reg[1536];
  bit_data_type i_11_4 = in_reg[2048];
  bit_data_type i_11_5 = in_reg[2560];
  bit_data_type i_11_6 = in_reg[3072];
  bit_data_type i_11_7 = in_reg[3584];
  bit_data_type i_11_8 = in_reg[4096];
  bit_data_type i_11_9 = in_reg[1];
  bit_data_type i_11_10 = in_reg[513];
  bit_data_type i_11_11 = in_reg[1025];
  bit_data_type i_11_12 = in_reg[1537];
  bit_data_type i_11_13 = in_reg[2049];
  bit_data_type i_11_14 = in_reg[2561];
  bit_data_type i_11_15 = in_reg[3073];
  bit_data_type i_11_16 = in_reg[3585];
  bit_data_type i_11_17 = in_reg[4097];
  bit_data_type i_11_18 = in_reg[2];
  bit_data_type i_11_19 = in_reg[514];

  out_reg[0] = i_11_12 & i_11_13;

  out_reg[1] = i_11_4 & i_11_18;

  out_reg[2] = i_11_1 & i_11_2;

  out_reg[5] = i_11_19 & i_11_8;

  out_reg[6] = i_11_18 & i_11_2;

  out_reg[9] = i_11_14 & i_11_19;

  out_reg[13] = i_11_8 & i_11_9;

  out_reg[14] = i_11_3 & i_11_19;

  out_reg[16] = i_11_11 & i_11_15;

  out_reg[17] = i_11_16 & i_11_13;

  out_reg[19] = i_11_1 & i_11_16;


}
