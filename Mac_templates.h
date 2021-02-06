//################################################################################
//#
//#                           Author: Arash Fayyazi
//#                          E-mail: fayyazi@usc.edu
//#
//################################################################################
#define AP_INT_MAX_W 10000
#include <ap_int.h>
#include <hls_stream.h>
#include "Mac_config.h"
#include "Hybrid_config.h"
#include <iostream>
#include <fstream>
using namespace std;

#ifndef __MACTemplates_H__FG
#define __MACTemplates_H__

const unsigned int mem_factor = SYS_SIZE;
#define max(a,b) ((a)>(b)?(a):(b))
// some miscellaneous functions
////////////////////////////////////////////////////////////////////////////////
// reg definition
////////////////////////////////////////////////////////////////////////////////
template<typename T>
T reg(T d) {
#pragma HLS PIPELINE II=1
#pragma HLS INTERFACE ap_ctrl_none register port=return
#pragma HLS INLINE off
	return d;
}

////////////////////////////////////////////////////////////////////////////////
// indexing a wide data
////////////////////////////////////////////////////////////////////////////////
template <typename T, typename T_axi>
inline T get_fixed_val(T_axi ap, int index)
{
#pragma HLS INLINE
  T fixed_val;
  fixed_val.range() = ap.range((index+1)* DT_WIDTH - 1, index * DT_WIDTH);
  return fixed_val;
}

////////////////////////////////////////////////////////////////////////////////
// Storing into a wide data
////////////////////////////////////////////////////////////////////////////////
template <typename T, typename T_axi>
inline void store_fixed_val(T_axi &ap, int index, T val)
{
#pragma HLS INLINE
  ap.range((index+1) * DT_WIDTH - 1, index * DT_WIDTH) = val.range();
}

////////////////////////////////////////////////////////////////////////////////
// put weights in the first fifo
////////////////////////////////////////////////////////////////////////////////
void PE_weight_put (
	axi_data_type *mem_w_in,
	addr_ind_type bInd,
	data_fifo &bOut
	) {
	for(loop_ind_type i = 0; i < SYS_SIZE; i++){
	#pragma HLS PIPELINE
		bOut.write(mem_w_in[bInd + i]);
		/*if(i == 0)
			std::cout << "weight in put_weight i = " << bInd+i << " weight is = " << float(mem_w_in[bInd + i])
																			<< std::endl;
	*/
	}
}

////////////////////////////////////////////////////////////////////////////////
// Load weights from FIFO and store it to BRAMs next to DSPs and also pass the
// data to next fifo
////////////////////////////////////////////////////////////////////////////////
void PE_load_W (
	data_fifo &bIn,
	data_fifo &bOut,
	data_type BRAM[][BRAM_SIZE],
	BRAM_addr_Type addr_w,
	const unsigned fifo_num
	) {
//#pragma HLS STREAM variable = bIn
//#pragma HLS ARRAY_PARTITION variable=BRAM complete dim=1
	axi_data_type b_in= bIn.read();
	for (int j = 0; j < SYS_SIZE; j++) {
	#pragma HLS UNROLL
		BRAM[j][addr_w] = get_fixed_val<data_type, axi_data_type>(b_in, j);
		/*
		if ((fifo_num == 0 || fifo_num == 2) && (j == 0 || j == 10 || j == 11))
		cout << "PE_load " << fifo_num << " and "<< j << " addr is " << addr_w << " weight is = " << float(BRAM[j][addr_w])
																<< endl;
																*/
	}
	//bIn >> b_in;
	//bOut << b_in;

	for (int j = 0; j < SYS_SIZE - fifo_num - 1; j++) {
//#pragma HLS PIPELINE
		b_in = bIn.read();
		bOut.write(b_in);
	}
}
////////////////////////////////////////////////////////////////////////////////
// Load weights from FIFO and store it to BRAMs next to DSPs
////////////////////////////////////////////////////////////////////////////////
void PE_load_last_W (
	data_fifo &bIn,
	data_type BRAM[][BRAM_SIZE],
	BRAM_addr_Type addr_w,
	loop_ind_type fifo_num
	) {
#pragma HLS ARRAY_PARTITION variable=BRAM complete dim=1
	axi_data_type b_in= bIn.read();
	for (int j = 0; j < SYS_SIZE; j++) {
	#pragma HLS UNROLL
		// read a and b for doing multiplication, the output is acc += a * b
		BRAM[j][addr_w] = get_fixed_val<data_type, axi_data_type>(b_in, j);
	}
}
////////////////////////////////////////////////////////////////////////////////
// Scattering weights to BRAMs
////////////////////////////////////////////////////////////////////////////////
void PE_Scatter_W(
	data_type BRAM[][SYS_SIZE][BRAM_SIZE],
	BRAM_addr_Type addr_w,
	axi_data_type *mem_w_in,
	addr_ind_type bInd
	){
#pragma HLS allocation instances=PE_Scatter_W limit=1 function
#pragma HLS INLINE off
#pragma HLS RESOURCE variable=BRAM core=RAM_S2P_BRAM
#pragma HLS ARRAY_PARTITION variable=BRAM complete dim=1
#pragma HLS ARRAY_PARTITION variable=BRAM complete dim=2

	#pragma HLS DATAFLOW

	data_fifo PE_fifo[SYS_SIZE];
	#pragma HLS resource variable=PE_fifo core= FIFO_LUTRAM // RAM_2P_LUTRAM  //FIFO_LUTRAM // RAM_2P_LUTRAM

		#pragma HLS STREAM variable=PE_fifo[0] depth=32
	#pragma HLS resource variable=PE_fifo[0] core= RAM_2P_LUTRAM //FIFO_LUTRAM
	#pragma HLS STREAM variable=PE_fifo[1] depth=31
	#pragma HLS STREAM variable=PE_fifo[2] depth=30
	#pragma HLS STREAM variable=PE_fifo[3] depth=29
	#pragma HLS STREAM variable=PE_fifo[4] depth=28
	#pragma HLS STREAM variable=PE_fifo[5] depth=27
	#pragma HLS STREAM variable=PE_fifo[6] depth=26
	#pragma HLS STREAM variable=PE_fifo[7] depth=25
	#pragma HLS STREAM variable=PE_fifo[8] depth=24
	#pragma HLS STREAM variable=PE_fifo[9] depth=23
	#pragma HLS STREAM variable=PE_fifo[10] depth=22
	#pragma HLS STREAM variable=PE_fifo[11] depth=21
	#pragma HLS STREAM variable=PE_fifo[12] depth=20
	#pragma HLS STREAM variable=PE_fifo[13] depth=19
	#pragma HLS STREAM variable=PE_fifo[14] depth=18
	#pragma HLS STREAM variable=PE_fifo[15] depth=17
	#pragma HLS STREAM variable=PE_fifo[16] depth=16
	#pragma HLS STREAM variable=PE_fifo[17] depth=15
	#pragma HLS STREAM variable=PE_fifo[18] depth=14
	#pragma HLS STREAM variable=PE_fifo[19] depth=13
	#pragma HLS STREAM variable=PE_fifo[20] depth=12
	#pragma HLS STREAM variable=PE_fifo[21] depth=11
	#pragma HLS STREAM variable=PE_fifo[22] depth=10
	#pragma HLS STREAM variable=PE_fifo[23] depth=9
	#pragma HLS STREAM variable=PE_fifo[24] depth=8
	#pragma HLS STREAM variable=PE_fifo[25] depth=7
	#pragma HLS STREAM variable=PE_fifo[26] depth=6
	#pragma HLS STREAM variable=PE_fifo[27] depth=5
	#pragma HLS STREAM variable=PE_fifo[28] depth=4
	#pragma HLS STREAM variable=PE_fifo[29] depth=3
	#pragma HLS STREAM variable=PE_fifo[30] depth=2
	#pragma HLS STREAM variable=PE_fifo[31] depth=1
	PE_weight_put(mem_w_in, bInd, PE_fifo[0]);
	for (int i = 0; i < SYS_SIZE-1; i++) {
	#pragma HLS UNROLL
		PE_load_W(PE_fifo[i],PE_fifo[i+1], BRAM[i], addr_w, i);
	}
	PE_load_last_W(PE_fifo[SYS_SIZE-1], BRAM[SYS_SIZE-1], addr_w, SYS_SIZE-1);
}


////////////////////////////////////////////////////////////////////////////////
// Systolic array core -- MAC-based operation
////////////////////////////////////////////////////////////////////////////////
void SYS_Core(axi_data_type a_val, BRAM_addr_Type addr,
		DSP_data_type oregC[SYS_SIZE][SYS_SIZE],
		data_type BRAM[SYS_SIZE][SYS_SIZE][BRAM_SIZE], bool MACC_En) {
#pragma HLS allocation instances=SYS_Core limit=1 function
#pragma HLS INLINE off

#pragma HLS PIPELINE II=1

#pragma HLS ARRAY_PARTITION variable=oregC complete dim=0

#pragma HLS RESOURCE variable=BRAM core=RAM_S2P_BRAM
#pragma HLS ARRAY_PARTITION variable=BRAM complete dim=1
#pragma HLS ARRAY_PARTITION variable=BRAM complete dim=2

	static DSP_data_type result[SYS_SIZE][SYS_SIZE];
#pragma HLS ARRAY_PARTITION variable=result complete dim=0
	MULT_data_type mult[SYS_SIZE][SYS_SIZE];
#pragma HLS ARRAY_PARTITION variable=mult complete dim=0
	data_type a_value_buf[SYS_SIZE + 1][SYS_SIZE];
#pragma HLS ARRAY_PARTITION variable=a_value_buf complete dim=0

	BRAM_addr_Type addr_buf[SYS_SIZE + 1];
#pragma HLS ARRAY_PARTITION variable=addr_buf complete dim=1
	bool MAC_En_buf[SYS_SIZE + 1];
#pragma HLS ARRAY_PARTITION variable=addr_buf complete dim=1

	addr_buf[0] = addr;
	MAC_En_buf[0] = MACC_En;

#pragma HLS DEPENDENCE variable=result intra false
	for (int i = 0; i < SYS_SIZE; i++) { // row
#pragma HLS UNROLL
		a_value_buf[0][i] = get_fixed_val<data_type, axi_data_type>(a_val, i);
		for (int j = 0; j < SYS_SIZE; j++) { // column
#pragma HLS UNROLL
#pragma HLS PIPELINE
			// MAC
			mult[j][i] = a_value_buf[j][i] * BRAM[i][j][addr_buf[j]];
			/*if ((i == 0 || i == 2) && (j == 0 || j == 10 || j == 11))
				cout << "BRAM[ " << i << " ][ " << j <<  " ][ " << addr_buf[j] << " ]: " <<  float(BRAM[i][j][addr_buf[j]]) << endl;
			*/
			result[j][i] = (MAC_En_buf[j]) ? result[j][i] : (DSP_data_type) 0;
			result[j][i] = result[j][i] + mult[j][i];
			// Reg
			a_value_buf[j + 1][i] = reg(a_value_buf[j][i]);
			MAC_En_buf[j + 1] = reg(MAC_En_buf[j]);
			addr_buf[j + 1] = reg(addr_buf[j]);

		}
	}

	for (int i = 0; i < SYS_SIZE; i++) {
#pragma HLS UNROLL
		for (int j = 0; j < SYS_SIZE; j++) {
#pragma HLS UNROLL
			oregC[j][i] = result[j][i];
		}
	}

}

////////////////////////////////////////////////////////////////////////////////
// Streaming data from main memory to a stream fifo in burst mode
////////////////////////////////////////////////////////////////////////////////
void data_load(int IH_BOUND, int IW_BOUND, int IC_BOUND, int IH_STEP,
int IW_STEP, int OH_BOUND, int OW_BOUND, int OC_BOUND, int OH_STEP, int OW_STEP,
	mem_stream_type *mem,
	axi_data_type local_act[],
	axi_data_type local_ps[],
	addr_ind_type addr_base_ACT,
	addr_ind_type addr_base_PS,
	bool enable
	) {
#pragma HLS allocation instances=data_load limit=1 function
#pragma HLS INLINE off
	if (!enable) {
		return;
	}
	int i = 0;
	bool readACT_bool = true;
	loop_ind_type ih_counter = 0;
	loop_ind_type iw_counter = 0;
	loop_ind_type ic_counter = 0;
	readActive:
	while(readACT_bool){
		#pragma HLS PIPELINE II=1
		addr_ind_type addr_ind = addr_base_ACT + ih_counter + iw_counter + ic_counter;
		local_act[i] = mem[addr_ind];
		i++;
		if (ic_counter == IC_BOUND){
			ic_counter = 0;
			if (iw_counter == IW_BOUND){
				iw_counter = 0;
				if (ih_counter == IH_BOUND){
					readACT_bool = false;
					break;
				}
				else
					ih_counter += IH_STEP;
			}
			else
				iw_counter += IW_STEP;
		}
		else
			ic_counter++;
	}

	int j = 0;
	bool readPS_bool = true;
	loop_ind_type oh_counter = 0;
	loop_ind_type ow_counter = 0;
	loop_ind_type oc_counter = 0;
	readPS:
	while(readPS_bool){
		#pragma HLS PIPELINE II=1
		addr_ind_type addr_ind = addr_base_PS + oh_counter + ow_counter + oc_counter;
		local_ps[j] = mem[addr_ind];
		j++;
		if (oc_counter == OC_BOUND){
			oc_counter = 0;
			if (ow_counter == OW_BOUND){
				ow_counter = 0;
				if (oh_counter == OH_BOUND){
					readPS_bool = false;
					break;
				}
				else
					oh_counter += OH_STEP;
			}
			else
				ow_counter += OW_STEP;
		}
		else
			oc_counter++;
	}
}

////////////////////////////////////////////////////////////////////////////////
// Filling BRAMs with weights- reading weights in burst mode and feed into
// the BRAMs
////////////////////////////////////////////////////////////////////////////////
void filling_BRAM_W_unit(int ONC_BOUND, int WH_BOUND, int IC_BOUND, int ONC_MEM_STEP,
 int WH_MEM_STEP, int IC_MEM_STEP, int ONC_STEP,
 int WH_STEP, int IC_STEP, int OC_BOUND_BB,
 axi_data_type *mem_weight_in, data_type BRAM[SYS_SIZE][SYS_SIZE][BRAM_SIZE], axi_data_type biases[], addr_ind_type addr_base_W, addr_ind_type STARTING_LOC_BIA){
#pragma HLS allocation instances=PE_Scatter_W limit=1 function
#pragma HLS allocation instances=filling_BRAM_W_unit limit=1 function
#pragma HLS INLINE off

#pragma HLS RESOURCE variable=BRAM core=RAM_S2P_BRAM
#pragma HLS ARRAY_PARTITION variable=BRAM complete dim=1
#pragma HLS ARRAY_PARTITION variable=BRAM complete dim=2

	bool readW_bool = true;
	loop_ind_type oNC_counter = 0;
	addr_ind_type oNC_mem_in_count = 0;
	loop_ind_type wh_counter = 0;
	addr_ind_type wh_mem_in_count = 0;
	loop_ind_type ic_counter = 0;
	addr_ind_type ic_mem_in_count = 0;

	readW:
	while(readW_bool){
		#pragma HLS PIPELINE II=1
		addr_ind_type addr_ind = addr_base_W + oNC_mem_in_count + wh_mem_in_count + ic_mem_in_count;
		BRAM_addr_Type addr_w =  oNC_counter + wh_counter + ic_counter;
		PE_Scatter_W(BRAM, addr_w, mem_weight_in, addr_ind);
		if (ic_counter == IC_BOUND){
			ic_mem_in_count = 0;
			ic_counter = 0;
			if (wh_counter == WH_BOUND){
				wh_counter = 0;
				wh_mem_in_count = 0;
				if (oNC_counter == ONC_BOUND){
					readW_bool = false;
					break;
				}
				else{
					oNC_counter+=ONC_STEP;
					oNC_mem_in_count += ONC_MEM_STEP;
				}
			}
			else{
				wh_counter+= WH_STEP;
				wh_mem_in_count += WH_MEM_STEP;
			}
		}
		else{
			ic_counter += IC_STEP;
			ic_mem_in_count += IC_MEM_STEP;
		}
	}
	for(loop_ind_type b_counter = 0; b_counter < OC_BOUND_BB; b_counter++){
	#pragma HLS PIPELINE II=1
		addr_ind_type addr_ind_b = STARTING_LOC_BIA + b_counter;
		biases[b_counter] = mem_weight_in[addr_ind_b];

	}
    /*
	bool readB_bool = true;
	loop_ind_type b_counter = 0;
	readBias:
	while(readB_bool){
	#pragma HLS PIPELINE II=1
		addr_ind_type addr_ind_b = STARTING_LOC_BIA + b_counter - SYS_SIZE;
		for(int j = 0; j < SYS_SIZE; j++)
			biases[b_counter] = mem_bias_in[addr_ind_b + j];
		if (b_counter == OC_BOUND_BB){
			readB_bool = false;
			break;
		}
		else
			b_counter += 1;
	}*/
}


////////////////////////////////////////////////////////////////////////////////
// Streaming data from stream fifo to the main memory in burst mode
////////////////////////////////////////////////////////////////////////////////
void data_store(int OH_BOUND, int OW_BOUND, int OC_BOUND, int OH_STEP, int OW_STEP,
int POSTH_BOUND, int POSTW_BOUND, int POSTC_BOUND, int POSTH_STEP, int POSTW_STEP,
	mem_stream_type *mem,
	mem_stream_type results[OUT_LOCAL_SIZE/SYS_SIZE],
	mem_stream_type store_sys_outputs[OUT_LOCAL_SIZE/SYS_SIZE],
	addr_ind_type addr_base_PS,
	addr_ind_type addr_base_RES,
	bool enable
	) {
#pragma HLS allocation instances=data_store limit=1 function
#pragma HLS INLINE off
	if (!enable) {
		return;
	}
	bool writePS_bool = true;
	loop_ind_type oh_counter = 0;
	loop_ind_type ow_counter = 0;
	loop_ind_type oc_counter = 0;
	int i = 0;
	writePS:
	while(writePS_bool){
		#pragma HLS PIPELINE II=1
	//#pragma HLS dependence variable=occ inter false
		addr_ind_type addr_ind = addr_base_PS + oh_counter + ow_counter + oc_counter;
		mem[addr_ind] = store_sys_outputs[i];
		//for (int ii= 0; ii < SYS_SIZE; ii++)
		//			cout << "sys_result of "<< i << "[ " << ii << " ]: " << float(get_fixed_val<data_type, axi_data_type>(store_sys_outputs[i], ii)) << endl ;
		i++;
		if (oc_counter == OC_BOUND){
			oc_counter = 0;
			if (ow_counter == OW_BOUND){
				ow_counter = 0;
				if (oh_counter == OH_BOUND){
					writePS_bool = false;
					break;
				}
				else
					oh_counter += OH_STEP;
			}
			else
				ow_counter += OW_STEP;
		}
		else
			oc_counter++;
	}
	bool writeRes_bool = true;
	loop_ind_type poh_counter = 0;
	loop_ind_type pow_counter = 0;
	loop_ind_type poc_counter = 0;
	int j = 0;
	writeRes:
	while(writeRes_bool){
		#pragma HLS PIPELINE II=1
	//#pragma HLS dependence variable=occ inter false
		addr_ind_type addr_ind = addr_base_RES + poh_counter +  pow_counter + poc_counter;
		mem[addr_ind] = results[j];
		//for (int ii= 0; ii < SYS_SIZE; ii++)
		//	cout << "result of "<< j << "[ " << ii << " ]: " << float(get_fixed_val<data_type, axi_data_type>(results[j], ii)) << endl ;
		j++;
		if (poc_counter == POSTC_BOUND){
			poc_counter = 0;
			if (pow_counter == POSTW_BOUND){
				pow_counter = 0;
				if (poh_counter == POSTH_BOUND){
					writeRes_bool = false;
					break;
				}
				else
					poh_counter += POSTH_STEP;
			}
			else
				pow_counter += POSTW_STEP;
		}
		else
			poc_counter++;
	}
}
////////////////////////////////////////////////////////////////////////////////
// Systolic unit wrapper- MAC-based operation and adder trees
////////////////////////////////////////////////////////////////////////////////
void systolic_unit (int ONC, int B_OHEIGHT, int B_OWIDTH, int B_WHEIGHT,
int B_WWIDTH, int INC, int B_IWIDTH, int NUM_INC, int STRIDE_H, int STRIDE_W,
	axi_data_type local_act[],
	data_type BRAM[SYS_SIZE][SYS_SIZE][BRAM_SIZE],
	axi_data_type biases[],
	axi_data_type local_ps[],
	axi_data_type local_res[],
	addr_ind_type oc_DC,
	addr_ind_type ic_DC,
	bool last_round,
	bool enable
	) {
#pragma HLS allocation instances=systolic_unit limit=1 function
#pragma HLS allocation instances=SYS_Core limit=1 function
#pragma HLS INLINE off
	//#pragma HLS INLINE
#pragma HLS RESOURCE variable=BRAM core=RAM_S2P_BRAM
#pragma HLS ARRAY_PARTITION variable=BRAM complete dim=1
#pragma HLS ARRAY_PARTITION variable=BRAM complete dim=2

	static DSP_data_type regSYS[SYS_SIZE][SYS_SIZE];
	#pragma HLS ARRAY_PARTITION variable=regSYS complete dim=0
	DSP_data_type AddrTree[SYS_SIZE] = { 0 };
	#pragma HLS ARRAY_PARTITION variable=AddrTree complete dim=1

#pragma HLS DEPENDENCE variable=BRAM intra false
	if (!enable) {
		return;
	}
	bool sysLoops_bool = true;
	loop_ind_type c = 0;
	loop_ind_type oh = 0;
	loop_ind_type ow = 0;
	loop_ind_type wh = 0;
	loop_ind_type ww = 0;
	loop_ind_type r = 0;
	bool MACC_En = false;
	sys_loops:
	while(sysLoops_bool){
	#pragma HLS PIPELINE II=1
		loop_ind_type aInd = (loop_ind_type) ( ((oh * STRIDE_H + wh) * B_IWIDTH + (ow * STRIDE_W + ww)) * INC + r);
		//cout << "input_data_ind: " << aInd << endl ;
		BRAM_addr_Type addr_r = (BRAM_addr_Type)( (((((oc_DC * ONC  + c) * B_WHEIGHT  + wh) * B_WWIDTH + ww) *  NUM_INC) + ic_DC) * INC + r);
		// BRAM_addr_Type addr_r = (BRAM_addr_Type)( (((oc_DC + c) * B_WHEIGHT  + wh) * B_WWIDTH + ww) *  (INC + NUM_INC - 1) + r + ic_DC);
		SYS_Core(local_act[aInd], addr_r, regSYS, BRAM, MACC_En);
		MACC_En = true;
		if (r == INC - 1){
			r = 0;
			if (ww == B_WWIDTH - 1){
				ww = 0;
				if (wh == B_WHEIGHT - 1){
					wh = 0;
					// reading the partial sums value and biases
					loop_ind_type ind = (loop_ind_type) ( (oh * B_OWIDTH + ow) * ONC + c);
					axi_data_type ps_val = local_ps[ind];
					axi_data_type b_val = last_round? (axi_data_type) 0: biases[oc_DC * ONC  + c];
					data_type ps_val_array[SYS_SIZE];
					data_type b_val_array[SYS_SIZE];
					data_type sum_val_array[SYS_SIZE];
					// writing the results to output buffer
					AdderTree1:
					for (int j = 0; j < SYS_SIZE; j++) {
					#pragma HLS UNROLL
						AddrTree[j] = 0;
						AdderTree2:
						for (int k = 0; k < SYS_SIZE; k++) {
						#pragma HLS UNROLL
							AddrTree[j] += regSYS[j][k];
						}
					}


					writeOutBuf:
					for (loop_ind_type j = 0; j < SYS_SIZE; j++) {
					#pragma HLS UNROLL
						ps_val_array[j] = get_fixed_val<data_type, axi_data_type>(ps_val, j);
						b_val_array[j] = get_fixed_val<data_type, axi_data_type>(b_val, j);
						sum_val_array[j] =  (data_type) (AddrTree[j] + ps_val_array[j] + b_val_array[j]);
						/*
						if (layer == 15 and (j == 3) and ind == 0){
							cout << "AddrTree "<< ind << "[ " << j << " ]: " << float(AddrTree[j]) << endl;
							cout << "actual sum_val_array of "<< ind << "[ " << j << " ]: " << float(AddrTree[j] + ps_val_array[j] + b_val_array[j]) << endl;
							cout << "sum_val_array of "<< ind << "[ " << j << " ]: " << float(sum_val_array[j]) << endl;
						}*/

						store_fixed_val<data_type, axi_data_type>(local_res[ind], j, sum_val_array[j]); //+ (DSP_data_type) (get_fixed_val<data_type, axi_data_type>(local_ps[ind], j))
				   }
					MACC_En = false;
					// continue for loops
					if(ow == B_OWIDTH - 1){
						ow = 0;
						if (oh == B_OHEIGHT - 1){
							oh = 0;
							if (c == ONC - 1){
								sysLoops_bool = false;
								break;
							}
							else
								c++;
						}
						else
							oh++;
					}
					else
						ow++;
				}
				else
					wh++;
			}
			else
				ww++;
		}
		else
			r++;
	}

}

void pu_unit(int PS_STREAM_BOUND, int RESULTS_STREAM_BOUND,
int LOOP_COUNT_I, int LOOP_COUNT_J, int LOOP_COUNT_K, int LOOP_COUNT_Q,
int STRIDE_PRE_I, int STRIDE_PRE_J, int STRIDE_PRE_K, int STRIDE_PRE_Q,
int NUM_INST, int STARTING_LOC_PU_LAYER,
	insn_T comp_inst_set[],
	axi_data_type local_ps[OUT_LOCAL_SIZE/SYS_SIZE],
	mem_stream_type store_sys_outputs[OUT_LOCAL_SIZE/SYS_SIZE],
	mem_stream_type results[OUT_LOCAL_SIZE/SYS_SIZE],
	bool max_pool_en, bool relu_en,
	int STRIDE_POOL_2_LAYER, int STRIDE_POOL_3_LAYER,
	int STRIDE_POOL_4_LAYER, bool enable
	) {

	//#pragma HLS INLINE
#pragma HLS allocation instances=pu_unit limit=1 function
#pragma HLS INLINE off

	#pragma HLS ARRAY_PARTITION variable=local_ps cyclic factor=2 dim=1
	#pragma HLS RESOURCE variable=local_ps core=RAM_T2P_BRAM
	//data_type local_post[SYS_SIZE][OUT_LOCAL_SIZE] = {0};
	//#pragma HLS ARRAY_PARTITION variable=local_post complete dim=1

	if (!enable) {
		return;
	}

	// loops for reading data
	bool PULoops_bool = true;
	loop_ind_type ii = 0;
	loop_ind_type jj = 0;
	loop_ind_type kk = 0;
	loop_ind_type qq = 0;
	addr_ind_type out_stride_kk = (addr_ind_type) (LOOP_COUNT_J * LOOP_COUNT_Q);
	addr_ind_type out_stride_ii = (addr_ind_type) (out_stride_kk * LOOP_COUNT_K);
	addr_ind_type out_idx_ii = 0;
	addr_ind_type out_idx_kk = 0;
	addr_ind_type out_idx_qq = 0;
	addr_ind_type in_idx_ii = 0;
	addr_ind_type in_idx_jj = 0;
	addr_ind_type in_idx_kk = 0;
	addr_ind_type in_idx_qq = 0;

	if (max_pool_en){
		max_PULoops:
		while(PULoops_bool){
		#pragma HLS pipeline ii=2
		//#pragma HLS dependence variable=results inter false

			data_type max_res[SYS_SIZE];
			axi_data_type tmp_res;
			addr_ind_type output_base_idx = (addr_ind_type) (out_idx_ii + jj + out_idx_kk + out_idx_qq); //localALUInd
			addr_ind_type inp_max_pool_1_idx = (addr_ind_type) (in_idx_ii + in_idx_jj + in_idx_kk + in_idx_qq);


			addr_ind_type inp_max_pool_2_idx = inp_max_pool_1_idx + STRIDE_POOL_2_LAYER;
			addr_ind_type inp_max_pool_3_idx = inp_max_pool_1_idx + STRIDE_POOL_3_LAYER;
			addr_ind_type inp_max_pool_4_idx = inp_max_pool_1_idx + STRIDE_POOL_4_LAYER;

			axi_data_type inp_max_pool_1_vec = local_ps[inp_max_pool_1_idx];
			axi_data_type inp_max_pool_2_vec = local_ps[inp_max_pool_2_idx];
			axi_data_type inp_max_pool_3_vec = local_ps[inp_max_pool_3_idx];
			axi_data_type inp_max_pool_4_vec = local_ps[inp_max_pool_4_idx];

			data_type inp_pool_max_1[SYS_SIZE];
			data_type inp_pool_max_2[SYS_SIZE];
			data_type inp_pool_max_3[SYS_SIZE];
			data_type inp_pool_max_4[SYS_SIZE];

			data_type max_0_0[SYS_SIZE];
			data_type max_1_1[SYS_SIZE];

			ParallelLoop:
			for(loop_ind_type oc = 0; oc < SYS_SIZE; oc++){
			#pragma HLS UNROLL
				inp_pool_max_1[oc] = get_fixed_val<data_type, mem_stream_type>(inp_max_pool_1_vec, oc);
				inp_pool_max_2[oc] = get_fixed_val<data_type, mem_stream_type>(inp_max_pool_2_vec, oc);
				inp_pool_max_3[oc] = get_fixed_val<data_type, mem_stream_type>(inp_max_pool_3_vec, oc);
				inp_pool_max_4[oc] = get_fixed_val<data_type, mem_stream_type>(inp_max_pool_4_vec, oc);
				max_0_0[oc] = max(inp_pool_max_1[oc], inp_pool_max_2[oc]);
				max_1_1[oc] = max(inp_pool_max_3[oc], inp_pool_max_4[oc]);
				max_res[oc] = max(max_0_0[oc], max_1_1[oc]);
			}
			if (relu_en){
				relu_loop:
				for(loop_ind_type oc = 0; oc < SYS_SIZE; oc++){
				#pragma HLS UNROLL
					max_res[oc] = max(max_res[oc], (data_type) 0);
				}
			}
			for(loop_ind_type oc = 0; oc < SYS_SIZE; oc++){
			#pragma HLS UNROLL
				store_fixed_val<data_type, mem_stream_type>(tmp_res, oc, max_res[oc]);
			}
			results[output_base_idx] = tmp_res;
			if (qq == LOOP_COUNT_Q - 1){
				qq = 0;
				out_idx_qq = 0;
				in_idx_qq = 0;
				if (kk == LOOP_COUNT_K - 1){
					kk = 0;
					out_idx_kk = 0;
					in_idx_kk = 0;
					if (jj == LOOP_COUNT_J - 1){
						jj = 0;
						in_idx_jj = 0;
						if (ii == LOOP_COUNT_I - 1){
							PULoops_bool = false;
							break;
						}
						else{
							ii++;
							out_idx_ii += out_stride_ii;
							in_idx_ii += STRIDE_PRE_I;
						}
					}
					else{
						jj++;
						in_idx_jj += STRIDE_PRE_J;
					}
				}
				else{
					kk++;
					out_idx_kk += out_stride_kk;
					in_idx_kk += STRIDE_PRE_K;
				}
			}
			else{
				qq++;
				out_idx_qq += LOOP_COUNT_J;
				in_idx_qq += STRIDE_PRE_Q;
			}
		}
	}
	else {
		if (relu_en){
			relu_PULoops:
			while(PULoops_bool){
				#pragma HLS pipeline ii=1
				data_type max_res[SYS_SIZE];
				axi_data_type tmp_res;
				addr_ind_type output_base_idx = (addr_ind_type) (out_idx_ii + jj + out_idx_kk + out_idx_qq); //localALUInd
				addr_ind_type inp_max_pool_1_idx = (addr_ind_type) (in_idx_ii + in_idx_jj + in_idx_kk + in_idx_qq);

				axi_data_type inp_relu = local_ps[inp_max_pool_1_idx];
				relu_in_loop:
				for(loop_ind_type oc = 0; oc < SYS_SIZE; oc++){
				#pragma HLS UNROLL
					max_res[oc] = get_fixed_val<data_type, mem_stream_type>(inp_relu, oc);
				}

				relu_relu_loop:
				for(loop_ind_type oc = 0; oc < SYS_SIZE; oc++){
				#pragma HLS UNROLL
					max_res[oc] = max(max_res[oc], (data_type) 0);
				}
				for(loop_ind_type oc = 0; oc < SYS_SIZE; oc++){
				#pragma HLS UNROLL
					store_fixed_val<data_type, mem_stream_type>(tmp_res, oc, max_res[oc]);
				}
				results[output_base_idx] = tmp_res;
				if (qq == LOOP_COUNT_Q - 1){
					qq = 0;
					out_idx_qq = 0;
					in_idx_qq = 0;
					if (kk == LOOP_COUNT_K - 1){
						kk = 0;
						out_idx_kk = 0;
						in_idx_kk = 0;
						if (jj == LOOP_COUNT_J - 1){
							jj = 0;
							in_idx_jj = 0;
							if (ii == LOOP_COUNT_I - 1){
								PULoops_bool = false;
								break;
							}
							else{
								ii++;
								out_idx_ii += out_stride_ii;
								in_idx_ii += STRIDE_PRE_I;
							}
						}
						else{
							jj++;
							in_idx_jj += STRIDE_PRE_J;
						}
					}
					else{
						kk++;
						out_idx_kk += out_stride_kk;
						in_idx_kk += STRIDE_PRE_K;
					}
				}
				else{
					qq++;
					out_idx_qq += LOOP_COUNT_J;
					in_idx_qq += STRIDE_PRE_Q;
				}
			}
		}
	}

}
////////////////////////////////////////////////////////////////////////////////
// PU unit - SIMD operations
////////////////////////////////////////////////////////////////////////////////
/*
void pu_unit(int PS_STREAM_BOUND, int RESULTS_STREAM_BOUND,
int LOOP_COUNT_I, int LOOP_COUNT_J, int LOOP_COUNT_K, int LOOP_COUNT_Q,
int STRIDE_PRE_I, int STRIDE_PRE_J, int STRIDE_PRE_K, int STRIDE_PRE_Q,
int NUM_INST, int STARTING_LOC_PU_LAYER,
	insn_T comp_inst_set[],
	axi_data_type local_ps[],
	mem_stream_type store_sys_outputs[OUT_LOCAL_SIZE/SYS_SIZE],
	mem_stream_type results[OUT_LOCAL_SIZE/SYS_SIZE], bool enable
	) {

	//#pragma HLS INLINE
#pragma HLS allocation instances=pu_unit limit=1 function
#pragma HLS INLINE off

	//data_type local_post[SYS_SIZE][OUT_LOCAL_SIZE] = {0};
	//#pragma HLS ARRAY_PARTITION variable=local_post complete dim=1
	DSP_data_type reg_ALU[SYS_SIZE][NUM_REG_ALU];
	#pragma HLS ARRAY_PARTITION variable=reg_ALU complete dim=0

	if (!enable) {
		return;
	}
	sys_outputs_stream:
	for(loop_ind_type i=0; i< PS_STREAM_BOUND;i++){
	#pragma HLS PIPELINE II=1
		store_sys_outputs[i] = local_ps[i];
	}

	// FIRST, ALU operations:
	data_type zero16b = 0;

	// loops for reading data
	bool PULoops_bool = true;
	loop_ind_type ii = 0;
	loop_ind_type jj = 0;
	loop_ind_type kk = 0;
	loop_ind_type qq = 0;
	loop_ind_type inst_ind = 0;

	PULoops:
	while(PULoops_bool){
	//#pragma HLS dependence variable=occ inter false
    #pragma HLS PIPELINE II=3
	#pragma HLS LATENCY min=1
	#pragma HLS dependence variable=results inter false
		insn_T inst_read = comp_inst_set[STARTING_LOC_PU_LAYER + inst_ind];
		// loop for executing the computation instructions for MAX_SIZE in parallel
		fn_type fn = inst_read.range(INST_TYPE_LOC -1, FN_LOC);
		src_addr_type src0_loc = inst_read.range(DES_LOC - 1, SRC0_LOC);
		src_addr_type src1_loc = inst_read.range(SRC0_LOC - 1, SRC1_LOC);
		src_addr_type des_loc = inst_read.range(REG_WR - 1, DES_LOC);
		imm_type imm= inst_read.range(IMM_WIDTH - 1, 0);
		bit_data_type src1_sel = inst_read.range(FN_LOC - 1, SRC1_SEL_LOC);
		bit_data_type reg_write = inst_read.range(SRC1_SEL_LOC - 1, REG_WR);
		addr_ind_type addr_ind = (addr_ind_type) (ii * (LOOP_COUNT_J * LOOP_COUNT_Q * LOOP_COUNT_K) + jj +
				kk * (LOOP_COUNT_J * LOOP_COUNT_Q) + qq * LOOP_COUNT_J); //localALUInd
		addr_ind_type addr_ind2 = (addr_ind_type) (ii * STRIDE_PRE_I + jj * STRIDE_PRE_J +
				kk * STRIDE_PRE_K + qq * STRIDE_PRE_Q + (loop_ind_type) imm); //localC_ind
		axi_data_type tmp_read = local_ps[addr_ind2];
		DSP_data_type alu_out[SYS_SIZE];
		DSP_data_type _alu_in0[SYS_SIZE];
		DSP_data_type _alu_in1[SYS_SIZE];
		DSP_data_type read_val[SYS_SIZE];
		axi_data_type tmp;
		ParallelLoop:
		for(loop_ind_type oc = 0; oc < SYS_SIZE; oc++){
		#pragma HLS UNROLL
			_alu_in0[oc] = reg_ALU[oc][src0_loc];
			_alu_in1[oc] = src1_sel ? (DSP_data_type) imm : reg_ALU[oc][src1_loc];
			read_val[oc] = (DSP_data_type) get_fixed_val<data_type, mem_stream_type>(tmp_read, oc);
			switch (fn){
				case FN_NOP:
					alu_out[oc] = read_val[oc];
							/*
							 (inst_read.range(DES_LOC - 1, SRC0_LOC) == 1) ?
							(DSP_data_type) localC[oc][i * STRIDE_PRE_I + j * STRIDE_PRE_J + k * STRIDE_PRE_K + q * STRIDE_PRE_Q + _alu_in1 ] :
							(inst_read.range(DES_LOC - 1, SRC0_LOC) == 2) ?
								(DSP_data_type) localB[oc][i * STRIDE_BN_M_I + j * STRIDE_BN_M_J + k * STRIDE_BN_M_K + q * STRIDE_BN_M_Q] :
								(DSP_data_type) localBB[i * STRIDE_BN_S_I + j * STRIDE_BN_S_J + k * STRIDE_BN_S_K + q * STRIDE_BN_S_K];

					break;
				case FN_ADD:
					alu_out[oc] = (DSP_data_type) (_alu_in0[oc] + _alu_in1[oc]);
					break;
				case FN_SUB:
					alu_out[oc] = (DSP_data_type)(_alu_in0[oc] - _alu_in1[oc]);
					break;
				//case FN_MUL:
				//	alu_out[oc] = (DSP_data_type) (_alu_in0[oc] * _alu_in1[oc]);
				//	break;
				case FN_MVHI:
					alu_out[oc] = (DSP_data_type) ( ((DSP_data_type) (imm) << DT_WIDTH) | zero16b);
					break;
				case FN_MAX:
					alu_out[oc] = (DSP_data_type) ((_alu_in0[oc] > _alu_in1[oc]) ? _alu_in0[oc]  : _alu_in1[oc]);
					break;
				case FN_OUT:
					//store_fixed_val<data_type, mem_stream_type>(tmp, oc, (data_type) reg_ALU[oc][src0_loc]); results[addr_ind] = tmp;
					//local_post[oc][addr_ind] = (data_type) reg_ALU[oc][src0_loc];
					break;
				default:
					//DSP_data_type _rshift_out = _alu_in0 >> _alu_in1;
					//bool sign = _alu_in0 < 0;
					//DSP_data_type _max = (DSP_data_type) ((1 << (DATA_WIDTH - 1)) - 1);
					//DSP_data_type _min = (DSP_data_type) (-(1 << (DATA_WIDTH - 1)));
					//bool overflow = (_rshift_out > _max) | (_rshift_out < _min);
					alu_out[oc] = (DSP_data_type) (_alu_in0[oc] >> _alu_in1[oc]); //(overflow ? sign ? _min : _max : _rshift_out);
					break;
			 }
			if (reg_write == (bit_data_type) 1){
				reg_ALU[oc][des_loc] = alu_out[oc];
			}
		}
		if (inst_ind == NUM_INST - 2){
			inst_ind = 0;
			axi_data_type tmp;
			for(loop_ind_type oc = 0; oc < SYS_SIZE; oc++){
			#pragma HLS UNROLL
				store_fixed_val<data_type, mem_stream_type>(tmp, oc, (data_type) reg_ALU[oc][8]);  //reg_ALU[oc][src0_loc]
			}
			results[addr_ind] = tmp;
			if (qq == LOOP_COUNT_Q - 1){
				qq = 0;
				if (kk == LOOP_COUNT_K - 1){
					kk = 0;
					if (jj == LOOP_COUNT_J - 1){
						jj = 0;
						if (ii == LOOP_COUNT_I - 1){
							PULoops_bool = false;
							break;
						}
						else
							ii++;
					}
					else
						jj++;
				}
				else
					kk++;
			}
			else
				qq++;
		}
		else
			inst_ind ++;
	}
	// streaming the results
	/*
	results_stream:
	for(loop_ind_type i=0; i< RESULTS_STREAM_BOUND;i++){
	#pragma HLS PIPELINE II=1
		axi_data_type tmp = 0;
		for(int j=0; j < SYS_SIZE; j++) {
		#pragma HLS UNROLL
			store_fixed_val<data_type, mem_stream_type>(tmp, j, local_post[j][i]);
		}
		results[i] = tmp;
	}
}*/
/*
/*
////////////////////////////////////////////////////////////////////////////////
// main mac-based function unit
////////////////////////////////////////////////////////////////////////////////
void mac_layer(int LOOP_COUNT_TILE_0, int LOOP_COUNT_TILE_1,
	int LOOP_COUNT_TILE_2, int LOOP_COUNT_TILE_3, int ACT_STEP_LOOP0, int PS_STEP_LOOP0,
	int OC_DC_LOOP0, int IC_DC_LOOP0, int RES_STEP_LOOP0, int ACT_STEP_LOOP1, int PS_STEP_LOOP1, int OC_DC_LOOP1,
	int IC_DC_LOOP1, int RES_STEP_LOOP1, int ACT_STEP_LOOP2, int PS_STEP_LOOP2, int OC_DC_LOOP2, int IC_DC_LOOP2,
	int RES_STEP_LOOP2, int ACT_STEP_LOOP3, int PS_STEP_LOOP3, int OC_DC_LOOP3, int IC_DC_LOOP3, int RES_STEP_LOOP3,
	int IH_BOUND_LAYER, int IW_BOUND_LAYER, int IC_BOUND_LAYER, int IH_STEP_LAYER, int IW_STEP_LAYER, int OH_BOUND_LAYER, int OW_BOUND_LAYER, int OC_BOUND_LAYER,
	int OH_STEP_LAYER, int OW_STEP_LAYER, int ONC_BOUND_LAYER, int WH_BOUND_LAYER, int IC_BOUND_B_LAYER, int ONC_MEM_STEP_LAYER, int WH_MEM_STEP_LAYER,
	int IC_MEM_STEP_LAYER, int ONC_STEP_LAYER, int WH_STEP_LAYER, int IC_STEP_LAYER, int OC_BOUND_BB_LAYER, int PS_STREAM_BOUND_LAYER, int ONC_LAYER,
	int B_OHEIGHT_LAYER, int B_OWIDTH_LAYER, int B_WHEIGHT_LAYER, int B_WWIDTH_LAYER, int INC_LAYER, int RESULT_STREAM_BOUND_LAYER, int B_LOOP_LAYER,
	int OC_LOOP_LAYER, int POOL_OH_LOOP_LAYER, int POOL_OW_LOOP_LAYER, int B_LOOP_STRIDE_LAYER, int OC_LOOP_STRIDE_LAYER, int POOL_OH_LOOP_STRIDE_LAYER,
	int POOL_OW_LOOP_STRIDE_LAYER, int NUM_INST_LAYER, int POSTH_BOUND_LAYER, int POSTW_BOUND_LAYER, int POSTC_BOUND_LAYER, int POSTH_STEP_LAYER,
	int POSTW_STEP_LAYER, int STARTING_LOC_ACT, int STARTING_LOC_WEI, int STARTING_LOC_BIA, int STARTING_LOC_PS, int STARTING_LOC_RES,
	int STRIDE_H_LAYER, int STRIDE_W_LAYER, int NUM_INC_LAYER, int B_IWIDTH_LAYER,
	mem_stream_type *mem_in_data, mem_stream_type *mem_in_weight, mem_stream_type *mem_out, insn_T comp_inst_set[]){

	//BRAM_definitions
	static data_type BRAM[SYS_SIZE][SYS_SIZE][BRAM_SIZE];
	#pragma HLS RESOURCE variable=BRAM core=RAM_S2P_BRAM
	#pragma HLS ARRAY_PARTITION variable=BRAM complete dim=1
	#pragma HLS ARRAY_PARTITION variable=BRAM complete dim=2
    // filling BRAMs // load weights
    filling_BRAM_W_unit(ONC_BOUND_LAYER, WH_BOUND_LAYER, IC_BOUND_B_LAYER, ONC_MEM_STEP_LAYER,
	WH_MEM_STEP_LAYER, IC_MEM_STEP_LAYER, ONC_STEP_LAYER, WH_STEP_LAYER, IC_STEP_LAYER, mem_in_weight, BRAM, STARTING_LOC_WEI);
    // outer loops
    readtiles0:
    for (addr_ind_type loop_count0=0, act_l0=0, ps_l0=0, res_l0=0, oc_DC_l0=0, ic_DC_l0=0;
    loop_count0<LOOP_COUNT_TILE_0;
    loop_count0++, act_l0+=ACT_STEP_LOOP0, ps_l0+=PS_STEP_LOOP0,
    res_l0+=RES_STEP_LOOP0, oc_DC_l0+=OC_DC_LOOP0, ic_DC_l0+=IC_DC_LOOP0){
        readtiles1:
        for (addr_ind_type loop_count1=0, act_l1=0, ps_l1=0, res_l1=0, oc_DC_l1=0, ic_DC_l1=0;
        loop_count1<LOOP_COUNT_TILE_1;
        loop_count1++, act_l1+=ACT_STEP_LOOP1, ps_l1+=PS_STEP_LOOP1,
        res_l1+=RES_STEP_LOOP1, oc_DC_l1+=OC_DC_LOOP1, ic_DC_l1+=IC_DC_LOOP1){
            readtiles2:
            for (addr_ind_type loop_count2=0, act_l2=0, ps_l2=0, res_l2=0, oc_DC_l2=0, ic_DC_l2=0;
            loop_count2<LOOP_COUNT_TILE_2;
            loop_count2++, act_l2+=ACT_STEP_LOOP2, ps_l2+=PS_STEP_LOOP2,
            res_l2+=RES_STEP_LOOP2, oc_DC_l2+=OC_DC_LOOP2, ic_DC_l2+=IC_DC_LOOP2){
                readtiles3:
                for (addr_ind_type loop_count3=0, act_l3=0, ps_l3=0,res_l3=0, oc_DC_l3=0, ic_DC_l3=0;
                loop_count3<LOOP_COUNT_TILE_3;
                loop_count3++, act_l3+=ACT_STEP_LOOP3, ps_l3+=PS_STEP_LOOP3,
                res_l3+=RES_STEP_LOOP3, oc_DC_l3+=OC_DC_LOOP3, ic_DC_l3+=IC_DC_LOOP3){
                    //#pragma HLS PIPELINE
				#pragma HLS loop_flatten
                #pragma HLS DATAFLOW
                	// fifo definitions
					static mem_stream_type active_feats[ACT_LOCAL_SIZE/SYS_SIZE];
					//static FIFO_TYPE biases;
					static data_fifo results;
					#pragma HLS STREAM variable=results depth=512
					static mem_stream_type partial_sums[OUT_LOCAL_SIZE/SYS_SIZE];
					static mem_stream_type sys_outputs[OUT_LOCAL_SIZE/SYS_SIZE];
					static data_fifo store_sys_outputs;
					#pragma HLS STREAM variable=store_sys_outputs depth=512
                    // base address generations
                    addr_ind_type addr_base_ACT = STARTING_LOC_ACT + act_l0 + act_l1 + act_l2 + act_l3;
                    addr_ind_type addr_base_PS = STARTING_LOC_PS + ps_l0 + ps_l1 + ps_l2 + ps_l3;
                    addr_ind_type addr_base_RES = STARTING_LOC_RES + res_l0 + res_l1 + res_l2 + res_l3;
                    addr_ind_type oc_DC = oc_DC_l0 + oc_DC_l1 + oc_DC_l2 + oc_DC_l3;
                    addr_ind_type ic_DC = ic_DC_l0 + ic_DC_l1 + ic_DC_l2 + ic_DC_l3;
                    // load data
                    data_load(IH_BOUND_LAYER, IW_BOUND_LAYER,
                               IC_BOUND_LAYER, IH_STEP_LAYER, IW_STEP_LAYER, OH_BOUND_LAYER, OW_BOUND_LAYER, OC_BOUND_LAYER,
                               OH_STEP_LAYER, OW_STEP_LAYER, mem_in_data, active_feats, partial_sums,
                               addr_base_ACT, addr_base_PS);
                    // sysyolic unit
                    systolic_unit(ONC_LAYER, B_OHEIGHT_LAYER, B_OWIDTH_LAYER,
                                   B_WHEIGHT_LAYER, B_WWIDTH_LAYER, INC_LAYER,
                                   B_IWIDTH_LAYER, NUM_INC_LAYER, STRIDE_H_LAYER,
                                   STRIDE_W_LAYER, active_feats, BRAM,
                                   partial_sums, sys_outputs, oc_DC, ic_DC);
                    // pu unit
                    pu_unit(PS_STREAM_BOUND_LAYER, RESULT_STREAM_BOUND_LAYER, B_LOOP_LAYER,
                        OC_LOOP_LAYER, POOL_OH_LOOP_LAYER, POOL_OW_LOOP_LAYER, B_LOOP_STRIDE_LAYER, OC_LOOP_STRIDE_LAYER,
                         POOL_OH_LOOP_STRIDE_LAYER, POOL_OW_LOOP_STRIDE_LAYER, NUM_INST_LAYER, comp_inst_set,
                        sys_outputs, store_sys_outputs, results);
                    // store results
                    data_store(OH_BOUND_LAYER, OW_BOUND_LAYER,
                                OC_BOUND_LAYER, OH_STEP_LAYER, OW_STEP_LAYER, POSTH_BOUND_LAYER, POSTW_BOUND_LAYER,
                                POSTC_BOUND_LAYER, POSTH_STEP_LAYER, POSTW_STEP_LAYER, mem_out, results,
                                store_sys_outputs, addr_base_PS, addr_base_RES);
                }
            }
        }
    }
}

*/

////////////////////////////////////////////////////////////////////////////////
// mac engine- dataflow for performing mac functions
////////////////////////////////////////////////////////////////////////////////
void mac_engine(
	int IH_BOUND_LAYER, int IW_BOUND_LAYER, int IC_BOUND_LAYER, int IH_STEP_LAYER, int IW_STEP_LAYER, int OH_BOUND_LAYER, int OW_BOUND_LAYER, int OC_BOUND_LAYER,
	int OH_STEP_LAYER, int OW_STEP_LAYER, int ONC_BOUND_LAYER, int WH_BOUND_LAYER, int IC_BOUND_B_LAYER, int ONC_MEM_STEP_LAYER, int WH_MEM_STEP_LAYER,
	int IC_MEM_STEP_LAYER, int ONC_STEP_LAYER, int WH_STEP_LAYER, int IC_STEP_LAYER, int OC_BOUND_BB_LAYER, int PS_STREAM_BOUND_LAYER, int ONC_LAYER,
	int B_OHEIGHT_LAYER, int B_OWIDTH_LAYER, int B_WHEIGHT_LAYER, int B_WWIDTH_LAYER, int INC_LAYER, int RESULT_STREAM_BOUND_LAYER, int B_LOOP_LAYER,
	int OC_LOOP_LAYER, int POOL_OH_LOOP_LAYER, int POOL_OW_LOOP_LAYER, int B_LOOP_STRIDE_LAYER, int OC_LOOP_STRIDE_LAYER, int POOL_OH_LOOP_STRIDE_LAYER,
	int POOL_OW_LOOP_STRIDE_LAYER, int NUM_INST_LAYER, int POSTH_BOUND_LAYER, int POSTW_BOUND_LAYER, int POSTC_BOUND_LAYER, int POSTH_STEP_LAYER,
	int POSTW_STEP_LAYER, int STRIDE_H_LAYER, int STRIDE_W_LAYER,
	int NUM_INC_LAYER, int B_IWIDTH_LAYER, int STARTING_LOC_PU_LAYER, addr_ind_type addr_base_ACT, addr_ind_type addr_base_PS,
	addr_ind_type addr_base_RES, addr_ind_type oc_DC, addr_ind_type ic_DC,
	mem_stream_type *mem_in_data, mem_stream_type *mem_out, insn_T comp_inst_set[],
	data_type BRAM[SYS_SIZE][SYS_SIZE][BRAM_SIZE], axi_data_type biases[],bool last_round){
#pragma HLS allocation instances=mac_engine limit=1 function
#pragma HLS allocation instances=data_load limit=1 function
#pragma HLS allocation instances=systolic_unit limit=1 function
#pragma HLS allocation instances=pu_unit limit=1 function
#pragma HLS allocation instances=data_store limit=1 function
#pragma HLS INLINE off
#pragma HLS DATAFLOW
	// fifo definitions
	mem_stream_type active_feats[ACT_LOCAL_SIZE/SYS_SIZE];
	//static FIFO_TYPE biases;
	mem_stream_type results[OUT_LOCAL_SIZE/SYS_SIZE];
	#pragma HLS STREAM variable=results depth=512
	mem_stream_type partial_sums[OUT_LOCAL_SIZE/SYS_SIZE];
	mem_stream_type sys_outputs[OUT_LOCAL_SIZE/SYS_SIZE];
	mem_stream_type store_sys_outputs[OUT_LOCAL_SIZE/SYS_SIZE];
	#pragma HLS STREAM variable=store_sys_outputs depth=512
	// load data


}

///////////////////////////////////////////////////////////////////////////////
// main mac-based function unit
////////////////////////////////////////////////////////////////////////////////
void mac_layer(int LOOP_COUNT_TILE_0, int LOOP_COUNT_TILE_1,
	int LOOP_COUNT_TILE_2, int LOOP_COUNT_TILE_3, int ACT_STEP_LOOP0, int PS_STEP_LOOP0,
	int OC_DC_LOOP0, int IC_DC_LOOP0, int RES_STEP_LOOP0, int ACT_STEP_LOOP1, int PS_STEP_LOOP1, int OC_DC_LOOP1,
	int IC_DC_LOOP1, int RES_STEP_LOOP1, int ACT_STEP_LOOP2, int PS_STEP_LOOP2, int OC_DC_LOOP2, int IC_DC_LOOP2,
	int RES_STEP_LOOP2, int ACT_STEP_LOOP3, int PS_STEP_LOOP3, int OC_DC_LOOP3, int IC_DC_LOOP3, int RES_STEP_LOOP3,
	int IH_BOUND_LAYER, int IW_BOUND_LAYER, int IC_BOUND_LAYER, int IH_STEP_LAYER, int IW_STEP_LAYER, int OH_BOUND_LAYER, int OW_BOUND_LAYER, int OC_BOUND_LAYER,
	int OH_STEP_LAYER, int OW_STEP_LAYER, int ONC_BOUND_LAYER, int WH_BOUND_LAYER, int IC_BOUND_B_LAYER, int ONC_MEM_STEP_LAYER, int WH_MEM_STEP_LAYER,
	int IC_MEM_STEP_LAYER, int ONC_STEP_LAYER, int WH_STEP_LAYER, int IC_STEP_LAYER, int OC_BOUND_BB_LAYER, int PS_STREAM_BOUND_LAYER, int ONC_LAYER,
	int B_OHEIGHT_LAYER, int B_OWIDTH_LAYER, int B_WHEIGHT_LAYER, int B_WWIDTH_LAYER, int INC_LAYER, int RESULT_STREAM_BOUND_LAYER, int B_LOOP_LAYER,
	int OC_LOOP_LAYER, int POOL_OH_LOOP_LAYER, int POOL_OW_LOOP_LAYER, int B_LOOP_STRIDE_LAYER, int OC_LOOP_STRIDE_LAYER, int POOL_OH_LOOP_STRIDE_LAYER,
	int POOL_OW_LOOP_STRIDE_LAYER, int NUM_INST_LAYER, int POSTH_BOUND_LAYER, int POSTW_BOUND_LAYER, int POSTC_BOUND_LAYER, int POSTH_STEP_LAYER,
	int POSTW_STEP_LAYER, int STARTING_LOC_ACT, int STARTING_LOC_WEI, int STARTING_LOC_BIA, int STARTING_LOC_PS, int STARTING_LOC_RES,
	int STRIDE_H_LAYER, int STRIDE_W_LAYER, int NUM_INC_LAYER, int B_IWIDTH_LAYER, int STARTING_LOC_PU_LAYER, int ic_outer_loop,
	bool POOL_EN, bool RELU_EN, int STRIDE_POOL_2_LAYER, int STRIDE_POOL_3_LAYER, int STRIDE_POOL_4_LAYER,
	mem_stream_type *mem_in_data, mem_stream_type *mem_in_weight, mem_stream_type *mem_out, insn_T comp_inst_set[]){

#pragma HLS allocation instances=mac_layer limit=1 function
#pragma HLS allocation instances=mac_engine limit=1 function
#pragma HLS allocation instances=data_load limit=1 function
#pragma HLS allocation instances=systolic_unit limit=1 function
#pragma HLS allocation instances=pu_unit limit=1 function
#pragma HLS allocation instances=data_store limit=1 function
#pragma HLS allocation instances=SYS_Core limit=1 function
#pragma HLS allocation instances=PE_Scatter_W limit=1 function
#pragma HLS allocation instances=filling_BRAM_W_unit limit=1 function
#pragma HLS INLINE off
	//BRAM_definitions

	static data_type BRAM[SYS_SIZE][SYS_SIZE][BRAM_SIZE];
	#pragma HLS RESOURCE variable=BRAM core=RAM_S2P_BRAM
	#pragma HLS ARRAY_PARTITION variable=BRAM complete dim=1
	#pragma HLS ARRAY_PARTITION variable=BRAM complete dim=2
	// biases memory
	static mem_stream_type biases[BIA_LOCAL_SIZE/SYS_SIZE] = {0};

	mem_stream_type active_feats_A[ACT_LOCAL_SIZE/SYS_SIZE];
	mem_stream_type active_feats_B[ACT_LOCAL_SIZE/SYS_SIZE];
	mem_stream_type results_A[OUT_LOCAL_SIZE/SYS_SIZE];
	mem_stream_type results_B[OUT_LOCAL_SIZE/SYS_SIZE];
	mem_stream_type partial_sums_A[OUT_LOCAL_SIZE/SYS_SIZE];
	mem_stream_type partial_sums_B[OUT_LOCAL_SIZE/SYS_SIZE];
	mem_stream_type sys_outputs_A[OUT_LOCAL_SIZE/SYS_SIZE];
	#pragma HLS ARRAY_PARTITION variable=sys_outputs_A cyclic factor=2 dim=1
	#pragma HLS RESOURCE variable=sys_outputs_A core=RAM_T2P_BRAM
	mem_stream_type sys_outputs_B[OUT_LOCAL_SIZE/SYS_SIZE];
	#pragma HLS ARRAY_PARTITION variable=sys_outputs_B cyclic factor=2 dim=1
	#pragma HLS RESOURCE variable=sys_outputs_B core=RAM_T2P_BRAM
	mem_stream_type store_sys_outputs_A[OUT_LOCAL_SIZE/SYS_SIZE];
	mem_stream_type store_sys_outputs_B[OUT_LOCAL_SIZE/SYS_SIZE];


	bool not_bias_add = true;
	bool not_bias_add_1 = true;
	addr_ind_type addr_base_PS_1;
	addr_ind_type addr_base_PS_2;
	addr_ind_type addr_base_PS_3;
	addr_ind_type addr_base_RES_1;
	addr_ind_type addr_base_RES_2;
	addr_ind_type addr_base_RES_3;
	addr_ind_type oc_DC_1;
	addr_ind_type ic_DC_1;
	addr_ind_type counter = 0;
    // filling BRAMs // load weights
    filling_BRAM_W_unit(ONC_BOUND_LAYER, WH_BOUND_LAYER, IC_BOUND_B_LAYER, ONC_MEM_STEP_LAYER,
	WH_MEM_STEP_LAYER, IC_MEM_STEP_LAYER, ONC_STEP_LAYER, WH_STEP_LAYER, IC_STEP_LAYER, OC_BOUND_BB_LAYER,
	mem_in_weight, BRAM, biases, STARTING_LOC_WEI, STARTING_LOC_BIA);
    bool outerLoops_bool = true;
    addr_ind_type loop_count0=0, act_l0=0, ps_l0=0, res_l0=0, oc_DC_l0=0, ic_DC_l0=0;
	addr_ind_type loop_count1=0, act_l1=0, ps_l1=0, res_l1=0, oc_DC_l1=0, ic_DC_l1=0;
	addr_ind_type loop_count2=0, act_l2=0, ps_l2=0, res_l2=0, oc_DC_l2=0, ic_DC_l2=0;
	addr_ind_type loop_count3=0, act_l3=0, ps_l3=0,res_l3=0, oc_DC_l3=0, ic_DC_l3=0;
	addr_ind_type LOOP_TILES_COUNT = (addr_ind_type) (LOOP_COUNT_TILE_3 * LOOP_COUNT_TILE_2  * LOOP_COUNT_TILE_1 * LOOP_COUNT_TILE_0 + 2);
    while(outerLoops_bool){
    	addr_ind_type addr_base_ACT = STARTING_LOC_ACT + act_l0 + act_l1 + act_l2 + act_l3;
		addr_ind_type addr_base_PS = STARTING_LOC_PS + ps_l0 + ps_l1 + ps_l2 + ps_l3;
		addr_ind_type addr_base_RES = STARTING_LOC_RES + res_l0 + res_l1 + res_l2 + res_l3;
		addr_ind_type oc_DC = oc_DC_l0 + oc_DC_l1 + oc_DC_l2 + oc_DC_l3;
		addr_ind_type ic_DC = ic_DC_l0 + ic_DC_l1 + ic_DC_l2 + ic_DC_l3;
		switch (ic_outer_loop){
			case 0:
				if (loop_count0 == LOOP_COUNT_TILE_0 - 1)
					not_bias_add = false;
				else
					not_bias_add = true;
				break;
			case 1:
				if (loop_count1 == LOOP_COUNT_TILE_1 - 1)
					not_bias_add = false;
				else
					not_bias_add = true;
				break;
			case 2:
				if (loop_count2 == LOOP_COUNT_TILE_2 - 1)
					not_bias_add = false;
				else
					not_bias_add = true;
				break;
			default:
				if (loop_count3 == LOOP_COUNT_TILE_3 - 1)
					not_bias_add = false;
				else
					not_bias_add = true;
				break;
		}
		if(counter[0]) {
			data_load(IH_BOUND_LAYER, IW_BOUND_LAYER,
					   IC_BOUND_LAYER, IH_STEP_LAYER, IW_STEP_LAYER, OH_BOUND_LAYER, OW_BOUND_LAYER, OC_BOUND_LAYER,
					   OH_STEP_LAYER, OW_STEP_LAYER, mem_in_data, active_feats_A, partial_sums_A,
					   addr_base_ACT, addr_base_PS, ((counter != LOOP_TILES_COUNT - 2) & (counter != LOOP_TILES_COUNT - 1) & (counter != LOOP_TILES_COUNT)));
			// sysyolic unit
			systolic_unit(ONC_LAYER, B_OHEIGHT_LAYER, B_OWIDTH_LAYER,
						   B_WHEIGHT_LAYER, B_WWIDTH_LAYER, INC_LAYER,
						   B_IWIDTH_LAYER, NUM_INC_LAYER, STRIDE_H_LAYER,
						   STRIDE_W_LAYER, active_feats_B, BRAM, biases,
						   partial_sums_B, sys_outputs_B, oc_DC_1, ic_DC_1, not_bias_add_1, (counter != 0 & (counter != LOOP_TILES_COUNT - 1) & (counter != LOOP_TILES_COUNT)));
			// pu unit
			pu_unit(PS_STREAM_BOUND_LAYER, RESULT_STREAM_BOUND_LAYER, B_LOOP_LAYER,
				OC_LOOP_LAYER, POOL_OH_LOOP_LAYER, POOL_OW_LOOP_LAYER, B_LOOP_STRIDE_LAYER, OC_LOOP_STRIDE_LAYER,
				 POOL_OH_LOOP_STRIDE_LAYER, POOL_OW_LOOP_STRIDE_LAYER, NUM_INST_LAYER, STARTING_LOC_PU_LAYER, comp_inst_set,
				sys_outputs_A, store_sys_outputs_A, results_A, POOL_EN, RELU_EN, STRIDE_POOL_2_LAYER, STRIDE_POOL_3_LAYER,
				STRIDE_POOL_4_LAYER, (counter != 0 & counter != 1 & (counter != LOOP_TILES_COUNT)));
			// store results
			data_store(OH_BOUND_LAYER, OW_BOUND_LAYER,
						OC_BOUND_LAYER, OH_STEP_LAYER, OW_STEP_LAYER, POSTH_BOUND_LAYER, POSTW_BOUND_LAYER,
						POSTC_BOUND_LAYER, POSTH_STEP_LAYER, POSTW_STEP_LAYER, mem_out, results_B,
						store_sys_outputs_B, addr_base_PS_3, addr_base_RES_3, (counter != 0 & counter != 1 & counter != 2));
		}
		else{
			data_load(IH_BOUND_LAYER, IW_BOUND_LAYER,
					   IC_BOUND_LAYER, IH_STEP_LAYER, IW_STEP_LAYER, OH_BOUND_LAYER, OW_BOUND_LAYER, OC_BOUND_LAYER,
					   OH_STEP_LAYER, OW_STEP_LAYER, mem_in_data, active_feats_B, partial_sums_B,
					   addr_base_ACT, addr_base_PS, ((counter != LOOP_TILES_COUNT - 2) & (counter != LOOP_TILES_COUNT - 1) & (counter != LOOP_TILES_COUNT)));
			// sysyolic unit
			systolic_unit(ONC_LAYER, B_OHEIGHT_LAYER, B_OWIDTH_LAYER,
						   B_WHEIGHT_LAYER, B_WWIDTH_LAYER, INC_LAYER,
						   B_IWIDTH_LAYER, NUM_INC_LAYER, STRIDE_H_LAYER,
						   STRIDE_W_LAYER, active_feats_A, BRAM, biases,
						   partial_sums_A, sys_outputs_A, oc_DC_1, ic_DC_1, not_bias_add_1, (counter != 0 & (counter != LOOP_TILES_COUNT - 1) & (counter != LOOP_TILES_COUNT)));
			// pu unit
			pu_unit(PS_STREAM_BOUND_LAYER, RESULT_STREAM_BOUND_LAYER, B_LOOP_LAYER,
				OC_LOOP_LAYER, POOL_OH_LOOP_LAYER, POOL_OW_LOOP_LAYER, B_LOOP_STRIDE_LAYER, OC_LOOP_STRIDE_LAYER,
				 POOL_OH_LOOP_STRIDE_LAYER, POOL_OW_LOOP_STRIDE_LAYER, NUM_INST_LAYER, STARTING_LOC_PU_LAYER, comp_inst_set,
				sys_outputs_B, store_sys_outputs_B, results_B, POOL_EN, RELU_EN, STRIDE_POOL_2_LAYER, STRIDE_POOL_3_LAYER,
				STRIDE_POOL_4_LAYER, (counter != 0 & counter != 1 & (counter != LOOP_TILES_COUNT)));
			// store results
			data_store(OH_BOUND_LAYER, OW_BOUND_LAYER,
						OC_BOUND_LAYER, OH_STEP_LAYER, OW_STEP_LAYER, POSTH_BOUND_LAYER, POSTW_BOUND_LAYER,
						POSTC_BOUND_LAYER, POSTH_STEP_LAYER, POSTW_STEP_LAYER, mem_out, results_A,
						store_sys_outputs_A, addr_base_PS_3, addr_base_RES_3, (counter != 0 & counter != 1 & counter != 2));

		}
		// DATA STORE UNIT
		addr_base_PS_3 = addr_base_PS_2;
		addr_base_PS_2 = addr_base_PS_1;
		addr_base_PS_1 = addr_base_PS;
		addr_base_RES_3 = addr_base_RES_2;
		addr_base_RES_2 = addr_base_RES_1;
		addr_base_RES_1 = addr_base_RES;
		// SYSTOLIC UNIT
		oc_DC_1 = oc_DC;
		ic_DC_1 = ic_DC;
		not_bias_add_1 = not_bias_add;
		  // -1+3
		if (counter == LOOP_TILES_COUNT){
			outerLoops_bool = false;
			break;
		}
		else
			counter++;
    	if (loop_count0 == LOOP_COUNT_TILE_0 - 1){
			loop_count0 = 0;
			act_l0 = 0;
			ps_l0 = 0;
			res_l0 = 0;
			oc_DC_l0 = 0;
			ic_DC_l0 = 0;
			if (loop_count1 == LOOP_COUNT_TILE_1 - 1){
				loop_count1 = 0;
				act_l1 = 0;
				ps_l1 = 0;
				res_l1 = 0;
				oc_DC_l1 = 0;
				ic_DC_l1 = 0;
				if (loop_count2 == LOOP_COUNT_TILE_2 - 1){
					loop_count2 = 0;
					act_l2 = 0;
					ps_l2 = 0;
					res_l2 = 0;
					oc_DC_l2 = 0;
					ic_DC_l2 = 0;
					if (loop_count3 == LOOP_COUNT_TILE_3 - 1){
						loop_count3 =0;
						//outerLoops_bool = false;
						//break;
						}
					else{
						loop_count3++;
						act_l3+=ACT_STEP_LOOP3;
						ps_l3+=PS_STEP_LOOP3;
						res_l3+=RES_STEP_LOOP3;
						oc_DC_l3+=OC_DC_LOOP3;
						ic_DC_l3+=IC_DC_LOOP3;
					}
				}
				else{
					loop_count2++;
					act_l2+=ACT_STEP_LOOP2;
					ps_l2+=PS_STEP_LOOP2;
					res_l2+=RES_STEP_LOOP2;
					oc_DC_l2+=OC_DC_LOOP2;
					ic_DC_l2+=IC_DC_LOOP2;
				}
			}
			else{
				loop_count1++;
				act_l1+=ACT_STEP_LOOP1;
				ps_l1+=PS_STEP_LOOP1;
				res_l1+=RES_STEP_LOOP1;
				oc_DC_l1+=OC_DC_LOOP1;
				ic_DC_l1+=IC_DC_LOOP1;
			}
		}
		else{
			loop_count0++;
			act_l0+=ACT_STEP_LOOP0;
			ps_l0+=PS_STEP_LOOP0;
			res_l0+=RES_STEP_LOOP0;
			oc_DC_l0+=OC_DC_LOOP0;
			ic_DC_l0+=IC_DC_LOOP0;
		}
    }


    /*
    for (addr_ind_type loop_count0=0, act_l0=0, ps_l0=0, res_l0=0, oc_DC_l0=0, ic_DC_l0=0;
	loop_count0<LOOP_COUNT_TILE_0;
	loop_count0++, act_l0+=ACT_STEP_LOOP0, ps_l0+=PS_STEP_LOOP0,
	res_l0+=RES_STEP_LOOP0, oc_DC_l0+=OC_DC_LOOP0, ic_DC_l0+=IC_DC_LOOP0){
		readtiles1:
		for (addr_ind_type loop_count1=0, act_l1=0, ps_l1=0, res_l1=0, oc_DC_l1=0, ic_DC_l1=0;
		loop_count1<LOOP_COUNT_TILE_1;
		loop_count1++, act_l1+=ACT_STEP_LOOP1, ps_l1+=PS_STEP_LOOP1,
		res_l1+=RES_STEP_LOOP1, oc_DC_l1+=OC_DC_LOOP1, ic_DC_l1+=IC_DC_LOOP1){
			readtiles2:
			for (addr_ind_type loop_count2=0, act_l2=0, ps_l2=0, res_l2=0, oc_DC_l2=0, ic_DC_l2=0;
			loop_count2<LOOP_COUNT_TILE_2;
			loop_count2++, act_l2+=ACT_STEP_LOOP2, ps_l2+=PS_STEP_LOOP2,
			res_l2+=RES_STEP_LOOP2, oc_DC_l2+=OC_DC_LOOP2, ic_DC_l2+=IC_DC_LOOP2){
				readtiles3:
				for (addr_ind_type loop_count3=0, act_l3=0, ps_l3=0,res_l3=0, oc_DC_l3=0, ic_DC_l3=0;
				loop_count3<LOOP_COUNT_TILE_3;
				loop_count3++, act_l3+=ACT_STEP_LOOP3, ps_l3+=PS_STEP_LOOP3,
				res_l3+=RES_STEP_LOOP3, oc_DC_l3+=OC_DC_LOOP3, ic_DC_l3+=IC_DC_LOOP3){
					addr_ind_type addr_base_ACT = STARTING_LOC_ACT + act_l0 + act_l1 + act_l2 + act_l3;
					addr_ind_type addr_base_PS = STARTING_LOC_PS + ps_l0 + ps_l1 + ps_l2 + ps_l3;
					addr_ind_type addr_base_RES = STARTING_LOC_RES + res_l0 + res_l1 + res_l2 + res_l3;
					addr_ind_type oc_DC = oc_DC_l0 + oc_DC_l1 + oc_DC_l2 + oc_DC_l3;
					addr_ind_type ic_DC = ic_DC_l0 + ic_DC_l1 + ic_DC_l2 + ic_DC_l3;
					switch (ic_outer_loop){
						case 0:
							if (loop_count0 == LOOP_COUNT_TILE_0 - 1)
								not_bias_add = false;
							else
								not_bias_add = true;
							break;
						case 1:
							if (loop_count1 == LOOP_COUNT_TILE_1 - 1)
								not_bias_add = false;
							else
								not_bias_add = true;
							break;
						case 2:
							if (loop_count2 == LOOP_COUNT_TILE_2 - 1)
								not_bias_add = false;
							else
								not_bias_add = true;
							break;
						default:
							if (loop_count3 == LOOP_COUNT_TILE_3 - 1)
								not_bias_add = false;
							else
								not_bias_add = true;
							break;
					}
					if(counter[0]) {
						data_load(IH_BOUND_LAYER, IW_BOUND_LAYER,
								   IC_BOUND_LAYER, IH_STEP_LAYER, IW_STEP_LAYER, OH_BOUND_LAYER, OW_BOUND_LAYER, OC_BOUND_LAYER,
								   OH_STEP_LAYER, OW_STEP_LAYER, mem_in_data, active_feats_A, partial_sums_A,
								   addr_base_ACT, addr_base_PS);
						// sysyolic unit
						systolic_unit(ONC_LAYER, B_OHEIGHT_LAYER, B_OWIDTH_LAYER,
									   B_WHEIGHT_LAYER, B_WWIDTH_LAYER, INC_LAYER,
									   B_IWIDTH_LAYER, NUM_INC_LAYER, STRIDE_H_LAYER,
									   STRIDE_W_LAYER, active_feats_B, BRAM, biases,
									   partial_sums_B, sys_outputs_B, oc_DC, ic_DC, not_bias_add, counter != 0);
						// pu unit
						pu_unit(PS_STREAM_BOUND_LAYER, RESULT_STREAM_BOUND_LAYER, B_LOOP_LAYER,
							OC_LOOP_LAYER, POOL_OH_LOOP_LAYER, POOL_OW_LOOP_LAYER, B_LOOP_STRIDE_LAYER, OC_LOOP_STRIDE_LAYER,
							 POOL_OH_LOOP_STRIDE_LAYER, POOL_OW_LOOP_STRIDE_LAYER, NUM_INST_LAYER, STARTING_LOC_PU_LAYER, comp_inst_set,
							sys_outputs_A, store_sys_outputs_A, results_A, (counter != 0 & counter !=1));
						// store results
						data_store(OH_BOUND_LAYER, OW_BOUND_LAYER,
									OC_BOUND_LAYER, OH_STEP_LAYER, OW_STEP_LAYER, POSTH_BOUND_LAYER, POSTW_BOUND_LAYER,
									POSTC_BOUND_LAYER, POSTH_STEP_LAYER, POSTW_STEP_LAYER, mem_out, results_B,
									store_sys_outputs_B, addr_base_PS, addr_base_RES, (counter != 0 & counter !=1 & counter !=2));
					}
					else{
						data_load(IH_BOUND_LAYER, IW_BOUND_LAYER,
								   IC_BOUND_LAYER, IH_STEP_LAYER, IW_STEP_LAYER, OH_BOUND_LAYER, OW_BOUND_LAYER, OC_BOUND_LAYER,
								   OH_STEP_LAYER, OW_STEP_LAYER, mem_in_data, active_feats_B, partial_sums_B,
								   addr_base_ACT, addr_base_PS);
						// sysyolic unit
						systolic_unit(ONC_LAYER, B_OHEIGHT_LAYER, B_OWIDTH_LAYER,
									   B_WHEIGHT_LAYER, B_WWIDTH_LAYER, INC_LAYER,
									   B_IWIDTH_LAYER, NUM_INC_LAYER, STRIDE_H_LAYER,
									   STRIDE_W_LAYER, active_feats_A, BRAM, biases,
									   partial_sums_A, sys_outputs_A, oc_DC, ic_DC, not_bias_add, counter != 0);
						// pu unit
						pu_unit(PS_STREAM_BOUND_LAYER, RESULT_STREAM_BOUND_LAYER, B_LOOP_LAYER,
							OC_LOOP_LAYER, POOL_OH_LOOP_LAYER, POOL_OW_LOOP_LAYER, B_LOOP_STRIDE_LAYER, OC_LOOP_STRIDE_LAYER,
							 POOL_OH_LOOP_STRIDE_LAYER, POOL_OW_LOOP_STRIDE_LAYER, NUM_INST_LAYER, STARTING_LOC_PU_LAYER, comp_inst_set,
							sys_outputs_B, store_sys_outputs_B, results_B, (counter != 0 & counter !=1));
						// store results
						data_store(OH_BOUND_LAYER, OW_BOUND_LAYER,
									OC_BOUND_LAYER, OH_STEP_LAYER, OW_STEP_LAYER, POSTH_BOUND_LAYER, POSTW_BOUND_LAYER,
									POSTC_BOUND_LAYER, POSTH_STEP_LAYER, POSTW_STEP_LAYER, mem_out, results_A,
									store_sys_outputs_A, addr_base_PS, addr_base_RES, (counter != 0 & counter !=1 & counter !=2));

					}
					counter ++;
					//cout << "not_bias_add = " << not_bias_add << endl;
				}
			}
		}
    }*/
}



#endif
