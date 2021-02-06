//################################################################################
//#
//#                           Author: Arash Fayyazi
//#                          E-mail: fayyazi@usc.edu
//#
//################################################################################
#define AP_INT_MAX_W 10000
#include <ap_int.h>
#include <hls_stream.h>

#ifndef __InterfaceTemplates_H__FG
#define __InterfaceTemplates_H__


// Streaming data from a stream fifo to a local buffer and make it one bit.
// MEM_IN_STREAM_SIZE = Height * Width * Channels
template <typename LOCAL_BUF_T, typename IN_STREAM_T, typename MAC_DATA_T, int LOCAL_BUF_SIZE, int IN_CHANNEL, int MEM_IN_STREAM_SIZE>
void load_buf_mac_to_nulla_one_in_channel(LOCAL_BUF_T local_in_l[LOCAL_BUF_SIZE], hls::stream<IN_STREAM_T> &in_stream, MAC_DATA_T ALPHA_THRESHOLD){
    fifo_loop:
    for (loop_ind_type fifo_idx = 0; fifo_idx < LOCAL_BUF_SIZE; fifo_idx += 1){
    #pragma HLS PIPELINE II=1
        IN_STREAM_T tmp = in_stream.read();
        unroll_loop:
        for (loop_ind_type idx = 0; idx < IN_CHANNEL; idx++) {
        #pragma HLS unroll
            MAC_DATA_T mac_data_converted = get_fixed_val<MAC_DATA_T, IN_STREAM_T>(tmp, idx);
            local_in_l[fifo_idx][idx] = (mac_data_converted > ALPHA_THRESHOLD) ? 1 : 0;
        }
    }
}

// Streaming data from a stream fifo to a local buffer and make it one bit.
// MEM_IN_STREAM_SIZE = Height * Width * Channels
// IN_CHANNEL_NUM_SIMD = floor(Channels / SUMD_LINES) * SIMD_LINES
// LAST_WORD_SIMD_LINE_IN_CHANNEL = Channels % SUMD_LINES
template <typename LOCAL_BUF_T, typename IN_STREAM_T, typename MAC_DATA_T, int LOCAL_BUF_SIZE, int IN_CHANNEL, int SIMD_LINE, int MEM_IN_STREAM_SIZE, int IN_CHANNEL_NUM_SIMD, int LAST_WORD_SIMD_LINE_IN_CHANNEL>
void load_buf_mac_to_nulla_multi_in_channel(LOCAL_BUF_T local_in_l[LOCAL_BUF_SIZE], hls::stream<IN_STREAM_T> &in_stream, MAC_DATA_T ALPHA_THRESHOLD){
	LOCAL_BUF_T local_val;
	fifo_loop:
    for (loop_ind_type fifo_idx = 0; fifo_idx < LOCAL_BUF_SIZE; fifo_idx += 1){
    //#pragma HLS PIPELINE II=1
        unroll_loop:
        for (loop_ind_type word_idx = 0; word_idx < IN_CHANNEL_NUM_SIMD; word_idx+= SIMD_LINE){
			#pragma HLS PIPELINE II=1
        IN_STREAM_T tmp = in_stream.read();
        ap_uint<SIMD_LINE> local_in_v;
            for (loop_ind_type idx = 0; idx < SIMD_LINE; idx++) {
            #pragma HLS unroll
                MAC_DATA_T mac_data_converted = get_fixed_val<MAC_DATA_T, IN_STREAM_T>(tmp, idx);
                local_in_v[idx] = (mac_data_converted >= ALPHA_THRESHOLD) ? 1 : 0;
            }
            local_val.range(word_idx+SIMD_LINE - 1, word_idx) = local_in_v.range();
        }
        IN_STREAM_T tmp = in_stream.read();
        ap_uint<LAST_WORD_SIMD_LINE_IN_CHANNEL> local_in_v_last;
        for (loop_ind_type idx = 0; idx < LAST_WORD_SIMD_LINE_IN_CHANNEL; idx++) {
        #pragma HLS unroll

            MAC_DATA_T mac_data_converted = get_fixed_val<MAC_DATA_T, IN_STREAM_T>(tmp, idx);
            local_in_v_last[idx] = (mac_data_converted >= ALPHA_THRESHOLD) ? 1 : 0;
        }
        local_val.range(LAST_WORD_SIMD_LINE_IN_CHANNEL + IN_CHANNEL_NUM_SIMD - 1, IN_CHANNEL_NUM_SIMD) = local_in_v_last.range();
        local_in_l[fifo_idx] = local_val;
    }
}


// Streaming data from a local buffer to a stream fifo and make it MAC_DATA_TYPE
// MEM_OUT_STREAM_SIZE = Height * Width * Channels
template <typename LOCAL_BUF_T, typename OUT_STREAM_T, typename MAC_DATA_T, int LOCAL_BUF_SIZE, int OUT_CHANNEL, int MEM_OUT_STREAM_SIZE>
void store_buf_nulla_to_mac_one_in_channel(LOCAL_BUF_T local_out_l[LOCAL_BUF_SIZE], hls::stream<OUT_STREAM_T> &out_stream, MAC_DATA_T ALPHA_VAL){
    fifo_loop:
    for (loop_ind_type fifo_idx = 0; fifo_idx < LOCAL_BUF_SIZE; fifo_idx += 1){
    #pragma HLS PIPELINE II=1
        OUT_STREAM_T tmp = 0;
        unroll_loop:
        for (loop_ind_type idx = 0; idx < OUT_CHANNEL; idx++) {
        #pragma HLS unroll
            MAC_DATA_T mac_data_converted = local_out_l[fifo_idx][idx] ? ALPHA_VAL : (MAC_DATA_T) 0;
            store_fixed_val<MAC_DATA_T, OUT_STREAM_T>(tmp, idx, mac_data_converted);
        }
        out_stream << tmp;
    }
}

// Streaming data from a local buffer to a stream fifo and make it MAC_DATA_TYPE
// MEM_OUT_STREAM_SIZE = Height * Width * Channels
// OUT_CHANNEL_NUM_SIMD = floor(Channels / SUMD_LINES) * SIMD_LINES
// LAST_WORD_SIMD_LINE_OUT_CHANNEL = Channels % SUMD_LINES
template <typename LOCAL_BUF_T, typename OUT_STREAM_T, typename MAC_DATA_T, int LOCAL_BUF_SIZE, int OUT_CHANNEL, int SIMD_LINE, int MEM_OUT_STREAM_SIZE, int OUT_CHANNEL_NUM_SIMD, int LAST_WORD_SIMD_LINE_OUT_CHANNEL>
void store_buf_nulla_to_mac_multi_out_channel(LOCAL_BUF_T local_out_l[LOCAL_BUF_SIZE], hls::stream<OUT_STREAM_T> &out_stream, MAC_DATA_T ALPHA_VAL){
    OUT_STREAM_T tmp;
    LOCAL_BUF_T local_val;
    fifo_loop:
    for (loop_ind_type fifo_idx = 0; fifo_idx < LOCAL_BUF_SIZE; fifo_idx += 1){
    local_val = local_out_l[fifo_idx];
    ap_uint<SIMD_LINE> local_out_v;
    //#pragma HLS PIPELINE II=1
        unroll_loop:
        for (loop_ind_type word_idx = 0; word_idx < OUT_CHANNEL_NUM_SIMD; word_idx+= SIMD_LINE){
			#pragma HLS PIPELINE II=1
        	local_out_v.range() = local_val.range(word_idx+SIMD_LINE - 1, word_idx);
            for (loop_ind_type idx = 0; idx < SIMD_LINE; idx++) {
            #pragma HLS unroll
                MAC_DATA_T mac_data_converted = local_out_v[idx] ? ALPHA_VAL : (MAC_DATA_T) 0;
                store_fixed_val<MAC_DATA_T, OUT_STREAM_T>(tmp, idx, mac_data_converted);
            }
            out_stream << tmp;
        }
        ap_uint<LAST_WORD_SIMD_LINE_OUT_CHANNEL> local_out_v_last;
        local_out_v_last.range() = local_val.range(LAST_WORD_SIMD_LINE_OUT_CHANNEL + OUT_CHANNEL_NUM_SIMD - 1, OUT_CHANNEL_NUM_SIMD);
        tmp = 0;
        for (loop_ind_type idx = 0; idx < LAST_WORD_SIMD_LINE_OUT_CHANNEL; idx++) {
        #pragma HLS unroll
            MAC_DATA_T mac_data_converted = local_out_v_last[idx] ? ALPHA_VAL : (MAC_DATA_T) 0;
            store_fixed_val<MAC_DATA_T, OUT_STREAM_T>(tmp, idx, mac_data_converted);
        }
        out_stream << tmp;
    }
}



#endif
