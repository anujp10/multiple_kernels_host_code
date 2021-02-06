//################################################################################
//#
//#                           Author: Arash Fayyazi
//#                          E-mail: fayyazi@usc.edu
//#
//################################################################################
#define AP_INT_MAX_W 10000
#include <ap_int.h>
#include <hls_stream.h>
#include "Nulla_config.h"
#include "Hybrid_config.h"


#ifndef __NullaTemplates_H__FG
#define __NullaTemplates_H__


// Streaming data from main memory to a stream fifo in burst mode
template <typename MEM_IN_T, int WIDTH_SIZE, int HEIGHT_SIZE, int HEIGHT_STEP>
static void burst_read(MEM_IN_T *mem_in, hls::stream<MEM_IN_T> &in_stream, int STARTING_LOAD_DATA){
    for (loop_ind_type mem_idx_h = 0; mem_idx_h < HEIGHT_SIZE; mem_idx_h = mem_idx_h + HEIGHT_STEP){
        for (loop_ind_type mem_idx_w = 0; mem_idx_w < WIDTH_SIZE; mem_idx_w = mem_idx_w + 1){
            #pragma HLS PIPELINE II=1
                in_stream << mem_in[STARTING_LOAD_DATA + mem_idx_h + mem_idx_w];
            }
    }
}

// Streaming data from a stream fifo to a local buffer
template <typename LOCAL_BUF_T, typename IN_STREAM_T, int LOCAL_BUF_SIZE, int ICHANNEL, int MEM_IN_NUM_DATA, int MEM_IN_LAST_IDX, int MEM_IN_LAST_IDX_LAST, int MEM_IN_STREAM_SIZE>
void load_buf(LOCAL_BUF_T local_in_l[LOCAL_BUF_SIZE], hls::stream<IN_STREAM_T> &in_stream){
    fifo_loop:
    for (loop_ind_type fifo_idx = 0; fifo_idx < MEM_IN_STREAM_SIZE - 1; fifo_idx = fifo_idx + 1){
    #pragma HLS PIPELINE II=1
        IN_STREAM_T tmp = in_stream.read();
        unroll_loop:
        for (loop_ind_type idx = 0; idx < MEM_IN_LAST_IDX; idx = idx + ICHANNEL) {
        #pragma HLS unroll
            local_in_l[(addr_ind_type) (fifo_idx * MEM_IN_NUM_DATA + idx / ICHANNEL)] = (LOCAL_BUF_T) tmp.range(idx + ICHANNEL - 1,idx);
        }
    }
    IN_STREAM_T tmp = in_stream.read();
    unroll_loop_last:
    for (loop_ind_type idx = 0; idx < MEM_IN_LAST_IDX_LAST; idx = idx + ICHANNEL) {
    #pragma HLS unroll
        local_in_l[(addr_ind_type) ((MEM_IN_STREAM_SIZE - 1) * MEM_IN_NUM_DATA + idx / ICHANNEL)] = (LOCAL_BUF_T) tmp.range(idx + ICHANNEL - 1,idx);
    }
}


// Streaming data from a stream fifo to main memory in burst mode
template <typename MEM_OUT_T, int WIDTH_SIZE, int HEIGHT_SIZE, int HEIGHT_STEP>
static void burst_write(MEM_OUT_T *mem_out, hls::stream<MEM_OUT_T> &out_stream, int STARTING_STORE_DATA){
    for (loop_ind_type mem_idx_h = 0; mem_idx_h < HEIGHT_SIZE; mem_idx_h = mem_idx_h + HEIGHT_STEP){
        for (loop_ind_type mem_idx_w = 0; mem_idx_w < WIDTH_SIZE; mem_idx_w = mem_idx_w + 1){
            #pragma HLS PIPELINE II=1
            out_stream >> mem_out[STARTING_STORE_DATA + mem_idx_h + mem_idx_w];
        }
    }
}

// Streaming data from a local buffer to a stream fifo
template <typename LOCAL_BUF_T, typename OUT_STREAM_T, int LOCAL_BUF_SIZE, int OCHANNEL, int MEM_OUT_NUM_DATA, int MEM_OUT_LAST_IDX, int MEM_OUT_LAST_IDX_LAST, int MEM_OUT_STREAM_SIZE>
void store_buf(LOCAL_BUF_T local_out_l[LOCAL_BUF_SIZE], hls::stream<OUT_STREAM_T> &out_stream){
    OUT_STREAM_T tmp;
    fifo_loop:
    for (loop_ind_type fifo_idx = 0; fifo_idx < MEM_OUT_STREAM_SIZE - 1; fifo_idx = fifo_idx + 1){
    #pragma HLS PIPELINE II=1
        unroll_loop:
        for (loop_ind_type idx = 0; idx < MEM_OUT_LAST_IDX; idx = idx + OCHANNEL) {
        #pragma HLS unroll
            tmp.range(idx + OCHANNEL - 1,idx) = local_out_l[(addr_ind_type) (fifo_idx * MEM_OUT_NUM_DATA + idx / OCHANNEL)];
        }
        out_stream << tmp;
    }
    unroll_loop_last:
    for (loop_ind_type idx = 0; idx < MEM_OUT_LAST_IDX_LAST; idx = idx + OCHANNEL) {
    #pragma HLS unroll
        tmp.range(idx + OCHANNEL - 1,idx) = local_out_l[(addr_ind_type) ((MEM_OUT_STREAM_SIZE - 1) * MEM_OUT_NUM_DATA + idx / OCHANNEL)];
    }
    out_stream << tmp;
}


// Streaming data from a local Buffer to register for starting the computations
template <typename LOCAL_BUF_T, typename REG_IN_T, int LOCAL_BUF_SIZE, int NUM_REPS, int NUM_REP_H_MUL_B_IWIDTH, int B_IWIDTH, int NUM_REP_W, int B_WHEIGHT_MUL_B_IWIDTH, int B_WWIDTH, int ICHANNEL, int STRIDE_A_I_INNER, int STRIDE_A_J_INNER>
void bram_to_reg(loop_ind_type counter_h, loop_ind_type counter_w, LOCAL_BUF_T local_in_l[LOCAL_BUF_SIZE], REG_IN_T in_reg_l[NUM_REPS]) {
    addr_ind_type inner_addr_base = STRIDE_A_I_INNER * counter_h + STRIDE_A_J_INNER * counter_w;
    addr_ind_type i = 0;
    i_h_loop_input:
    for (loop_ind_type i_h = 0; i_h < NUM_REP_H_MUL_B_IWIDTH; i_h = i_h + B_IWIDTH) {
      i_w_loop_input:
      for (loop_ind_type i_w = 0; i_w < NUM_REP_W; i_w = i_w + 1) {
      //#pragma HLS PIPELINE II=1
          //addr_ind_type i = (addr_ind_type) (i_h * (NUM_REP_W_2) + i_w);
          addr_ind_type addr_base = (addr_ind_type) (inner_addr_base + i_w + i_h);
          addr_ind_type reg_index = (addr_ind_type) 0;
          wh_counter_loop:
          for(loop_ind_type wh_counter = 0; wh_counter < B_WHEIGHT_MUL_B_IWIDTH; wh_counter = wh_counter + B_IWIDTH){
        //#pragma HLS PIPELINE II=1
            ww_counter_loop:
            for(loop_ind_type ww_counter = 0; ww_counter < B_WWIDTH; ww_counter++){
          #pragma HLS PIPELINE II=1
                    addr_ind_type addr_ind = (addr_ind_type) (addr_base + ww_counter + wh_counter);
                    in_reg_l[i].range(reg_index + ICHANNEL - 1,reg_index) = local_in_l[addr_ind];
                    reg_index = reg_index + ICHANNEL;
             }
          }
          i = i + 1;
      }
    }
}

// Streaming data from a local Buffer to register for starting the computations
template <typename LOCAL_BUF_T, typename REG_IN_T, int LOCAL_BUF_SIZE, int NUM_REPS, int NUM_REP_H_MUL_B_IWIDTH, int B_IWIDTH, int NUM_REP_W, int B_WHEIGHT_MUL_B_IWIDTH, int B_WWIDTH, int ICHANNEL, int STRIDE_A_I_INNER, int STRIDE_A_J_INNER, int PAD_H, int PAD_W, int IHEIGHT, int IWIDTH>
void bram_to_reg_pad(loop_ind_type counter_h, loop_ind_type counter_w, LOCAL_BUF_T local_in_l[LOCAL_BUF_SIZE], REG_IN_T in_reg_l[NUM_REPS]) {
#pragma HLS INLINE off
	REG_IN_T in_val;
    addr_ind_type inner_addr_base = STRIDE_A_I_INNER * counter_h + STRIDE_A_J_INNER * counter_w;
    addr_ind_type i = 0;
    i_h_loop_input:
    for (loop_ind_type i_h_mul = 0, i_h = 0 ; i_h_mul < NUM_REP_H_MUL_B_IWIDTH; i_h++, i_h_mul = i_h_mul + B_IWIDTH) {
      i_w_loop_input:
      for (loop_ind_type i_w = 0; i_w < NUM_REP_W; i_w = i_w + 1) {
      //#pragma HLS PIPELINE II=1
          //addr_ind_type i = (addr_ind_type) (i_h * (NUM_REP_W_2) + i_w);
          addr_ind_type addr_base = (addr_ind_type) (inner_addr_base + i_w + i_h_mul);
          addr_ind_type reg_index = (addr_ind_type) 0;
          in_val = 0;
          wh_counter_loop:
          for(loop_ind_type wh_counter_mul= 0, wh_counter = 0; wh_counter_mul < B_WHEIGHT_MUL_B_IWIDTH; wh_counter++, wh_counter_mul = wh_counter_mul + B_IWIDTH){
        //#pragma HLS PIPELINE II=1
            ww_counter_loop:
            for(loop_ind_type ww_counter = 0; ww_counter < B_WWIDTH; ww_counter++){
          #pragma HLS PIPELINE II=1
                    // following lines are added to support Padding
                    if(!((counter_h + i_h + wh_counter < PAD_H) || (counter_w + i_w + ww_counter < PAD_W) || (counter_h + i_h + wh_counter >= PAD_H + IHEIGHT) || (counter_w + i_w + ww_counter >= PAD_W + IWIDTH))){
                    	//in_val.range(reg_index + ICHANNEL - 1, reg_index) = (LOCAL_BUF_T) 0;
                    	addr_ind_type addr_ind = (addr_ind_type) (addr_base + ww_counter + wh_counter_mul - ((PAD_H * B_IWIDTH) + (counter_h + i_h + wh_counter - PAD_H) * 2 * PAD_W + PAD_W) ); // 2 for right and left padding
						in_val.range(reg_index + ICHANNEL - 1, reg_index) = local_in_l[addr_ind].range();
                    }
                    /*else{
                    addr_ind_type addr_ind = (addr_ind_type) (addr_base + ww_counter + wh_counter_mul - ((PAD_H * B_IWIDTH) + (counter_h + i_h + wh_counter - PAD_H) * 2 * PAD_W + PAD_W) ); // 2 for right and left padding
                    in_val.range(reg_index + ICHANNEL - 1, reg_index) = local_in_l[addr_ind].range();
                    }*/
                    reg_index = reg_index + ICHANNEL;
             }
          }
          in_reg_l[i] = in_val;
          i = i + 1;
      }
    }
}


// Streaming data from a local Buffer to register for starting the computations
template <typename LOCAL_BUF_T, typename REG_OUT_T, int LOCAL_BUF_SIZE, int NUM_REPS, int NUM_REP_H_MUL_B_OWIDTH, int B_OWIDTH, int NUM_REP_W, int STRIDE_C_I_INNER, int STRIDE_C_J_INNER>
void reg_to_bram(loop_ind_type counter_h, loop_ind_type counter_w, REG_OUT_T out_reg_l[NUM_REPS], LOCAL_BUF_T local_out_l[LOCAL_BUF_SIZE]) {
#pragma HLS INLINE off
	addr_ind_type inner_addr_base = STRIDE_C_I_INNER * counter_h + STRIDE_C_J_INNER * counter_w;
	  addr_ind_type i = 0;
	  i_h_loop_output:
	  for (loop_ind_type i_h = 0; i_h < NUM_REP_H_MUL_B_OWIDTH; i_h = i_h + B_OWIDTH) {
		  i_w_loop_output:
		  for (loop_ind_type i_w = 0; i_w < NUM_REP_W; i_w = i_w + 1) {
		  #pragma HLS PIPELINE II=1
			  //addr_ind_type i = (addr_ind_type) (i_h * (NUM_REP_W_2) + i_w);
			  addr_ind_type addr_base = (addr_ind_type) (inner_addr_base + i_w + i_h);
			  addr_ind_type addr_ind = addr_base;
			  local_out_l[addr_ind] = (LOCAL_BUF_T) out_reg_l[i];
			  i = i + 1;
		  }
	  }
}

// Pooling layer calculations in Nulla Style dataflow
template <typename REG_POOLING_T, int POOLING_SIZE>
void pooling_calc(REG_POOLING_T in_reg_pool[POOLING_SIZE], REG_POOLING_T &out_reg_pool){
    out_reg_pool = in_reg_pool[0] | in_reg_pool[1];
    for (loop_ind_type i = 2; i < POOLING_SIZE; i++) {
    #pragma HLS PIPELINE II=1
	out_reg_pool = in_reg_pool[i] | out_reg_pool;
	}
}

// Streaming data from a local Buffer to register for starting the pooling operations
template <typename LOCAL_BUF_T, int LOCAL_BUF_SIZE, int POOLING_SIZE, int POOL_H_MUL_B_OWIDTH, int B_OWIDTH, int POOL_W>
void pool_bram_to_reg(loop_ind_type counter_h, loop_ind_type counter_w, LOCAL_BUF_T local_out[LOCAL_BUF_SIZE], LOCAL_BUF_T in_reg_pool[POOLING_SIZE]) {
	 addr_ind_type i = 0;
	 i_h_loop_input:
	  for (loop_ind_type i_h = 0; i_h < POOL_H_MUL_B_OWIDTH; i_h = i_h + B_OWIDTH) {
		  i_w_loop_input:
		  for (loop_ind_type i_w = 0; i_w < POOL_W; i_w = i_w + 1) {
         #pragma HLS PIPELINE II=1
			  //addr_ind_type i = (addr_ind_type) (i_h * 2 + i_w);
			  addr_ind_type addr_ind = (addr_ind_type) ((counter_h + i_h) + counter_w + i_w);
			  in_reg_pool[i] = local_out[addr_ind];
			  i = i + 1;
		  }
	  }
}

// Pooling layer
template <typename LOCAL_BUF_T, int POOLING_SIZE, int LOCAL_BUF_SIZE, int LOCAL_BUF_POOLING_SIZE, int B_OHEIGHT_MUL_B_OWIDTH, int POOL_H_MUL_B_OWIDTH, int B_OWIDTH, int POOL_W>
void pooling(
 LOCAL_BUF_T local_out_l[LOCAL_BUF_SIZE],
 LOCAL_BUF_T local_out_pool_l[LOCAL_BUF_POOLING_SIZE]) {

    // register definitions
    LOCAL_BUF_T in_reg_pool_l[POOLING_SIZE];
    #pragma HLS ARRAY_PARTITION variable=in_reg_pool_l complete dim = 0
    LOCAL_BUF_T out_reg_pool_l;

	addr_ind_type out_pool_index = (addr_ind_type) 0;
	counter_h_loop:
	for (loop_ind_type counter_h = 0; counter_h < B_OHEIGHT_MUL_B_OWIDTH; counter_h = counter_h + POOL_H_MUL_B_OWIDTH) {
		counter_w_loop:
		for (loop_ind_type counter_w = 0; counter_w < B_OWIDTH; counter_w = counter_w + 2) {
        //#pragma HLS PIPELINE II=1
			 pool_bram_to_reg<LOCAL_BUF_T, LOCAL_BUF_SIZE, POOLING_SIZE, POOL_H_MUL_B_OWIDTH, B_OWIDTH, POOL_W>(counter_h, counter_w, local_out_l, in_reg_pool_l);
			 pooling_calc<LOCAL_BUF_T, POOLING_SIZE>(in_reg_pool_l, out_reg_pool_l);
			 local_out_pool_l[out_pool_index] = out_reg_pool_l;
			 out_pool_index++;
		}
	}
}


#endif
