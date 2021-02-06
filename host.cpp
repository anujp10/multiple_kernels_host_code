//################################################################################
//#
//#                           Author: Arash Fayyazi
//#                          E-mail: fayyazi@usc.edu
//#
//################################################################################

#include <ap_int.h>
#include <vector>
#include "xcl2.hpp"
#include <ap_fixed.h>
#include "Mac_config.h"
#include "Mac_templates.h"
#include "Hybrid_config.h"
//#include <CL/cl2.hpp>
#include <iostream>
//#include <CL/cl_ext_xilinx.h>
#include <fstream>


// Mac layers parameters
// layer 1
#define iChannelS_1 32
#define iWidthS_1 34
#define iHeightS_1 34
#define wWidthS_1 3
#define wHeightS_1 3
#define prePUChannelS_1 64
#define prePUWidthS_1 32
#define prePUHeightS_1 32
// layer 2
#define iChannelS_2 64
#define iWidthS_2 34
#define iHeightS_2 34
#define wWidthS_2 3
#define wHeightS_2 3
#define prePUChannelS_2 64
#define prePUWidthS_2 32
#define prePUHeightS_2 32
# define oChannelS_2 64
#define oHeightS_2 16
# define oWidthS_2 16
// layer 3
#define iChannelS_3 64
#define iWidthS_3 18
#define iHeightS_3 18
#define wWidthS_3 3
#define wHeightS_3 3
#define prePUChannelS_3 128
#define prePUWidthS_3 16
#define prePUHeightS_3 16
// layer 4
#define iChannelS_4 128
#define iWidthS_4 18
#define iHeightS_4 18
#define wWidthS_4 3
#define wHeightS_4 3
#define prePUChannelS_4 128
#define prePUWidthS_4 16
#define prePUHeightS_4 16
# define oChannelS_4 128
#define oHeightS_4 8
# define oWidthS_4 8
// layer 5
#define iChannelS_5 128
#define iWidthS_5 10
#define iHeightS_5 10
#define wWidthS_5 3
#define wHeightS_5 3
#define prePUChannelS_5 256
#define prePUWidthS_5 8
#define prePUHeightS_5 8
// layer 6
#define iChannelS_6 256
#define iWidthS_6 10
#define iHeightS_6 10
#define wWidthS_6 3
#define wHeightS_6 3
#define prePUChannelS_6 256
#define prePUWidthS_6 8
#define prePUHeightS_6 8
// layer 7
#define iChannelS_7 256
#define iWidthS_7 10
#define iHeightS_7 10
#define wWidthS_7 3
#define wHeightS_7 3
#define prePUChannelS_7 256
#define prePUWidthS_7 8
#define prePUHeightS_7 8
# define oChannelS_7 256
#define oHeightS_7 4
# define oWidthS_7 4
// layer 8
#define iChannelS_8 256
#define iWidthS_8 6
#define iHeightS_8 6
// layer 14
#define iChannelS_14 512
#define iWidthS_14 1
#define iHeightS_14 1
#define wWidthS_14 1
#define wHeightS_14 1
#define prePUChannelS_14 512
#define prePUWidthS_14 1
#define prePUHeightS_14 1
// layer 15
#define iChannelS_15 512
#define iWidthS_15 1
#define iHeightS_15 1
#define wWidthS_15 1
#define wHeightS_15 1
#define prePUChannelS_15 512
#define prePUWidthS_15 1
#define prePUHeightS_15 1
// layer 16
#define iChannelS_16 512
#define iWidthS_16 1
#define iHeightS_16 1
#define wWidthS_16 1
#define wHeightS_16 1
#define prePUChannelS_16 32
#define prePUWidthS_16 1
#define prePUHeightS_16 1

#define kHeightS 2
#define kWidthS 2

#define StrideS 2
void dsp_to_data_type(
		std::vector<DSP_data_type, aligned_allocator<DSP_data_type>> &sys_out,  //Output Matrix
		std::vector<data_type, aligned_allocator<data_type>> &ac, //Input activations
		int array_size) {
	for (int i = 0; i < array_size; i++) {
		ac[i] = (data_type) sys_out[i];
	}
}

void pad_data(
		std::vector<data_type, aligned_allocator<data_type>> &ac,  //Output Matrix
		std::vector<data_type, aligned_allocator<data_type>> &pad_ac, //Input activations
		int array_size,
		int width_size,
		int height_size,
		int height_step,
		int first_pad) {
	for (int i = 0; i < array_size; i++) {
		pad_ac[i] = (data_type) 0;
	}
	int k = 0;
	for (int i = 0; i < height_size; i+=height_step) {
		for (int j = 0; j < width_size; j++) {
			pad_ac[first_pad+i+j] = (data_type) ac[k];
			k++;
		}
	}
}

void sys_softwareGold(
		std::vector<data_type, aligned_allocator<data_type>> &ac, //Input activations
		std::vector<data_type, aligned_allocator<data_type>> &weight, //Input weights
		std::vector<data_type, aligned_allocator<data_type>> &bias, //Input weights
		std::vector<DSP_data_type, aligned_allocator<DSP_data_type>> &sys_out,  //Output Matrix
		int layer) {
	//Perform convulution Out = ac * weight
	int prepoolChannelS;
	int prepoolHeightS;
	int prepoolWidthS;
	int iChannelS_l;
	int wHeight;
	int wWidth;
	int iHeightS_l;
	int iWidthS_l;

	if (layer == 1) {
		prepoolChannelS = prePUChannelS_1;
		prepoolHeightS = prePUHeightS_1;
		prepoolWidthS = prePUWidthS_1;
		iChannelS_l = iChannelS_1;
		wHeight = wHeightS_1;
		wWidth = wWidthS_1;
		iHeightS_l = iHeightS_1;
		iWidthS_l = iWidthS_1;
	}
	else if(layer == 2) {
		prepoolChannelS = prePUChannelS_2;
		prepoolHeightS = prePUHeightS_2;
		prepoolWidthS = prePUWidthS_2;
		iChannelS_l = iChannelS_2;
		wHeight = wHeightS_2;
		wWidth = wWidthS_2;
		iHeightS_l = iHeightS_2;
		iWidthS_l = iWidthS_2;
	}
	else if(layer == 3) {
		prepoolChannelS = prePUChannelS_3;
		prepoolHeightS = prePUHeightS_3;
		prepoolWidthS = prePUWidthS_3;
		iChannelS_l = iChannelS_3;
		wHeight = wHeightS_3;
		wWidth = wWidthS_3;
		iHeightS_l = iHeightS_3;
		iWidthS_l = iWidthS_3;
	}
	else if(layer == 4) {
		prepoolChannelS = prePUChannelS_4;
		prepoolHeightS = prePUHeightS_4;
		prepoolWidthS = prePUWidthS_4;
		iChannelS_l = iChannelS_4;
		wHeight = wHeightS_4;
		wWidth = wWidthS_4;
		iHeightS_l = iHeightS_4;
		iWidthS_l = iWidthS_4;
	}
	else if(layer == 5) {
		prepoolChannelS = prePUChannelS_5;
		prepoolHeightS = prePUHeightS_5;
		prepoolWidthS = prePUWidthS_5;
		iChannelS_l = iChannelS_5;
		wHeight = wHeightS_5;
		wWidth = wWidthS_5;
		iHeightS_l = iHeightS_5;
		iWidthS_l = iWidthS_5;
	}
	else if(layer == 6) {
		prepoolChannelS = prePUChannelS_6;
		prepoolHeightS = prePUHeightS_6;
		prepoolWidthS = prePUWidthS_6;
		iChannelS_l = iChannelS_6;
		wHeight = wHeightS_6;
		wWidth = wWidthS_6;
		iHeightS_l = iHeightS_6;
		iWidthS_l = iWidthS_6;
	}
	else if(layer == 7) {
		prepoolChannelS = prePUChannelS_7;
		prepoolHeightS = prePUHeightS_7;
		prepoolWidthS = prePUWidthS_7;
		iChannelS_l = iChannelS_7;
		wHeight = wHeightS_7;
		wWidth = wWidthS_7;
		iHeightS_l = iHeightS_7;
		iWidthS_l = iWidthS_7;
	}
	else if (layer == 14) {
		prepoolChannelS = prePUChannelS_14;
		prepoolHeightS = prePUHeightS_14;
		prepoolWidthS = prePUWidthS_14;
		iChannelS_l = iChannelS_14;
		wHeight = wHeightS_14;
		wWidth = wWidthS_14;
		iHeightS_l = iHeightS_14;
		iWidthS_l = iWidthS_14;
	}
	else if(layer == 15) {
		prepoolChannelS = prePUChannelS_15;
		prepoolHeightS = prePUHeightS_15;
		prepoolWidthS = prePUWidthS_15;
		iChannelS_l = iChannelS_15;
		wHeight = wHeightS_15;
		wWidth = wWidthS_15;
		iHeightS_l = iHeightS_15;
		iWidthS_l = iWidthS_15;
	}
	else {
		prepoolChannelS = prePUChannelS_16;
		prepoolHeightS = prePUHeightS_16;
		prepoolWidthS = prePUWidthS_16;
		iChannelS_l = iChannelS_16;
		wHeight = wHeightS_16;
		wWidth = wWidthS_16;
		iHeightS_l = iHeightS_16;
		iWidthS_l = iWidthS_16;
	}

	for (int oc = 0; oc < prepoolChannelS; oc++) {
		for (int oh = 0; oh < prepoolHeightS; oh++) {
			for (int ow = 0; ow < prepoolWidthS; ow++) {
				DSP_data_type acc = 0;
				for (int ic = 0; ic < iChannelS_l; ic++) {
					if (layer == 13 && ic == 32)
						cout << "SW sum_val_array of "<< (oh * prepoolWidthS + ow) * prepoolChannelS + oc << " ]: " << float(acc) << endl;
					for (int wh = 0; wh < wHeight; wh++) {
						for (int ww = 0; ww < wWidth; ww++) {
							//TODO : Add padding information : xVal = ow * Stride + ww - Padding
							int xVal = ow * STRIDE_W_1 + ww;
							int yVal = oh * STRIDE_H_1 + wh;
							// Conv operation
							if (yVal >= 0 && yVal < iHeightS_l && xVal >= 0
									&& xVal < iWidthS_l) {

								/*
								 acc += (data_type) ac[(ic * iHeight + yVal) * iWidth + xVal] *
								 (data_type) weight[((oc * iChannel + ic) * wHeight + wh) * wWidth + ww];
								 */

								/*
								 acc += (C_data_type) ac [(yVal * iWidth + xVal) * iChannel + ic] *
								 (C_data_type) weight[((wh * wWidth + ww) * iChannel + ic) * oChannel + oc];
								 */

								acc +=
										(DSP_data_type) ac[(yVal * iWidthS_l
												+ xVal) * iChannelS_l + ic]
												* (DSP_data_type) weight[(((((((oc
														/ (int) SYS_SIZE)
														* wHeight) + wh)
														* wWidth) + ww)
														* iChannelS_l) + ic)
														* (SYS_SIZE)
														+ (oc % SYS_SIZE)];
								/*
								int weight_ind = (((((((oc
										/ (int) SYS_SIZE)
										* wHeight) + wh)
										* wWidth) + ww)
										* iChannelS_l) + ic)
										* (SYS_SIZE)
										+ (oc % SYS_SIZE);
								if(weight_ind < 16)
									std::cout << "software weight ind = " << weight_ind << " CPU result = " << float(weight[weight_ind])
																		<< std::endl;

							*/
							}

						}
					}
				}
				// Store the result
				DSP_data_type res_b = acc + (DSP_data_type) bias[oc];
				if(layer == 16)
					sys_out[(oh * prepoolWidthS + ow) * prepoolChannelS + oc] =  res_b ;
				else
					sys_out[(oh * prepoolWidthS + ow) * prepoolChannelS + oc] = (res_b > 0 )? (res_b): (DSP_data_type) 0;
			}
		}
	}
}

void pooling_softwareGold(
    std::vector<DSP_data_type, aligned_allocator<DSP_data_type>> &sys_out, //Input activations
    std::vector<data_type, aligned_allocator<data_type>> &out,
	int layer//Output Matrix
) {
    //Perform convulution Out = ac * weight
    int oChannelS;
    int oHeightS;
    int oWidthS;
    int prepoolHeightS;
    int prepoolWidthS;
    int prepoolChannelS;

	if (layer == 2) {
		oChannelS = oChannelS_2;
		oHeightS = oHeightS_2;
		oWidthS = oWidthS_2;
		prepoolHeightS = prePUHeightS_2;
		prepoolWidthS = prePUWidthS_2;
		prepoolChannelS = prePUChannelS_2;
	}
	else if (layer == 4){
		oChannelS = oChannelS_4;
		oHeightS = oHeightS_4;
		oWidthS = oWidthS_4;
		prepoolHeightS = prePUHeightS_4;
		prepoolWidthS = prePUWidthS_4;
		prepoolChannelS = prePUChannelS_4;
	}
	else{
		 oChannelS = oChannelS_7;
		oHeightS = oHeightS_7;
		oWidthS = oWidthS_7;
		prepoolHeightS = prePUHeightS_7;
		prepoolWidthS = prePUWidthS_7;
		prepoolChannelS = prePUChannelS_7;
	}
    for (int oc = 0; oc < oChannelS; oc++) {
        for (int oh = 0; oh < oHeightS; oh++) {
            for (int ow = 0; ow < oWidthS; ow++) {
            	data_type max_pool = 0;
				for (int kh = 0; kh < kHeightS; kh++) {
					for (int kw = 0; kw < kWidthS; kw++) {
						//TODO : Add padding information : xVal = ow * Stride + ww - Padding
						int xVal = ow * StrideS + kw;
						int yVal = oh * StrideS + kh;
						// Conv operation
						if (yVal >= 0 && yVal < prepoolHeightS && xVal >= 0 && xVal < prepoolWidthS) {
							max_pool = (max_pool > sys_out[(yVal * prepoolWidthS + xVal) * prepoolChannelS + oc]) ? max_pool : (data_type) sys_out[(yVal * prepoolWidthS + xVal) * prepoolChannelS + oc];
						}
					}
            	}
            	// Store the result
            	out[(oh * oWidthS + ow) * oChannelS + oc]  = max_pool;
            }
        }
    }
}

// parse layer function
int parse_layer(std::ifstream & infile, const std::string name, std::vector <data_type, aligned_allocator <data_type>> & read_data){
  std::string inp_line;
  int data_int;
  ap_int <16> data_ap_int;
  long int i = 0;
  infile.open(name, std::ios_base::in);
  if (infile.is_open()) {
    while (!infile.eof()) {
      std::getline(infile, inp_line);
      std::stringstream in_stream(inp_line);
      while (in_stream >> data_int) {
        data_ap_int = (ap_int<16>) data_int;
        // copy the bits instead of the value
        read_data[i].range() = data_ap_int.range();
        i++;
      }
    }
  }
  else
    return -1;
  std::cout << "number of words read: " << i << std::endl;
  infile.close();
  return 0;
}

// main function
int main(int argc, char **argv) {
  if (argc != 2) {
    std::cout << "Usage: " << argv[0] << " <XCLBIN File>" << std::endl;
    return EXIT_FAILURE;
  }
  std::string binaryFile = argv[1];

  // variable definitions// layer 1
  size_t ac1_size_bytes = sizeof(data_type) * 36992;
  size_t w1_size_bytes = sizeof(data_type) * 18432;
  size_t b1_size_bytes = sizeof(data_type) * 64;
  size_t ps1_size_bytes = sizeof(DSP_data_type) * 65536;
  size_t out1_size_bytes = sizeof(data_type) * 65536;
  std::vector<data_type, aligned_allocator<data_type>> ac1(ac1_size_bytes);
  std::vector<data_type, aligned_allocator<data_type>> weight1(w1_size_bytes);
  std::vector<data_type, aligned_allocator<data_type>> bias1(b1_size_bytes);
  std::vector<data_type, aligned_allocator<data_type>> out1(out1_size_bytes);
  std::vector<DSP_data_type, aligned_allocator<DSP_data_type>> ps1(ps1_size_bytes);

  std::vector<data_type, aligned_allocator<data_type>> ac1_image1(ac1_size_bytes);
  std::vector<data_type, aligned_allocator<data_type>> ac1_image2(ac1_size_bytes);
  std::vector<data_type, aligned_allocator<data_type>> ac1_image3(ac1_size_bytes);
  std::vector<data_type, aligned_allocator<data_type>> ac1_image4(ac1_size_bytes);

  // layer 2
  size_t ac2_size_bytes = sizeof(data_type) * 73984;
  size_t w2_size_bytes = sizeof(data_type) * 36864;
  size_t b2_size_bytes = sizeof(data_type) * 64;
  size_t ps2_size_bytes = sizeof(DSP_data_type) * 65536;
  size_t out2_size_bytes = sizeof(data_type) * 16384;
  std::vector<data_type, aligned_allocator<data_type>> ac2(ac2_size_bytes);
  std::vector<data_type, aligned_allocator<data_type>> ac2s(ac2_size_bytes);
  std::vector<data_type, aligned_allocator<data_type>> weight2(w2_size_bytes);
  std::vector<data_type, aligned_allocator<data_type>> bias2(b2_size_bytes);
  std::vector<data_type, aligned_allocator<data_type>> out2(out2_size_bytes);
  std::vector<DSP_data_type, aligned_allocator<DSP_data_type>> ps2(ps2_size_bytes);
  // layer 3
  size_t ac3_size_bytes = sizeof(data_type) * 20736;
  size_t w3_size_bytes = sizeof(data_type) * 73728;
  size_t b3_size_bytes = sizeof(data_type) * 128;
  size_t ps3_size_bytes = sizeof(DSP_data_type) * 32768;
  size_t out3_size_bytes = sizeof(data_type) * 32768;
  std::vector<data_type, aligned_allocator<data_type>> ac3(ac3_size_bytes);
  std::vector<data_type, aligned_allocator<data_type>> ac3s(ac3_size_bytes);
  std::vector<data_type, aligned_allocator<data_type>> weight3(w3_size_bytes);
  std::vector<data_type, aligned_allocator<data_type>> bias3(b3_size_bytes);
  std::vector<data_type, aligned_allocator<data_type>> out3(out3_size_bytes);
  std::vector<DSP_data_type, aligned_allocator<DSP_data_type>> ps3(ps3_size_bytes);
  // layer 4
  size_t ac4_size_bytes = sizeof(data_type) * 41472;
  size_t w4_size_bytes = sizeof(data_type) * 147456;
  size_t b4_size_bytes = sizeof(data_type) * 128;
  size_t ps4_size_bytes = sizeof(DSP_data_type) * 32768;
  size_t out4_size_bytes = sizeof(data_type) * 8192;
  std::vector<data_type, aligned_allocator<data_type>> ac4(ac4_size_bytes);
  std::vector<data_type, aligned_allocator<data_type>> weight4(w4_size_bytes);
  std::vector<data_type, aligned_allocator<data_type>> bias4(b4_size_bytes);
  std::vector<data_type, aligned_allocator<data_type>> out4(out4_size_bytes);
  std::vector<DSP_data_type, aligned_allocator<DSP_data_type>> ps4(ps4_size_bytes);
  // layer 5
  size_t ac5_size_bytes = sizeof(data_type) * 12800;
  size_t w5_size_bytes = sizeof(data_type) * 294912;
  size_t b5_size_bytes = sizeof(data_type) * 256;
  size_t ps5_size_bytes = sizeof(DSP_data_type) * 16384;
  size_t out5_size_bytes = sizeof(data_type) * 16384;
  std::vector<data_type, aligned_allocator<data_type>> ac5(ac5_size_bytes);
  std::vector<data_type, aligned_allocator<data_type>> weight5(w5_size_bytes);
  std::vector<data_type, aligned_allocator<data_type>> bias5(b5_size_bytes);
  std::vector<data_type, aligned_allocator<data_type>> out5(out5_size_bytes);
  std::vector<DSP_data_type, aligned_allocator<DSP_data_type>> ps5(ps5_size_bytes);
  // layer 6
  size_t ac6_size_bytes = sizeof(data_type) * 25600;
  size_t w6_size_bytes = sizeof(data_type) * 589824;
  size_t b6_size_bytes = sizeof(data_type) * 256;
  size_t ps6_size_bytes = sizeof(DSP_data_type) * 16384;
  size_t out6_size_bytes = sizeof(data_type) * 16384;
  std::vector<data_type, aligned_allocator<data_type>> ac6(ac6_size_bytes);
  std::vector<data_type, aligned_allocator<data_type>> weight6(w6_size_bytes);
  std::vector<data_type, aligned_allocator<data_type>> bias6(b6_size_bytes);
  std::vector<data_type, aligned_allocator<data_type>> out6(out6_size_bytes);
  std::vector<DSP_data_type, aligned_allocator<DSP_data_type>> ps6(ps6_size_bytes);
  // layer 7
  size_t ac7_size_bytes = sizeof(data_type) * 25600;
  size_t w7_size_bytes = sizeof(data_type) * 589824;
  size_t b7_size_bytes = sizeof(data_type) * 256;
  size_t ps7_size_bytes = sizeof(DSP_data_type) * 16384;
  size_t out7_size_bytes = sizeof(data_type) * 4096;
  std::vector<data_type, aligned_allocator<data_type>> ac7(ac7_size_bytes);
  std::vector<data_type, aligned_allocator<data_type>> ac7s(ac7_size_bytes);
  std::vector<data_type, aligned_allocator<data_type>> weight7(w7_size_bytes);
  std::vector<data_type, aligned_allocator<data_type>> bias7(b7_size_bytes);
  std::vector<data_type, aligned_allocator<data_type>> out7(out7_size_bytes);
  std::vector<DSP_data_type, aligned_allocator<DSP_data_type>> ps7(ps7_size_bytes);
  // layer 14
  size_t ac14_size_bytes = sizeof(data_type) * 512;
  size_t w14_size_bytes = sizeof(data_type) * 262144;
  size_t b14_size_bytes = sizeof(data_type) * 512;
  size_t ps14_size_bytes = sizeof(DSP_data_type) * 512;
  std::vector<data_type, aligned_allocator<data_type>> ac14(ac14_size_bytes);
  std::vector<data_type, aligned_allocator<data_type>> weight14(w14_size_bytes);
  std::vector<data_type, aligned_allocator<data_type>> bias14(b14_size_bytes);
  std::vector<DSP_data_type, aligned_allocator<DSP_data_type>> ps14(ps14_size_bytes);
  // layer 15
  size_t ac15_size_bytes = sizeof(data_type) * 512;
  size_t w15_size_bytes = sizeof(data_type) * 262144;
  size_t b15_size_bytes = sizeof(data_type) * 512;
  size_t ps15_size_bytes = sizeof(DSP_data_type) * 512;
  std::vector<data_type, aligned_allocator<data_type>> ac15(ac15_size_bytes);
  std::vector<data_type, aligned_allocator<data_type>> weight15(w15_size_bytes);
  std::vector<data_type, aligned_allocator<data_type>> bias15(b15_size_bytes);
  std::vector<DSP_data_type, aligned_allocator<DSP_data_type>> ps15(ps15_size_bytes);
  // layer 16
  size_t ac16_size_bytes = sizeof(data_type) * 512;
  size_t w16_size_bytes = sizeof(data_type) * 16384;
  size_t b16_size_bytes = sizeof(data_type) * 32;
  size_t ps16_size_bytes = sizeof(DSP_data_type) * 32;
  std::vector<data_type, aligned_allocator<data_type>> ac16(ac16_size_bytes);
  std::vector<data_type, aligned_allocator<data_type>> weight16(w16_size_bytes);
  std::vector<data_type, aligned_allocator<data_type>> bias16(b16_size_bytes);
  std::vector<DSP_data_type, aligned_allocator<DSP_data_type>> ps16(ps16_size_bytes);
  //size_t label_size_bytes = sizeof(data_type) * 1;std::vector<data_type, aligned_allocator<data_type>> label(label_size_bytes);
  // global memory variables
  size_t mem_size_bytes = sizeof(axi_data_type) * data_mem_size;
  size_t w_mem_size_bytes = sizeof(axi_data_type) * weight_mem_size;
  std::vector<axi_data_type, aligned_allocator<axi_data_type>> weight_mem(w_mem_size_bytes);
  std::vector<axi_data_type, aligned_allocator<axi_data_type>> mem(mem_size_bytes);

  std::vector<axi_data_type, aligned_allocator<axi_data_type>> mem_image1(mem_size_bytes);

  std::vector<axi_data_type, aligned_allocator<axi_data_type>> mem_image2(mem_size_bytes);

  std::vector<axi_data_type, aligned_allocator<axi_data_type>> mem_image3(mem_size_bytes);

  std::vector<axi_data_type, aligned_allocator<axi_data_type>> mem_image4(mem_size_bytes);

  cl_int err;
  // Parsing the input image, weight and bias files
  std::cout << "before file 1" << std::endl;
  std::ifstream file;
  std::string image_file_0 = "/workspace/multiple_kernels_single_layer/src/images_0.txt";
  if (-1 == parse_layer(file, image_file_0, ac1)) {
    std::cout << "Error opening the image0 file\n";
    return 0;
  }

  std::ifstream file1;
  std::string image_file_1 = "/workspace/multiple_kernels_single_layer/src/images_1.txt";
  if (-1 == parse_layer(file1, image_file_1, ac1_image1)) {
	  std::cout << "Error opening the image1 file\n";
	  return 0;
  }

  std::ifstream file2;
  std::string image_file_2 = "/workspace/multiple_kernels_single_layer/src/images_2.txt";
  if (-1 == parse_layer(file2, image_file_2, ac1_image2)) {
	  std::cout << "Error opening the image2 file\n";
	  return 0;
  }

  std::ifstream file3;
  std::string image_file_3 = "/workspace/multiple_kernels_single_layer/src/images_3.txt";
  if (-1 == parse_layer(file3, image_file_3, ac1_image3)) {
	  std::cout << "Error opening the image2 file\n";
	  return 0;
  }

  std::ifstream file4;
  std::string image_file_4 = "/workspace/multiple_kernels_single_layer/src/images_4.txt";
  if (-1 == parse_layer(file4, image_file_4, ac1_image4)) {
	  std::cout << "Error opening the image2 file\n";
	  return 0;
  }

  const std::string weight_1_file = "/workspace/multiple_kernels_single_layer/src/vgg16_new_0_weights";
  const std::string bias_1_file = "/workspace/multiple_kernels_single_layer/src/vgg16_new_0_bias";
  if (-1 == parse_layer(file, weight_1_file, weight1)) {
    std::cout << "Error opening the weight file for layer 1\n";
    return 0;
  }
  if (-1 == parse_layer(file, bias_1_file, bias1)) {
    std::cout << "Error opening the weight file for layer 1\n";
    return 0;
  }

  const std::string weight_2_file = "/workspace/multiple_kernels_single_layer/src/vgg16_new_1_weights";
  const std::string bias_2_file = "/workspace/multiple_kernels_single_layer/src/vgg16_new_1_bias";
  if (-1 == parse_layer(file, weight_2_file, weight2)) {
    std::cout << "Error opening the weight file for layer 2\n";
    return 0;
  }
  if (-1 == parse_layer(file, bias_2_file, bias2)) {
    std::cout << "Error opening the weight file for layer 2\n";
    return 0;
  }
#if 0
  const std::string weight_3_file = "/workspace/multiple_kernels_single_layer/src/vgg16_new_2_weights";
  const std::string bias_3_file = "/workspace/multiple_kernels_single_layer/src/vgg16_new_2_bias";
  if (-1 == parse_layer(file, weight_3_file, weight3)) {
    std::cout << "Error opening the weight file for layer 3\n";
    return 0;
  }
  if (-1 == parse_layer(file, bias_3_file, bias3)) {
    std::cout << "Error opening the weight file for layer 3\n";
    return 0;
  }
  const std::string weight_4_file = "/workspace/multiple_kernels_single_layer/src/vgg16_new_3_weights";
  const std::string bias_4_file = "/workspace/multiple_kernels_single_layer/src/vgg16_new_3_bias";
  if (-1 == parse_layer(file, weight_4_file, weight4)) {
    std::cout << "Error opening the weight file for layer 4\n";
    return 0;
  }
  if (-1 == parse_layer(file, bias_4_file, bias4)) {
    std::cout << "Error opening the weight file for layer 4\n";
    return 0;
  }
  const std::string weight_5_file = "/workspace/multiple_kernels_single_layer/src/vgg16_new_4_weights";
  const std::string bias_5_file = "/workspace/multiple_kernels_single_layer/src/vgg16_new_4_bias";
  if (-1 == parse_layer(file, weight_5_file, weight5)) {
    std::cout << "Error opening the weight file for layer 5\n";
    return 0;
  }
  if (-1 == parse_layer(file, bias_5_file, bias5)) {
    std::cout << "Error opening the weight file for layer 5\n";
    return 0;
  }
  const std::string weight_6_file = "/workspace/multiple_kernels_single_layer/src/vgg16_new_5_weights";
  const std::string bias_6_file = "/workspace/multiple_kernels_single_layer/src/vgg16_new_5_bias";
  if (-1 == parse_layer(file, weight_6_file, weight6)) {
    std::cout << "Error opening the weight file for layer 6\n";
    return 0;
  }
  if (-1 == parse_layer(file, bias_6_file, bias6)) {
    std::cout << "Error opening the weight file for layer 6\n";
    return 0;
  }
  const std::string weight_7_file = "/workspace/multiple_kernels_single_layer/src/vgg16_new_6_weights";
  const std::string bias_7_file = "/workspace/multiple_kernels_single_layer/src/vgg16_new_6_bias";
  if (-1 == parse_layer(file, weight_7_file, weight7)) {
    std::cout << "Error opening the weight file for layer 7\n";
    return 0;
  }
  if (-1 == parse_layer(file, bias_7_file, bias7)) {
    std::cout << "Error opening the weight file for layer 7\n";
    return 0;
  }
  const std::string weight_14_file = "/workspace/multiple_kernels_single_layer/src/vgg16_new_13_weights";
  const std::string bias_14_file = "/workspace/multiple_kernels_single_layer/src/vgg16_new_13_bias";
  std::cout << "before file 14" << std::endl;
  if (-1 == parse_layer(file, weight_14_file, weight14)) {
    std::cout << "Error opening the weight file for layer 14\n";
    return 0;
  }
  std::cout << "before bias 14" << std::endl;
  if (-1 == parse_layer(file, bias_14_file, bias14)) {
    std::cout << "Error opening the weight file for layer 14\n";
    return 0;
  }
  const std::string weight_15_file = "/workspace/multiple_kernels_single_layer/src/vgg16_new_14_weights";
  const std::string bias_15_file = "/workspace/multiple_kernels_single_layer/src/vgg16_new_14_bias";
  std::cout << "before file 15" << std::endl;
  if (-1 == parse_layer(file, weight_15_file, weight15)) {
    std::cout << "Error opening the weight file for layer 15\n";
    return 0;
  }
  std::cout << "before bias 15" << std::endl;
  if (-1 == parse_layer(file, bias_15_file, bias15)) {
    std::cout << "Error opening the weight file for layer 15\n";
    return 0;
  }
  std::cout << "before file 16" << std::endl;
  const std::string weight_16_file = "/workspace/multiple_kernels_single_layer/src/vgg16_new_15_weights";
  const std::string bias_16_file = "/workspace/multiple_kernels_single_layer/src/vgg16_new_15_bias";
  std::cout << "before weight 16" << std::endl;
  if (-1 == parse_layer(file, weight_16_file, weight16)) {
    std::cout << "Error opening the weight file for layer 16\n";
    return 0;
  }
  std::cout << "before bias 16" << std::endl;
  if (-1 == parse_layer(file, bias_16_file, bias16)) {
    std::cout << "Error opening the weight file for layer 16\n";
    return 0;
  }
  std::cout << "after bias 16" << std::endl;
#endif
  // Writing to global memories
  for (int i = 0; i < data_mem_size; i++) {
    if (i < 1156)
      for (int j = 0; j < SYS_SIZE; j++){
        store_fixed_val<data_type, axi_data_type>(mem[i],j, ac1[i*SYS_SIZE + j]);
      }
    else
      mem[i] = (axi_data_type) 0;
  }

  for (int i = 0; i < data_mem_size; i++) {
      if (i < 1156)
        for (int j = 0; j < SYS_SIZE; j++){
          store_fixed_val<data_type, axi_data_type>(mem_image1[i],j, ac1_image1[i*SYS_SIZE + j]);
        }
      else
        mem_image1[i] = (axi_data_type) 0;
    }

  for (int i = 0; i < data_mem_size; i++) {
      if (i < 1156)
        for (int j = 0; j < SYS_SIZE; j++){
          store_fixed_val<data_type, axi_data_type>(mem_image2[i],j, ac1_image2[i*SYS_SIZE + j]);
          store_fixed_val<data_type, axi_data_type>(mem_image3[i],j, ac1_image3[i*SYS_SIZE + j]);
          store_fixed_val<data_type, axi_data_type>(mem_image4[i],j, ac1_image4[i*SYS_SIZE + j]);
        }
      else {
        mem_image2[i] = (axi_data_type) 0;
        mem_image3[i] = (axi_data_type) 0;
        mem_image4[i] = (axi_data_type) 0;
      }
  }

  std::cout << "before added tests" << std::endl;

  for (int i = 0; i < 576; i++) {
    for (int j = 0; j < SYS_SIZE; j++){
      store_fixed_val<data_type, axi_data_type>(weight_mem[STARTING_LOC_W_1 + i],j, weight1[i*SYS_SIZE + j]);
    }
  }
  for (int i = 0; i < 2; i++) {
    for (int j = 0; j < SYS_SIZE; j++){
      store_fixed_val<data_type, axi_data_type>(weight_mem[STARTING_LOC_B_1 + i],j, bias1[i*SYS_SIZE + j]);
    }
  }


  for (int i = 0; i < 1152; i++) {
    for (int j = 0; j < SYS_SIZE; j++){
      store_fixed_val<data_type, axi_data_type>(weight_mem[STARTING_LOC_W_2 + i],j, weight2[i*SYS_SIZE + j]);
    }
  }
  for (int i = 0; i < 2; i++) {
    for (int j = 0; j < SYS_SIZE; j++){
      store_fixed_val<data_type, axi_data_type>(weight_mem[STARTING_LOC_B_2 + i],j, bias2[i*SYS_SIZE + j]);
    }
  }
#if 0
  for (int i = 0; i < 2304; i++) {
    for (int j = 0; j < SYS_SIZE; j++){
      store_fixed_val<data_type, axi_data_type>(weight_mem[STARTING_LOC_W_3 + i],j, weight3[i*SYS_SIZE + j]);
    }
  }
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < SYS_SIZE; j++){
      store_fixed_val<data_type, axi_data_type>(weight_mem[STARTING_LOC_B_3 + i],j, bias3[i*SYS_SIZE + j]);
    }
  }

  for (int i = 0; i < 4608; i++) {
    for (int j = 0; j < SYS_SIZE; j++){
      store_fixed_val<data_type, axi_data_type>(weight_mem[STARTING_LOC_W_4 + i],j, weight4[i*SYS_SIZE + j]);
    }
  }
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < SYS_SIZE; j++){
      store_fixed_val<data_type, axi_data_type>(weight_mem[STARTING_LOC_B_4 + i],j, bias4[i*SYS_SIZE + j]);
    }
  }

  for (int i = 0; i < 9216; i++) {
    for (int j = 0; j < SYS_SIZE; j++){
      store_fixed_val<data_type, axi_data_type>(weight_mem[STARTING_LOC_W_5 + i],j, weight5[i*SYS_SIZE + j]);
    }
  }
  for (int i = 0; i < 8; i++) {
    for (int j = 0; j < SYS_SIZE; j++){
      store_fixed_val<data_type, axi_data_type>(weight_mem[STARTING_LOC_B_5 + i],j, bias5[i*SYS_SIZE + j]);
    }
  }

  for (int i = 0; i < 18432; i++) {
    for (int j = 0; j < SYS_SIZE; j++){
      store_fixed_val<data_type, axi_data_type>(weight_mem[STARTING_LOC_W_6 + i],j, weight6[i*SYS_SIZE + j]);
    }
  }
  for (int i = 0; i < 8; i++) {
    for (int j = 0; j < SYS_SIZE; j++){
      store_fixed_val<data_type, axi_data_type>(weight_mem[STARTING_LOC_B_6 + i],j, bias6[i*SYS_SIZE + j]);
    }
  }


  for (int i = 0; i < 18432; i++) {
    for (int j = 0; j < SYS_SIZE; j++){
      store_fixed_val<data_type, axi_data_type>(weight_mem[STARTING_LOC_W_7 + i],j, weight7[i*SYS_SIZE + j]);
    }
  }
  for (int i = 0; i < 8; i++) {
    for (int j = 0; j < SYS_SIZE; j++){
      store_fixed_val<data_type, axi_data_type>(weight_mem[STARTING_LOC_B_7 + i],j, bias7[i*SYS_SIZE + j]);
    }
  }

  for (int i = 0; i < 8192; i++) {
    for (int j = 0; j < SYS_SIZE; j++){
      store_fixed_val<data_type, axi_data_type>(weight_mem[STARTING_LOC_W_14 + i],j, weight14[i*SYS_SIZE + j]);
    }
  }
  for (int i = 0; i < 16; i++) {
    for (int j = 0; j < SYS_SIZE; j++){
      store_fixed_val<data_type, axi_data_type>(weight_mem[STARTING_LOC_B_14 + i],j, bias14[i*SYS_SIZE + j]);
    }
  }

  for (int i = 0; i < 8192; i++) {
    for (int j = 0; j < SYS_SIZE; j++){
      store_fixed_val<data_type, axi_data_type>(weight_mem[STARTING_LOC_W_15 + i],j, weight15[i*SYS_SIZE + j]);
    }
  }
  for (int i = 0; i < 16; i++) {
    for (int j = 0; j < SYS_SIZE; j++){
      store_fixed_val<data_type, axi_data_type>(weight_mem[STARTING_LOC_B_15 + i],j, bias15[i*SYS_SIZE + j]);
    }
  }

  for (int i = 0; i < 512; i++) {
    for (int j = 0; j < SYS_SIZE; j++){
      store_fixed_val<data_type, axi_data_type>(weight_mem[STARTING_LOC_W_16 + i],j, weight16[i*SYS_SIZE + j]);
    }
  }
  for (int i = 0; i < 1; i++) {
    for (int j = 0; j < SYS_SIZE; j++){
      store_fixed_val<data_type, axi_data_type>(weight_mem[STARTING_LOC_B_16 + i],j, bias16[i*SYS_SIZE + j]);
    }
  }
#endif

  // Modifications

  vector<cl::Event> wordWait;
  vector<cl::Event> krnlWait;
  vector<cl::Event> flagWait;

  vector<cl::Event> wordWait_2;
  vector<cl::Event> krnlWait_2;
  vector<cl::Event> flagWait_2;

  cl::Event buffDone,krnlDone,flagDone;

  // End of modifications

  // OPENCL HOST CODE AREA START
  auto devices = xcl::get_xil_devices();
  auto device = devices[0];
  OCL_CHECK(err, cl::Context context(device, NULL, NULL, NULL, &err));
  OCL_CHECK(err, cl::CommandQueue q(context, device, CL_QUEUE_PROFILING_ENABLE | CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE, &err));
  //OCL_CHECK(err, cl::CommandQueue q(context, device, CL_QUEUE_PROFILING_ENABLE, &err));


  OCL_CHECK(err, std::string device_name = device.getInfo<CL_DEVICE_NAME>(&err));
  auto fileBuf = xcl::read_binary_file(binaryFile);
  cl::Program::Binaries bins{{fileBuf.data(), fileBuf.size()}};
  devices.resize(1);
  OCL_CHECK(err, cl::Program program(context, devices, bins, NULL, &err));
  OCL_CHECK(err, cl::Kernel krnl_vgg16_new(program, "vgg16_new_top:{vgg16_new_top_1}", &err));
  OCL_CHECK(err, cl::Kernel krnl_vgg16_new1(program, "vgg16_new_top:{vgg16_new_top_2}", &err));
  //cl_kernel krnl_vgg16_new = clCreateKernel(program,"vgg16_new_top:{vggA, vggC}",&err);
  //cl_kernel krnl_vgg16_new1 = clCreateKernel(program,"vgg16_new_top:{vggB}",&err);
  //OCL_CHECK(err, cl::Kernel krnl_vgg16_new1(program, "vgg16_new_top:{vggB}", &err));

#if 0
  cl::Buffer buffer_total_mem(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, mem_size_bytes*sizeof(uint),mem.data());
  cl::Buffer buffer_total_weight(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, w_mem_size_bytes*sizeof(uint),weight_mem.data());
  cl::Buffer buffer_total_mem_op(context, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, mem_size_bytes*sizeof(uint),mem.data());

  OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_total_mem, buffer_total_weight}, CL_MIGRATE_MEM_OBJECT_CONTENT_UNDEFINED));

  OCL_CHECK(err, err = krnl_vgg16_new.setArg(0, buffer_total_mem));
  OCL_CHECK(err, err = krnl_vgg16_new.setArg(1, buffer_total_weight));
  OCL_CHECK(err, err = krnl_vgg16_new.setArg(2, buffer_total_mem_op));
#endif

  //Allocate Buffer in Global Memory
  OCL_CHECK(err, cl::Buffer buffer_mem(context,
        CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, mem_size_bytes, mem.data(), &err));
  OCL_CHECK(err, cl::Buffer buffer_weight(context,
        CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, w_mem_size_bytes, weight_mem.data(), &err));

  OCL_CHECK(err, cl::Buffer buffer_mem_image1(context,
          CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, mem_size_bytes, mem_image1.data(), &err));
  OCL_CHECK(err, cl::Buffer buffer_weight_image1(context,
          CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, w_mem_size_bytes, weight_mem.data(), &err));

  OCL_CHECK(err, cl::Buffer buffer_mem_image2(context,
          CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, mem_size_bytes, mem_image2.data(), &err));
  OCL_CHECK(err, cl::Buffer buffer_weight_image2(context,
          CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, w_mem_size_bytes, weight_mem.data(), &err));

  OCL_CHECK(err, cl::Buffer buffer_mem_image3(context,
            CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, mem_size_bytes, mem_image3.data(), &err));

  OCL_CHECK(err, cl::Buffer buffer_mem_image4(context,
              CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, mem_size_bytes, mem_image4.data(), &err));


  //Copy input data to device global memory
  OCL_CHECK(err, err = krnl_vgg16_new.setArg(0, buffer_mem));
  OCL_CHECK(err, err = krnl_vgg16_new.setArg(1, buffer_weight));
  OCL_CHECK(err, err = krnl_vgg16_new.setArg(2, buffer_mem));
  OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_mem, buffer_weight}, 0 /* 0 means from host*/, NULL, &buffDone));
  wordWait.push_back(buffDone);
  OCL_CHECK(err, err = q.enqueueTask(krnl_vgg16_new, &wordWait, &krnlDone));
  krnlWait.push_back(krnlDone);
  OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_mem}, CL_MIGRATE_MEM_OBJECT_HOST, &krnlWait, &flagDone));
  flagWait.push_back(flagDone);

  OCL_CHECK(err, err = krnl_vgg16_new1.setArg(0, buffer_mem_image1));
  OCL_CHECK(err, err = krnl_vgg16_new1.setArg(1, buffer_weight_image1));
  OCL_CHECK(err, err = krnl_vgg16_new1.setArg(2, buffer_mem_image1));
  OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_mem_image1, buffer_weight_image1}, 0 /* 0 means from host*/, &wordWait, &buffDone));
  wordWait.push_back(buffDone);
  OCL_CHECK(err, err = q.enqueueTask(krnl_vgg16_new1, &wordWait, &krnlDone));
  krnlWait.push_back(krnlDone);
  OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_mem_image1}, CL_MIGRATE_MEM_OBJECT_HOST, &krnlWait, &flagDone));
  flagWait.push_back(flagDone);

  OCL_CHECK(err, err = krnl_vgg16_new.setArg(0, buffer_mem_image2));
  OCL_CHECK(err, err = krnl_vgg16_new.setArg(1, buffer_weight_image2));
  OCL_CHECK(err, err = krnl_vgg16_new.setArg(2, buffer_mem_image2));
  OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_mem_image2, buffer_weight_image2}, 0 /* 0 means from host*/, NULL, &buffDone));
  wordWait.push_back(buffDone);
  OCL_CHECK(err, err = q.enqueueTask(krnl_vgg16_new, &wordWait, &krnlDone));
  krnlWait.push_back(krnlDone);
  OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_mem_image2}, CL_MIGRATE_MEM_OBJECT_HOST, &krnlWait, &flagDone));
  flagWait.push_back(flagDone);

  OCL_CHECK(err, err = krnl_vgg16_new.setArg(0, buffer_mem_image3));
  OCL_CHECK(err, err = krnl_vgg16_new.setArg(1, buffer_weight));
  OCL_CHECK(err, err = krnl_vgg16_new.setArg(2, buffer_mem_image3));
  OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_mem_image3, buffer_weight}, 0 /* 0 means from host*/, &wordWait, &buffDone));
  wordWait.push_back(buffDone);
  OCL_CHECK(err, err = q.enqueueTask(krnl_vgg16_new, &krnlWait, &krnlDone));
  krnlWait.push_back(krnlDone);
  OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_mem_image3}, CL_MIGRATE_MEM_OBJECT_HOST, &krnlWait, &flagDone));
  flagWait.push_back(flagDone);


#if 1
  OCL_CHECK(err, err = krnl_vgg16_new1.setArg(0, buffer_mem_image4));
  OCL_CHECK(err, err = krnl_vgg16_new1.setArg(1, buffer_weight));
  OCL_CHECK(err, err = krnl_vgg16_new1.setArg(2, buffer_mem_image4));
  OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_mem_image4, buffer_weight}, 0 /* 0 means from host*/, NULL, &buffDone));
  wordWait.push_back(buffDone);
  OCL_CHECK(err, err = q.enqueueTask(krnl_vgg16_new1, &krnlWait, &krnlDone));
  krnlWait.push_back(krnlDone);
  OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_mem_image4}, CL_MIGRATE_MEM_OBJECT_HOST, &krnlWait, &flagDone));
  flagWait.push_back(flagDone);
#endif

  for(int i = 0; i < 5; i++)
	  flagWait[i].wait();
  //Launch the Kernel

  //OPENCL HOST CODE AREA END
#if 0
  int label = 3;
  int HW_label = 0;
  float max_prob = 0.0;
  for (int i = 0; i < 1; i++) {
    for (int j = 0; j < 32; j++){
      float read_data = (float) get_fixed_val<data_type, axi_data_type>(mem[i + STARTING_LOC_RES_16], j);
      std::cout << "HW value of " << j << " is " << read_data << std::endl;
      //std::cout << "SW value of " << j << " is " << float(ps7[i*SYS_SIZE+j]) << std::endl;
      //std::cout << "SW value of " << i * 32 + j << " is " << float(ps16[i * 32 +j]) << std::endl;
      if ( read_data > max_prob){
        max_prob = read_data;
        HW_label= i*SYS_SIZE + j;
      }
    }
  }
  std::cout << "HW label is " << HW_label << " Target label is " << label << std::endl;
  int match = 0;
  if(HW_label != label)
    match = 1;

  return (match ? EXIT_FAILURE: EXIT_SUCCESS);
#endif
  std::cout << "Host_code end" << std::endl;
  return EXIT_SUCCESS;
  }
