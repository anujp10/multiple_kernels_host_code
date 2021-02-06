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


void kernel_8_wrapper(reg_in_8_type &in_reg, reg_out_8_type &out_reg)
{
#pragma HLS INLINE off

  bit_data_type i_8_0 = in_reg[0];
  bit_data_type i_8_1 = in_reg[256];
  bit_data_type i_8_2 = in_reg[512];
  bit_data_type i_8_3 = in_reg[768];
  bit_data_type i_8_4 = in_reg[1024];
  bit_data_type i_8_5 = in_reg[1280];
  bit_data_type i_8_6 = in_reg[1536];
  bit_data_type i_8_7 = in_reg[1792];
  bit_data_type i_8_8 = in_reg[2048];
  bit_data_type i_8_9 = in_reg[1];
  bit_data_type i_8_10 = in_reg[257];
  bit_data_type i_8_11 = in_reg[513];
  bit_data_type i_8_12 = in_reg[769];
  bit_data_type i_8_13 = in_reg[1025];
  bit_data_type i_8_14 = in_reg[1281];
  bit_data_type i_8_15 = in_reg[1537];
  bit_data_type i_8_16 = in_reg[1793];
  bit_data_type i_8_17 = in_reg[2049];
  bit_data_type i_8_18 = in_reg[2];
  bit_data_type i_8_19 = in_reg[258];

  out_reg[4] = i_8_7 & i_8_9;

  out_reg[6] = i_8_18 & i_8_2;

  out_reg[7] = i_8_10 & i_8_4;

  out_reg[10] = i_8_18 & i_8_1;

  out_reg[14] = i_8_3 & i_8_19;


}
