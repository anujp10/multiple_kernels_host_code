`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif

module Memory(
  input         clock,
  input  [9:0]  io_raddr,
  output [31:0] io_rdata,
  input  [2:0]  io_write_type,
  input  [31:0] io_wdata,
  input  [9:0]  io_waddr,
  input         io_wen,
  input         io_valid
);
  reg [7:0] regfile [0:1023];
  reg [31:0] _RAND_0;
  wire [7:0] regfile__T_42_data;
  wire [9:0] regfile__T_42_addr;
  wire [7:0] regfile__T_50_data;
  wire [9:0] regfile__T_50_addr;
  wire [7:0] regfile__T_54_data;
  wire [9:0] regfile__T_54_addr;
  wire [7:0] regfile__T_63_data;
  wire [9:0] regfile__T_63_addr;
  wire [7:0] regfile__T_67_data;
  wire [9:0] regfile__T_67_addr;
  wire [7:0] regfile__T_71_data;
  wire [9:0] regfile__T_71_addr;
  wire [7:0] regfile__T_75_data;
  wire [9:0] regfile__T_75_addr;
  wire [7:0] regfile__T_81_data;
  wire [9:0] regfile__T_81_addr;
  wire [7:0] regfile__T_89_data;
  wire [9:0] regfile__T_89_addr;
  wire [7:0] regfile__T_93_data;
  wire [9:0] regfile__T_93_addr;
  wire [7:0] regfile__T_102_data;
  wire [9:0] regfile__T_102_addr;
  wire [7:0] regfile__T_106_data;
  wire [9:0] regfile__T_106_addr;
  wire [7:0] regfile__T_110_data;
  wire [9:0] regfile__T_110_addr;
  wire [7:0] regfile__T_114_data;
  wire [9:0] regfile__T_114_addr;
  wire [7:0] regfile__T_14_data;
  wire [9:0] regfile__T_14_addr;
  wire  regfile__T_14_mask;
  wire  regfile__T_14_en;
  wire [7:0] regfile__T_17_data;
  wire [9:0] regfile__T_17_addr;
  wire  regfile__T_17_mask;
  wire  regfile__T_17_en;
  wire [7:0] regfile__T_22_data;
  wire [9:0] regfile__T_22_addr;
  wire  regfile__T_22_mask;
  wire  regfile__T_22_en;
  wire [7:0] regfile__T_25_data;
  wire [9:0] regfile__T_25_addr;
  wire  regfile__T_25_mask;
  wire  regfile__T_25_en;
  wire [7:0] regfile__T_30_data;
  wire [9:0] regfile__T_30_addr;
  wire  regfile__T_30_mask;
  wire  regfile__T_30_en;
  wire [7:0] regfile__T_35_data;
  wire [9:0] regfile__T_35_addr;
  wire  regfile__T_35_mask;
  wire  regfile__T_35_en;
  wire [7:0] regfile__T_40_data;
  wire [9:0] regfile__T_40_addr;
  wire  regfile__T_40_mask;
  wire  regfile__T_40_en;
  wire  _T_12;
  wire [7:0] _T_13;
  wire  _T_15;
  wire [7:0] _T_16;
  wire [10:0] _T_19;
  wire [9:0] _T_20;
  wire [7:0] _T_21;
  wire  _T_23;
  wire [7:0] _T_24;
  wire [9:0] _T_28;
  wire [7:0] _T_29;
  wire [10:0] _T_32;
  wire [9:0] _T_33;
  wire [7:0] _T_34;
  wire [10:0] _T_37;
  wire [9:0] _T_38;
  wire [7:0] _T_39;
  wire  _GEN_18;
  wire  _GEN_32;
  wire  _GEN_38;
  wire  _GEN_48;
  wire  _GEN_52;
  wire  _GEN_58;
  wire  _GEN_68;
  wire  _GEN_72;
  wire  _GEN_78;
  wire [10:0] _T_52;
  wire [9:0] _T_53;
  wire [9:0] _T_66;
  wire [10:0] _T_69;
  wire [9:0] _T_70;
  wire [10:0] _T_73;
  wire [9:0] _T_74;
  wire [9:0] _T_92;
  wire [9:0] _T_105;
  wire [9:0] _T_109;
  wire [9:0] _T_113;
  wire [15:0] _T_115;
  wire [15:0] _T_116;
  wire [31:0] _T_117;
  assign regfile__T_42_addr = io_raddr;
  assign regfile__T_42_data = regfile[regfile__T_42_addr];
  assign regfile__T_50_addr = io_raddr;
  assign regfile__T_50_data = regfile[regfile__T_50_addr];
  assign regfile__T_54_addr = _T_53;
  assign regfile__T_54_data = regfile[regfile__T_54_addr];
  assign regfile__T_63_addr = io_raddr;
  assign regfile__T_63_data = regfile[regfile__T_63_addr];
  assign regfile__T_67_addr = _T_66;
  assign regfile__T_67_data = regfile[regfile__T_67_addr];
  assign regfile__T_71_addr = _T_70;
  assign regfile__T_71_data = regfile[regfile__T_71_addr];
  assign regfile__T_75_addr = _T_74;
  assign regfile__T_75_data = regfile[regfile__T_75_addr];
  assign regfile__T_81_addr = io_raddr;
  assign regfile__T_81_data = regfile[regfile__T_81_addr];
  assign regfile__T_89_addr = io_raddr;
  assign regfile__T_89_data = regfile[regfile__T_89_addr];
  assign regfile__T_93_addr = _T_92;
  assign regfile__T_93_data = regfile[regfile__T_93_addr];
  assign regfile__T_102_addr = io_raddr;
  assign regfile__T_102_data = regfile[regfile__T_102_addr];
  assign regfile__T_106_addr = _T_105;
  assign regfile__T_106_data = regfile[regfile__T_106_addr];
  assign regfile__T_110_addr = _T_109;
  assign regfile__T_110_data = regfile[regfile__T_110_addr];
  assign regfile__T_114_addr = _T_113;
  assign regfile__T_114_data = regfile[regfile__T_114_addr];
  assign regfile__T_14_data = _T_13;
  assign regfile__T_14_addr = io_waddr;
  assign regfile__T_14_mask = _GEN_68;
  assign regfile__T_14_en = _GEN_68;
  assign regfile__T_17_data = _T_16;
  assign regfile__T_17_addr = io_waddr;
  assign regfile__T_17_mask = _GEN_72;
  assign regfile__T_17_en = _GEN_72;
  assign regfile__T_22_data = _T_21;
  assign regfile__T_22_addr = _T_20;
  assign regfile__T_22_mask = _GEN_72;
  assign regfile__T_22_en = _GEN_72;
  assign regfile__T_25_data = _T_24;
  assign regfile__T_25_addr = io_waddr;
  assign regfile__T_25_mask = _GEN_78;
  assign regfile__T_25_en = _GEN_78;
  assign regfile__T_30_data = _T_29;
  assign regfile__T_30_addr = _T_28;
  assign regfile__T_30_mask = _GEN_78;
  assign regfile__T_30_en = _GEN_78;
  assign regfile__T_35_data = _T_34;
  assign regfile__T_35_addr = _T_33;
  assign regfile__T_35_mask = _GEN_78;
  assign regfile__T_35_en = _GEN_78;
  assign regfile__T_40_data = _T_39;
  assign regfile__T_40_addr = _T_38;
  assign regfile__T_40_mask = _GEN_78;
  assign regfile__T_40_en = _GEN_78;
  assign _T_12 = io_write_type == 3'h1;
  assign _T_13 = io_wdata[7:0];
  assign _T_15 = io_write_type == 3'h2;
  assign _T_16 = io_wdata[7:0];
  assign _T_19 = io_waddr + 10'h1;
  assign _T_20 = _T_19[9:0];
  assign _T_21 = io_wdata[15:8];
  assign _T_23 = io_write_type == 3'h3;
  assign _T_24 = io_wdata[7:0];
  assign _T_28 = _T_19[9:0];
  assign _T_29 = io_wdata[15:8];
  assign _T_32 = io_waddr + 10'h2;
  assign _T_33 = _T_32[9:0];
  assign _T_34 = io_wdata[23:16];
  assign _T_37 = io_waddr + 10'h3;
  assign _T_38 = _T_37[9:0];
  assign _T_39 = io_wdata[31:24];
  assign _GEN_18 = _T_15 ? 1'h0 : _T_23;
  assign _GEN_32 = _T_12 ? 1'h0 : _T_15;
  assign _GEN_38 = _T_12 ? 1'h0 : _GEN_18;
  assign _GEN_48 = io_wen ? _T_12 : 1'h0;
  assign _GEN_52 = io_wen ? _GEN_32 : 1'h0;
  assign _GEN_58 = io_wen ? _GEN_38 : 1'h0;
  assign _GEN_68 = io_valid ? _GEN_48 : 1'h0;
  assign _GEN_72 = io_valid ? _GEN_52 : 1'h0;
  assign _GEN_78 = io_valid ? _GEN_58 : 1'h0;
  assign _T_52 = io_raddr + 10'h1;
  assign _T_53 = _T_52[9:0];
  assign _T_66 = _T_52[9:0];
  assign _T_69 = io_raddr + 10'h2;
  assign _T_70 = _T_69[9:0];
  assign _T_73 = io_raddr + 10'h3;
  assign _T_74 = _T_73[9:0];
  assign _T_92 = _T_52[9:0];
  assign _T_105 = _T_52[9:0];
  assign _T_109 = _T_69[9:0];
  assign _T_113 = _T_73[9:0];
  assign _T_115 = {regfile__T_106_data,regfile__T_102_data};
  assign _T_116 = {regfile__T_114_data,regfile__T_110_data};
  assign _T_117 = {_T_116,_T_115};
  assign io_rdata = _T_117;

  always @(posedge clock) begin
    if(regfile__T_14_en & regfile__T_14_mask) begin
      regfile[regfile__T_14_addr] <= regfile__T_14_data;
    end
    if(regfile__T_17_en & regfile__T_17_mask) begin
      regfile[regfile__T_17_addr] <= regfile__T_17_data;
    end
    if(regfile__T_22_en & regfile__T_22_mask) begin
      regfile[regfile__T_22_addr] <= regfile__T_22_data;
    end
    if(regfile__T_25_en & regfile__T_25_mask) begin
      regfile[regfile__T_25_addr] <= regfile__T_25_data;
    end
    if(regfile__T_30_en & regfile__T_30_mask) begin
      regfile[regfile__T_30_addr] <= regfile__T_30_data;
    end
    if(regfile__T_35_en & regfile__T_35_mask) begin
      regfile[regfile__T_35_addr] <= regfile__T_35_data;
    end
    if(regfile__T_40_en & regfile__T_40_mask) begin
      regfile[regfile__T_40_addr] <= regfile__T_40_data;
    end
  end
endmodule

*/

module Memory(
  input         clock,
  input  [9:0]  io_raddr,
  output [31:0] io_rdata,
  input  [2:0]  io_write_type,
  input  [31:0] io_wdata,
  input  [9:0]  io_waddr,
  input         io_wen,
  input         io_valid
);

endmodule

module Frontend(
  input         clock,
  input         reset,
  input         io_cpu_req_valid,
  input  [9:0]  io_cpu_req_bits_pc,
  input         io_cpu_resp_ready,
  output        io_cpu_resp_valid,
  output [9:0]  io_cpu_resp_bits_pc,
  output [31:0] io_cpu_resp_bits_inst,
  input         io_load_enable,
  input         io_load_wen,
  input  [9:0]  io_load_addr,
  input  [31:0] io_load_instr,
  output [31:0] io_load_rdata,
  output [9:0]  io_test_if_pc_next,
  output [9:0]  io_test_if_reg_pc,
  output        io_test_if_reg_valid,
  output [31:0] io_test_if_inst,
  output [31:0] io_test_exe_reg_inst,
  output [9:0]  io_test_exe_reg_pc,
  output        io_test_exe_reg_valid,
  output        io_test_resp_ready,
  output        io_test_req_valid,
  output [9:0]  io_test_req_bits_pc
);
  reg  if_reg_valid;
  reg [31:0] _RAND_0;
  reg [9:0] if_reg_pc;
  reg [31:0] _RAND_1;
  reg  exe_reg_valid;
  reg [31:0] _RAND_2;
  reg [9:0] exe_reg_pc;
  reg [31:0] _RAND_3;
  reg [31:0] exe_reg_inst;
  reg [31:0] _RAND_4;
  wire [9:0] if_pc_next;
  wire [10:0] _T_37;
  wire [9:0] if_pc_plus4;
  wire [9:0] _GEN_0;
  wire [9:0] _GEN_1;
  wire [9:0] _GEN_2;
  wire  _GEN_3;
  wire  imem_clock;
  wire [9:0] imem_io_raddr;
  wire [31:0] imem_io_rdata;
  wire [2:0] imem_io_write_type;
  wire [31:0] imem_io_wdata;
  wire [9:0] imem_io_waddr;
  wire  imem_io_wen;
  wire  imem_io_valid;
  wire  _GEN_4;
  wire [9:0] _GEN_5;
  wire [31:0] _GEN_6;
  wire [2:0] _GEN_7;
  wire  _GEN_8;
  wire [9:0] _GEN_10;
  wire [31:0] _GEN_11;
  wire  _T_44;
  wire  _T_45;
  wire  _GEN_12;
  wire [9:0] _GEN_13;
  wire [31:0] _GEN_14;
  Memory imem (
    .clock(imem_clock),
    .io_raddr(imem_io_raddr),
    .io_rdata(imem_io_rdata),
    .io_write_type(imem_io_write_type),
    .io_wdata(imem_io_wdata),
    .io_waddr(imem_io_waddr),
    .io_wen(imem_io_wen),
    .io_valid(imem_io_valid)
  );
  assign _T_37 = if_reg_pc + 10'h4;
  assign if_pc_plus4 = _T_37[9:0];
  assign _GEN_0 = io_cpu_req_valid ? io_cpu_req_bits_pc : if_pc_plus4;
  assign _GEN_1 = io_cpu_resp_ready ? _GEN_0 : if_reg_pc;
  assign _GEN_2 = io_cpu_resp_ready ? if_pc_next : if_reg_pc;
  assign _GEN_3 = io_cpu_resp_ready ? 1'h1 : if_reg_valid;
  assign _GEN_4 = io_load_enable ? io_load_wen : 1'h0;
  assign _GEN_5 = io_load_enable ? io_load_addr : 10'h0;
  assign _GEN_6 = io_load_enable ? io_load_instr : 32'h0;
  assign _GEN_7 = io_load_enable ? 3'h3 : 3'h0;
  assign _GEN_8 = io_load_enable ? 1'h1 : if_reg_valid;
  assign _GEN_10 = io_load_enable ? io_load_addr : if_reg_pc;
  assign _GEN_11 = imem_io_rdata;
  assign _T_44 = io_cpu_req_valid == 1'h0;
  assign _T_45 = if_reg_valid & _T_44;
  assign _GEN_12 = io_cpu_resp_ready ? _T_45 : exe_reg_valid;
  assign _GEN_13 = io_cpu_resp_ready ? if_reg_pc : exe_reg_pc;
  assign _GEN_14 = io_cpu_resp_ready ? imem_io_rdata : exe_reg_inst;
  assign io_cpu_resp_valid = exe_reg_valid;
  assign io_cpu_resp_bits_pc = exe_reg_pc;
  assign io_cpu_resp_bits_inst = exe_reg_inst;
  assign io_load_rdata = _GEN_11;
  assign io_test_if_pc_next = if_pc_next;
  assign io_test_if_reg_pc = if_reg_pc;
  assign io_test_if_reg_valid = if_reg_valid;
  assign io_test_if_inst = imem_io_rdata;
  assign io_test_exe_reg_inst = exe_reg_inst;
  assign io_test_exe_reg_pc = exe_reg_pc;
  assign io_test_exe_reg_valid = exe_reg_valid;
  assign io_test_resp_ready = io_cpu_resp_ready;
  assign io_test_req_valid = io_cpu_req_valid;
  assign io_test_req_bits_pc = io_cpu_req_bits_pc;
  assign if_pc_next = _GEN_1;
  assign imem_io_raddr = _GEN_10;
  assign imem_io_write_type = _GEN_7;
  assign imem_io_wdata = _GEN_6;
  assign imem_io_waddr = _GEN_5;
  assign imem_io_wen = _GEN_4;
  assign imem_io_valid = _GEN_8;
  assign imem_clock = clock;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  if_reg_valid = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  if_reg_pc = _RAND_1[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  exe_reg_valid = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  exe_reg_pc = _RAND_3[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  exe_reg_inst = _RAND_4[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      if_reg_valid <= 1'h0;
    end else begin
      if (io_cpu_resp_ready) begin
        if_reg_valid <= 1'h1;
      end
    end
    if (reset) begin
      if_reg_pc <= 10'h0;
    end else begin
      if (io_cpu_resp_ready) begin
        if_reg_pc <= if_pc_next;
      end
    end
    if (reset) begin
      exe_reg_valid <= 1'h0;
    end else begin
      if (io_cpu_resp_ready) begin
        exe_reg_valid <= _T_45;
      end
    end
    if (io_cpu_resp_ready) begin
      exe_reg_pc <= if_reg_pc;
    end
    if (reset) begin
      exe_reg_inst <= 32'h4033;
    end else begin
      if (io_cpu_resp_ready) begin
        exe_reg_inst <= imem_io_rdata;
      end
    end
  end
endmodule
module Decoder(
  input  [31:0] io_instruction,
  output        io_output_is_valid,
  output [3:0]  io_output_branch_type,
  output        io_output_is_jump,
  output [1:0]  io_output_op1_select,
  output [1:0]  io_output_op2_select,
  output [3:0]  io_output_alu_function,
  output [1:0]  io_output_wb_select,
  output        io_output_rf_write_enable,
  output        io_output_bypassable,
  output        io_output_mem_enable,
  output        io_output_mem_command,
  output [2:0]  io_output_mask_type,
  output [2:0]  io_output_csr_cmd,
  output [2:0]  io_output_mem
);
  wire [31:0] _T_19;
  wire  _T_20;
  wire  _T_24;
  wire  _T_28;
  wire  _T_32;
  wire  _T_36;
  wire  _T_40;
  wire  _T_44;
  wire  _T_48;
  wire [31:0] _T_51;
  wire  _T_52;
  wire  _T_56;
  wire  _T_60;
  wire  _T_64;
  wire  _T_68;
  wire  _T_72;
  wire  _T_76;
  wire  _T_80;
  wire [31:0] _T_83;
  wire  _T_84;
  wire  _T_88;
  wire  _T_92;
  wire [31:0] _T_95;
  wire  _T_96;
  wire  _T_100;
  wire  _T_104;
  wire  _T_108;
  wire  _T_112;
  wire  _T_116;
  wire  _T_120;
  wire  _T_124;
  wire  _T_128;
  wire  _T_132;
  wire  _T_136;
  wire  _T_140;
  wire  _T_144;
  wire  _T_148;
  wire  _T_152;
  wire  _T_156;
  wire  _T_160;
  wire  _T_164;
  wire  _T_168;
  wire  _T_172;
  wire  _T_176;
  wire  _T_180;
  wire  _T_184;
  wire  _T_188;
  wire  _T_192;
  wire  _T_196;
  wire  _T_200;
  wire  _T_204;
  wire  _T_208;
  wire  _T_212;
  wire  _T_216;
  wire  _T_218;
  wire  _T_219;
  wire  _T_220;
  wire  _T_221;
  wire  _T_222;
  wire  _T_223;
  wire  _T_224;
  wire  _T_225;
  wire  _T_226;
  wire  _T_227;
  wire  _T_228;
  wire  _T_229;
  wire  _T_230;
  wire  _T_231;
  wire  _T_232;
  wire  _T_233;
  wire  _T_234;
  wire  _T_235;
  wire  _T_236;
  wire  _T_237;
  wire  _T_238;
  wire  _T_239;
  wire  _T_240;
  wire  _T_241;
  wire  _T_242;
  wire  _T_243;
  wire  _T_244;
  wire  _T_245;
  wire  _T_246;
  wire  _T_247;
  wire  _T_248;
  wire  _T_249;
  wire  _T_250;
  wire  _T_251;
  wire  _T_252;
  wire  _T_253;
  wire  _T_254;
  wire  _T_255;
  wire  _T_256;
  wire  _T_257;
  wire  _T_258;
  wire  _T_259;
  wire  _T_260;
  wire  _T_261;
  wire  _T_262;
  wire  _T_263;
  wire  _T_264;
  wire  _T_265;
  wire  signals_0;
  wire [3:0] _T_279;
  wire [3:0] _T_280;
  wire [3:0] _T_281;
  wire [3:0] _T_282;
  wire [3:0] _T_283;
  wire [3:0] _T_284;
  wire [3:0] _T_285;
  wire [3:0] _T_286;
  wire [3:0] _T_287;
  wire [3:0] _T_288;
  wire [3:0] _T_289;
  wire [3:0] _T_290;
  wire [3:0] _T_291;
  wire [3:0] _T_292;
  wire [3:0] _T_293;
  wire [3:0] _T_294;
  wire [3:0] _T_295;
  wire [3:0] _T_296;
  wire [3:0] _T_297;
  wire [3:0] _T_298;
  wire [3:0] _T_299;
  wire [3:0] _T_300;
  wire [3:0] _T_301;
  wire [3:0] _T_302;
  wire [3:0] _T_303;
  wire [3:0] _T_304;
  wire [3:0] _T_305;
  wire [3:0] _T_306;
  wire [3:0] _T_307;
  wire [3:0] _T_308;
  wire [3:0] _T_309;
  wire [3:0] _T_310;
  wire [3:0] _T_311;
  wire [3:0] _T_312;
  wire [3:0] _T_313;
  wire [3:0] _T_314;
  wire [3:0] signals_1;
  wire  _T_335;
  wire  _T_336;
  wire  _T_337;
  wire  _T_338;
  wire  _T_339;
  wire  _T_340;
  wire  _T_341;
  wire  _T_342;
  wire  _T_343;
  wire  _T_344;
  wire  _T_345;
  wire  _T_346;
  wire  _T_347;
  wire  _T_348;
  wire  _T_349;
  wire  _T_350;
  wire  _T_351;
  wire  _T_352;
  wire  _T_353;
  wire  _T_354;
  wire  _T_355;
  wire  _T_356;
  wire  _T_357;
  wire  _T_358;
  wire  _T_359;
  wire  _T_360;
  wire  _T_361;
  wire  _T_362;
  wire  _T_363;
  wire  signals_2;
  wire [1:0] _T_371;
  wire [1:0] _T_372;
  wire [1:0] _T_373;
  wire [1:0] _T_374;
  wire [1:0] _T_375;
  wire [1:0] _T_376;
  wire [1:0] _T_377;
  wire [1:0] _T_378;
  wire [1:0] _T_379;
  wire [1:0] _T_380;
  wire [1:0] _T_381;
  wire [1:0] _T_382;
  wire [1:0] _T_383;
  wire [1:0] _T_384;
  wire [1:0] _T_385;
  wire [1:0] _T_386;
  wire [1:0] _T_387;
  wire [1:0] _T_388;
  wire [1:0] _T_389;
  wire [1:0] _T_390;
  wire [1:0] _T_391;
  wire [1:0] _T_392;
  wire [1:0] _T_393;
  wire [1:0] _T_394;
  wire [1:0] _T_395;
  wire [1:0] _T_396;
  wire [1:0] _T_397;
  wire [1:0] _T_398;
  wire [1:0] _T_399;
  wire [1:0] _T_400;
  wire [1:0] _T_401;
  wire [1:0] _T_402;
  wire [1:0] _T_403;
  wire [1:0] _T_404;
  wire [1:0] _T_405;
  wire [1:0] _T_406;
  wire [1:0] _T_407;
  wire [1:0] _T_408;
  wire [1:0] _T_409;
  wire [1:0] _T_410;
  wire [1:0] _T_411;
  wire [1:0] _T_412;
  wire [1:0] signals_3;
  wire [1:0] _T_432;
  wire [1:0] _T_433;
  wire [1:0] _T_434;
  wire [1:0] _T_435;
  wire [1:0] _T_436;
  wire [1:0] _T_437;
  wire [1:0] _T_438;
  wire [1:0] _T_439;
  wire [1:0] _T_440;
  wire [1:0] _T_441;
  wire [1:0] _T_442;
  wire [1:0] _T_443;
  wire [1:0] _T_444;
  wire [1:0] _T_445;
  wire [1:0] _T_446;
  wire [1:0] _T_447;
  wire [1:0] _T_448;
  wire [1:0] _T_449;
  wire [1:0] _T_450;
  wire [1:0] _T_451;
  wire [1:0] _T_452;
  wire [1:0] _T_453;
  wire [1:0] _T_454;
  wire [1:0] _T_455;
  wire [1:0] _T_456;
  wire [1:0] _T_457;
  wire [1:0] _T_458;
  wire [1:0] _T_459;
  wire [1:0] _T_460;
  wire [1:0] _T_461;
  wire [1:0] signals_4;
  wire [3:0] _T_469;
  wire [3:0] _T_470;
  wire [3:0] _T_471;
  wire [3:0] _T_472;
  wire [3:0] _T_473;
  wire [3:0] _T_474;
  wire [3:0] _T_475;
  wire [3:0] _T_476;
  wire [3:0] _T_477;
  wire [3:0] _T_478;
  wire [3:0] _T_479;
  wire [3:0] _T_480;
  wire [3:0] _T_481;
  wire [3:0] _T_482;
  wire [3:0] _T_483;
  wire [3:0] _T_484;
  wire [3:0] _T_485;
  wire [3:0] _T_486;
  wire [3:0] _T_487;
  wire [3:0] _T_488;
  wire [3:0] _T_489;
  wire [3:0] _T_490;
  wire [3:0] _T_491;
  wire [3:0] _T_492;
  wire [3:0] _T_493;
  wire [3:0] _T_494;
  wire [3:0] _T_495;
  wire [3:0] _T_496;
  wire [3:0] _T_497;
  wire [3:0] _T_498;
  wire [3:0] _T_499;
  wire [3:0] _T_500;
  wire [3:0] _T_501;
  wire [3:0] _T_502;
  wire [3:0] _T_503;
  wire [3:0] _T_504;
  wire [3:0] _T_505;
  wire [3:0] _T_506;
  wire [3:0] _T_507;
  wire [3:0] _T_508;
  wire [3:0] _T_509;
  wire [3:0] _T_510;
  wire [3:0] signals_5;
  wire [1:0] _T_518;
  wire [1:0] _T_519;
  wire [1:0] _T_520;
  wire [1:0] _T_521;
  wire [1:0] _T_522;
  wire [1:0] _T_523;
  wire [1:0] _T_524;
  wire [1:0] _T_525;
  wire [1:0] _T_526;
  wire [1:0] _T_527;
  wire [1:0] _T_528;
  wire [1:0] _T_529;
  wire [1:0] _T_530;
  wire [1:0] _T_531;
  wire [1:0] _T_532;
  wire [1:0] _T_533;
  wire [1:0] _T_534;
  wire [1:0] _T_535;
  wire [1:0] _T_536;
  wire [1:0] _T_537;
  wire [1:0] _T_538;
  wire [1:0] _T_539;
  wire [1:0] _T_540;
  wire [1:0] _T_541;
  wire [1:0] _T_542;
  wire [1:0] _T_543;
  wire [1:0] _T_544;
  wire [1:0] _T_545;
  wire [1:0] _T_546;
  wire [1:0] _T_547;
  wire [1:0] _T_548;
  wire [1:0] _T_549;
  wire [1:0] _T_550;
  wire [1:0] _T_551;
  wire [1:0] _T_552;
  wire [1:0] _T_553;
  wire [1:0] _T_554;
  wire [1:0] _T_555;
  wire [1:0] _T_556;
  wire [1:0] _T_557;
  wire [1:0] _T_558;
  wire [1:0] _T_559;
  wire [1:0] signals_6;
  wire  _T_568;
  wire  _T_569;
  wire  _T_570;
  wire  _T_571;
  wire  _T_572;
  wire  _T_573;
  wire  _T_574;
  wire  _T_575;
  wire  _T_576;
  wire  _T_577;
  wire  _T_578;
  wire  _T_579;
  wire  _T_580;
  wire  _T_581;
  wire  _T_582;
  wire  _T_583;
  wire  _T_584;
  wire  _T_585;
  wire  _T_586;
  wire  _T_587;
  wire  _T_588;
  wire  _T_589;
  wire  _T_590;
  wire  _T_591;
  wire  _T_592;
  wire  _T_593;
  wire  _T_594;
  wire  _T_595;
  wire  _T_596;
  wire  _T_597;
  wire  _T_598;
  wire  _T_599;
  wire  _T_600;
  wire  _T_601;
  wire  _T_602;
  wire  _T_603;
  wire  _T_604;
  wire  _T_605;
  wire  _T_606;
  wire  _T_607;
  wire  _T_608;
  wire  signals_7;
  wire  _T_630;
  wire  _T_631;
  wire  _T_632;
  wire  _T_633;
  wire  _T_634;
  wire  _T_635;
  wire  _T_636;
  wire  _T_637;
  wire  _T_638;
  wire  _T_639;
  wire  _T_640;
  wire  _T_641;
  wire  _T_642;
  wire  _T_643;
  wire  _T_644;
  wire  _T_645;
  wire  _T_646;
  wire  _T_647;
  wire  _T_648;
  wire  _T_649;
  wire  _T_650;
  wire  _T_651;
  wire  _T_652;
  wire  _T_653;
  wire  _T_654;
  wire  _T_655;
  wire  _T_656;
  wire  _T_657;
  wire  signals_8;
  wire  _T_659;
  wire  _T_660;
  wire  _T_661;
  wire  _T_662;
  wire  _T_663;
  wire  _T_664;
  wire  _T_665;
  wire  _T_666;
  wire  _T_667;
  wire  _T_668;
  wire  _T_669;
  wire  _T_670;
  wire  _T_671;
  wire  _T_672;
  wire  _T_673;
  wire  _T_674;
  wire  _T_675;
  wire  _T_676;
  wire  _T_677;
  wire  _T_678;
  wire  _T_679;
  wire  _T_680;
  wire  _T_681;
  wire  _T_682;
  wire  _T_683;
  wire  _T_684;
  wire  _T_685;
  wire  _T_686;
  wire  _T_687;
  wire  _T_688;
  wire  _T_689;
  wire  _T_690;
  wire  _T_691;
  wire  _T_692;
  wire  _T_693;
  wire  _T_694;
  wire  _T_695;
  wire  _T_696;
  wire  _T_697;
  wire  _T_698;
  wire  _T_699;
  wire  _T_700;
  wire  _T_701;
  wire  _T_702;
  wire  _T_703;
  wire  _T_704;
  wire  _T_705;
  wire  _T_706;
  wire  signals_9;
  wire  _T_750;
  wire  _T_751;
  wire  _T_752;
  wire  _T_753;
  wire  _T_754;
  wire  _T_755;
  wire  signals_10;
  wire [2:0] _T_798;
  wire [2:0] _T_799;
  wire [2:0] _T_800;
  wire [2:0] _T_801;
  wire [2:0] _T_802;
  wire [2:0] _T_803;
  wire [2:0] _T_804;
  wire [2:0] signals_11;
  wire [2:0] _T_807;
  wire [2:0] _T_808;
  wire [2:0] _T_809;
  wire [2:0] _T_810;
  wire [2:0] _T_811;
  wire [2:0] _T_812;
  wire [2:0] _T_813;
  wire [2:0] _T_814;
  wire [2:0] _T_815;
  wire [2:0] _T_816;
  wire [2:0] _T_817;
  wire [2:0] _T_818;
  wire [2:0] _T_819;
  wire [2:0] _T_820;
  wire [2:0] _T_821;
  wire [2:0] _T_822;
  wire [2:0] _T_823;
  wire [2:0] _T_824;
  wire [2:0] _T_825;
  wire [2:0] _T_826;
  wire [2:0] _T_827;
  wire [2:0] _T_828;
  wire [2:0] _T_829;
  wire [2:0] _T_830;
  wire [2:0] _T_831;
  wire [2:0] _T_832;
  wire [2:0] _T_833;
  wire [2:0] _T_834;
  wire [2:0] _T_835;
  wire [2:0] _T_836;
  wire [2:0] _T_837;
  wire [2:0] _T_838;
  wire [2:0] _T_839;
  wire [2:0] _T_840;
  wire [2:0] _T_841;
  wire [2:0] _T_842;
  wire [2:0] _T_843;
  wire [2:0] _T_844;
  wire [2:0] _T_845;
  wire [2:0] _T_846;
  wire [2:0] _T_847;
  wire [2:0] _T_848;
  wire [2:0] _T_849;
  wire [2:0] _T_850;
  wire [2:0] _T_851;
  wire [2:0] _T_852;
  wire [2:0] _T_853;
  wire [2:0] signals_12;
  wire [2:0] _T_854;
  wire [2:0] _T_855;
  wire [2:0] _T_856;
  wire [2:0] _T_857;
  wire [2:0] _T_858;
  wire [2:0] _T_859;
  wire [2:0] _T_860;
  wire [2:0] _T_861;
  wire [2:0] _T_862;
  wire [2:0] _T_863;
  wire [2:0] _T_864;
  wire [2:0] _T_865;
  wire [2:0] _T_866;
  wire [2:0] _T_867;
  wire [2:0] _T_868;
  wire [2:0] _T_869;
  wire [2:0] _T_870;
  wire [2:0] _T_871;
  wire [2:0] _T_872;
  wire [2:0] _T_873;
  wire [2:0] _T_874;
  wire [2:0] _T_875;
  wire [2:0] _T_876;
  wire [2:0] _T_877;
  wire [2:0] _T_878;
  wire [2:0] _T_879;
  wire [2:0] _T_880;
  wire [2:0] _T_881;
  wire [2:0] _T_882;
  wire [2:0] _T_883;
  wire [2:0] _T_884;
  wire [2:0] _T_885;
  wire [2:0] _T_886;
  wire [2:0] _T_887;
  wire [2:0] _T_888;
  wire [2:0] _T_889;
  wire [2:0] _T_890;
  wire [2:0] _T_891;
  wire [2:0] _T_892;
  wire [2:0] _T_893;
  wire [2:0] _T_894;
  wire [2:0] _T_895;
  wire [2:0] _T_896;
  wire [2:0] _T_897;
  wire [2:0] _T_898;
  wire [2:0] _T_899;
  wire [2:0] _T_900;
  wire [2:0] _T_901;
  wire [2:0] _T_902;
  wire [2:0] signals_13;
  assign _T_19 = io_instruction & 32'h707f;
  assign _T_20 = 32'h2003 == _T_19;
  assign _T_24 = 32'h3 == _T_19;
  assign _T_28 = 32'h4003 == _T_19;
  assign _T_32 = 32'h1003 == _T_19;
  assign _T_36 = 32'h5003 == _T_19;
  assign _T_40 = 32'h2023 == _T_19;
  assign _T_44 = 32'h23 == _T_19;
  assign _T_48 = 32'h1023 == _T_19;
  assign _T_51 = io_instruction & 32'h7f;
  assign _T_52 = 32'h17 == _T_51;
  assign _T_56 = 32'h37 == _T_51;
  assign _T_60 = 32'h13 == _T_19;
  assign _T_64 = 32'h7013 == _T_19;
  assign _T_68 = 32'h6013 == _T_19;
  assign _T_72 = 32'h4013 == _T_19;
  assign _T_76 = 32'h2013 == _T_19;
  assign _T_80 = 32'h3013 == _T_19;
  assign _T_83 = io_instruction & 32'hfc00707f;
  assign _T_84 = 32'h1013 == _T_83;
  assign _T_88 = 32'h40005013 == _T_83;
  assign _T_92 = 32'h5013 == _T_83;
  assign _T_95 = io_instruction & 32'hfe00707f;
  assign _T_96 = 32'h1033 == _T_95;
  assign _T_100 = 32'h33 == _T_95;
  assign _T_104 = 32'h40000033 == _T_95;
  assign _T_108 = 32'h2033 == _T_95;
  assign _T_112 = 32'h3033 == _T_95;
  assign _T_116 = 32'h7033 == _T_95;
  assign _T_120 = 32'h6033 == _T_95;
  assign _T_124 = 32'h4033 == _T_95;
  assign _T_128 = 32'h40005033 == _T_95;
  assign _T_132 = 32'h5033 == _T_95;
  assign _T_136 = 32'h6f == _T_51;
  assign _T_140 = 32'h67 == _T_19;
  assign _T_144 = 32'h63 == _T_19;
  assign _T_148 = 32'h1063 == _T_19;
  assign _T_152 = 32'h5063 == _T_19;
  assign _T_156 = 32'h7063 == _T_19;
  assign _T_160 = 32'h4063 == _T_19;
  assign _T_164 = 32'h6063 == _T_19;
  assign _T_168 = 32'h5073 == _T_19;
  assign _T_172 = 32'h6073 == _T_19;
  assign _T_176 = 32'h1073 == _T_19;
  assign _T_180 = 32'h2073 == _T_19;
  assign _T_184 = 32'h3073 == _T_19;
  assign _T_188 = 32'h7073 == _T_19;
  assign _T_192 = 32'h73 == io_instruction;
  assign _T_196 = 32'h30200073 == io_instruction;
  assign _T_200 = 32'h7b200073 == io_instruction;
  assign _T_204 = 32'h100073 == io_instruction;
  assign _T_208 = 32'h10500073 == io_instruction;
  assign _T_212 = 32'h100f == _T_19;
  assign _T_216 = 32'hf == _T_19;
  assign _T_218 = _T_212 ? 1'h1 : _T_216;
  assign _T_219 = _T_208 ? 1'h1 : _T_218;
  assign _T_220 = _T_204 ? 1'h1 : _T_219;
  assign _T_221 = _T_200 ? 1'h1 : _T_220;
  assign _T_222 = _T_196 ? 1'h1 : _T_221;
  assign _T_223 = _T_192 ? 1'h1 : _T_222;
  assign _T_224 = _T_188 ? 1'h1 : _T_223;
  assign _T_225 = _T_184 ? 1'h1 : _T_224;
  assign _T_226 = _T_180 ? 1'h1 : _T_225;
  assign _T_227 = _T_176 ? 1'h1 : _T_226;
  assign _T_228 = _T_172 ? 1'h1 : _T_227;
  assign _T_229 = _T_168 ? 1'h1 : _T_228;
  assign _T_230 = _T_164 ? 1'h1 : _T_229;
  assign _T_231 = _T_160 ? 1'h1 : _T_230;
  assign _T_232 = _T_156 ? 1'h1 : _T_231;
  assign _T_233 = _T_152 ? 1'h1 : _T_232;
  assign _T_234 = _T_148 ? 1'h1 : _T_233;
  assign _T_235 = _T_144 ? 1'h1 : _T_234;
  assign _T_236 = _T_140 ? 1'h1 : _T_235;
  assign _T_237 = _T_136 ? 1'h1 : _T_236;
  assign _T_238 = _T_132 ? 1'h1 : _T_237;
  assign _T_239 = _T_128 ? 1'h1 : _T_238;
  assign _T_240 = _T_124 ? 1'h1 : _T_239;
  assign _T_241 = _T_120 ? 1'h1 : _T_240;
  assign _T_242 = _T_116 ? 1'h1 : _T_241;
  assign _T_243 = _T_112 ? 1'h1 : _T_242;
  assign _T_244 = _T_108 ? 1'h1 : _T_243;
  assign _T_245 = _T_104 ? 1'h1 : _T_244;
  assign _T_246 = _T_100 ? 1'h1 : _T_245;
  assign _T_247 = _T_96 ? 1'h1 : _T_246;
  assign _T_248 = _T_92 ? 1'h1 : _T_247;
  assign _T_249 = _T_88 ? 1'h1 : _T_248;
  assign _T_250 = _T_84 ? 1'h1 : _T_249;
  assign _T_251 = _T_80 ? 1'h1 : _T_250;
  assign _T_252 = _T_76 ? 1'h1 : _T_251;
  assign _T_253 = _T_72 ? 1'h1 : _T_252;
  assign _T_254 = _T_68 ? 1'h1 : _T_253;
  assign _T_255 = _T_64 ? 1'h1 : _T_254;
  assign _T_256 = _T_60 ? 1'h1 : _T_255;
  assign _T_257 = _T_56 ? 1'h1 : _T_256;
  assign _T_258 = _T_52 ? 1'h1 : _T_257;
  assign _T_259 = _T_48 ? 1'h1 : _T_258;
  assign _T_260 = _T_44 ? 1'h1 : _T_259;
  assign _T_261 = _T_40 ? 1'h1 : _T_260;
  assign _T_262 = _T_36 ? 1'h1 : _T_261;
  assign _T_263 = _T_32 ? 1'h1 : _T_262;
  assign _T_264 = _T_28 ? 1'h1 : _T_263;
  assign _T_265 = _T_24 ? 1'h1 : _T_264;
  assign signals_0 = _T_20 ? 1'h1 : _T_265;
  assign _T_279 = _T_164 ? 4'h6 : 4'h0;
  assign _T_280 = _T_160 ? 4'h5 : _T_279;
  assign _T_281 = _T_156 ? 4'h4 : _T_280;
  assign _T_282 = _T_152 ? 4'h3 : _T_281;
  assign _T_283 = _T_148 ? 4'h1 : _T_282;
  assign _T_284 = _T_144 ? 4'h2 : _T_283;
  assign _T_285 = _T_140 ? 4'h8 : _T_284;
  assign _T_286 = _T_136 ? 4'h7 : _T_285;
  assign _T_287 = _T_132 ? 4'h0 : _T_286;
  assign _T_288 = _T_128 ? 4'h0 : _T_287;
  assign _T_289 = _T_124 ? 4'h0 : _T_288;
  assign _T_290 = _T_120 ? 4'h0 : _T_289;
  assign _T_291 = _T_116 ? 4'h0 : _T_290;
  assign _T_292 = _T_112 ? 4'h0 : _T_291;
  assign _T_293 = _T_108 ? 4'h0 : _T_292;
  assign _T_294 = _T_104 ? 4'h0 : _T_293;
  assign _T_295 = _T_100 ? 4'h0 : _T_294;
  assign _T_296 = _T_96 ? 4'h0 : _T_295;
  assign _T_297 = _T_92 ? 4'h0 : _T_296;
  assign _T_298 = _T_88 ? 4'h0 : _T_297;
  assign _T_299 = _T_84 ? 4'h0 : _T_298;
  assign _T_300 = _T_80 ? 4'h0 : _T_299;
  assign _T_301 = _T_76 ? 4'h0 : _T_300;
  assign _T_302 = _T_72 ? 4'h0 : _T_301;
  assign _T_303 = _T_68 ? 4'h0 : _T_302;
  assign _T_304 = _T_64 ? 4'h0 : _T_303;
  assign _T_305 = _T_60 ? 4'h0 : _T_304;
  assign _T_306 = _T_56 ? 4'h0 : _T_305;
  assign _T_307 = _T_52 ? 4'h0 : _T_306;
  assign _T_308 = _T_48 ? 4'h0 : _T_307;
  assign _T_309 = _T_44 ? 4'h0 : _T_308;
  assign _T_310 = _T_40 ? 4'h0 : _T_309;
  assign _T_311 = _T_36 ? 4'h0 : _T_310;
  assign _T_312 = _T_32 ? 4'h0 : _T_311;
  assign _T_313 = _T_28 ? 4'h0 : _T_312;
  assign _T_314 = _T_24 ? 4'h0 : _T_313;
  assign signals_1 = _T_20 ? 4'h0 : _T_314;
  assign _T_335 = _T_136 ? 1'h1 : _T_140;
  assign _T_336 = _T_132 ? 1'h0 : _T_335;
  assign _T_337 = _T_128 ? 1'h0 : _T_336;
  assign _T_338 = _T_124 ? 1'h0 : _T_337;
  assign _T_339 = _T_120 ? 1'h0 : _T_338;
  assign _T_340 = _T_116 ? 1'h0 : _T_339;
  assign _T_341 = _T_112 ? 1'h0 : _T_340;
  assign _T_342 = _T_108 ? 1'h0 : _T_341;
  assign _T_343 = _T_104 ? 1'h0 : _T_342;
  assign _T_344 = _T_100 ? 1'h0 : _T_343;
  assign _T_345 = _T_96 ? 1'h0 : _T_344;
  assign _T_346 = _T_92 ? 1'h0 : _T_345;
  assign _T_347 = _T_88 ? 1'h0 : _T_346;
  assign _T_348 = _T_84 ? 1'h0 : _T_347;
  assign _T_349 = _T_80 ? 1'h0 : _T_348;
  assign _T_350 = _T_76 ? 1'h0 : _T_349;
  assign _T_351 = _T_72 ? 1'h0 : _T_350;
  assign _T_352 = _T_68 ? 1'h0 : _T_351;
  assign _T_353 = _T_64 ? 1'h0 : _T_352;
  assign _T_354 = _T_60 ? 1'h0 : _T_353;
  assign _T_355 = _T_56 ? 1'h0 : _T_354;
  assign _T_356 = _T_52 ? 1'h0 : _T_355;
  assign _T_357 = _T_48 ? 1'h0 : _T_356;
  assign _T_358 = _T_44 ? 1'h0 : _T_357;
  assign _T_359 = _T_40 ? 1'h0 : _T_358;
  assign _T_360 = _T_36 ? 1'h0 : _T_359;
  assign _T_361 = _T_32 ? 1'h0 : _T_360;
  assign _T_362 = _T_28 ? 1'h0 : _T_361;
  assign _T_363 = _T_24 ? 1'h0 : _T_362;
  assign signals_2 = _T_20 ? 1'h0 : _T_363;
  assign _T_371 = _T_188 ? 2'h2 : 2'h0;
  assign _T_372 = _T_184 ? 2'h0 : _T_371;
  assign _T_373 = _T_180 ? 2'h0 : _T_372;
  assign _T_374 = _T_176 ? 2'h0 : _T_373;
  assign _T_375 = _T_172 ? 2'h2 : _T_374;
  assign _T_376 = _T_168 ? 2'h2 : _T_375;
  assign _T_377 = _T_164 ? 2'h0 : _T_376;
  assign _T_378 = _T_160 ? 2'h0 : _T_377;
  assign _T_379 = _T_156 ? 2'h0 : _T_378;
  assign _T_380 = _T_152 ? 2'h0 : _T_379;
  assign _T_381 = _T_148 ? 2'h0 : _T_380;
  assign _T_382 = _T_144 ? 2'h0 : _T_381;
  assign _T_383 = _T_140 ? 2'h0 : _T_382;
  assign _T_384 = _T_136 ? 2'h0 : _T_383;
  assign _T_385 = _T_132 ? 2'h0 : _T_384;
  assign _T_386 = _T_128 ? 2'h0 : _T_385;
  assign _T_387 = _T_124 ? 2'h0 : _T_386;
  assign _T_388 = _T_120 ? 2'h0 : _T_387;
  assign _T_389 = _T_116 ? 2'h0 : _T_388;
  assign _T_390 = _T_112 ? 2'h0 : _T_389;
  assign _T_391 = _T_108 ? 2'h0 : _T_390;
  assign _T_392 = _T_104 ? 2'h0 : _T_391;
  assign _T_393 = _T_100 ? 2'h0 : _T_392;
  assign _T_394 = _T_96 ? 2'h0 : _T_393;
  assign _T_395 = _T_92 ? 2'h0 : _T_394;
  assign _T_396 = _T_88 ? 2'h0 : _T_395;
  assign _T_397 = _T_84 ? 2'h0 : _T_396;
  assign _T_398 = _T_80 ? 2'h0 : _T_397;
  assign _T_399 = _T_76 ? 2'h0 : _T_398;
  assign _T_400 = _T_72 ? 2'h0 : _T_399;
  assign _T_401 = _T_68 ? 2'h0 : _T_400;
  assign _T_402 = _T_64 ? 2'h0 : _T_401;
  assign _T_403 = _T_60 ? 2'h0 : _T_402;
  assign _T_404 = _T_56 ? 2'h1 : _T_403;
  assign _T_405 = _T_52 ? 2'h1 : _T_404;
  assign _T_406 = _T_48 ? 2'h0 : _T_405;
  assign _T_407 = _T_44 ? 2'h0 : _T_406;
  assign _T_408 = _T_40 ? 2'h0 : _T_407;
  assign _T_409 = _T_36 ? 2'h0 : _T_408;
  assign _T_410 = _T_32 ? 2'h0 : _T_409;
  assign _T_411 = _T_28 ? 2'h0 : _T_410;
  assign _T_412 = _T_24 ? 2'h0 : _T_411;
  assign signals_3 = _T_20 ? 2'h0 : _T_412;
  assign _T_432 = _T_140 ? 2'h1 : 2'h0;
  assign _T_433 = _T_136 ? 2'h0 : _T_432;
  assign _T_434 = _T_132 ? 2'h0 : _T_433;
  assign _T_435 = _T_128 ? 2'h0 : _T_434;
  assign _T_436 = _T_124 ? 2'h0 : _T_435;
  assign _T_437 = _T_120 ? 2'h0 : _T_436;
  assign _T_438 = _T_116 ? 2'h0 : _T_437;
  assign _T_439 = _T_112 ? 2'h0 : _T_438;
  assign _T_440 = _T_108 ? 2'h0 : _T_439;
  assign _T_441 = _T_104 ? 2'h0 : _T_440;
  assign _T_442 = _T_100 ? 2'h0 : _T_441;
  assign _T_443 = _T_96 ? 2'h0 : _T_442;
  assign _T_444 = _T_92 ? 2'h1 : _T_443;
  assign _T_445 = _T_88 ? 2'h1 : _T_444;
  assign _T_446 = _T_84 ? 2'h1 : _T_445;
  assign _T_447 = _T_80 ? 2'h1 : _T_446;
  assign _T_448 = _T_76 ? 2'h1 : _T_447;
  assign _T_449 = _T_72 ? 2'h1 : _T_448;
  assign _T_450 = _T_68 ? 2'h1 : _T_449;
  assign _T_451 = _T_64 ? 2'h1 : _T_450;
  assign _T_452 = _T_60 ? 2'h1 : _T_451;
  assign _T_453 = _T_56 ? 2'h0 : _T_452;
  assign _T_454 = _T_52 ? 2'h3 : _T_453;
  assign _T_455 = _T_48 ? 2'h2 : _T_454;
  assign _T_456 = _T_44 ? 2'h2 : _T_455;
  assign _T_457 = _T_40 ? 2'h2 : _T_456;
  assign _T_458 = _T_36 ? 2'h1 : _T_457;
  assign _T_459 = _T_32 ? 2'h1 : _T_458;
  assign _T_460 = _T_28 ? 2'h1 : _T_459;
  assign _T_461 = _T_24 ? 2'h1 : _T_460;
  assign signals_4 = _T_20 ? 2'h1 : _T_461;
  assign _T_469 = _T_188 ? 4'h8 : 4'h0;
  assign _T_470 = _T_184 ? 4'h8 : _T_469;
  assign _T_471 = _T_180 ? 4'h8 : _T_470;
  assign _T_472 = _T_176 ? 4'h8 : _T_471;
  assign _T_473 = _T_172 ? 4'h8 : _T_472;
  assign _T_474 = _T_168 ? 4'h8 : _T_473;
  assign _T_475 = _T_164 ? 4'h0 : _T_474;
  assign _T_476 = _T_160 ? 4'h0 : _T_475;
  assign _T_477 = _T_156 ? 4'h0 : _T_476;
  assign _T_478 = _T_152 ? 4'h0 : _T_477;
  assign _T_479 = _T_148 ? 4'h0 : _T_478;
  assign _T_480 = _T_144 ? 4'h0 : _T_479;
  assign _T_481 = _T_140 ? 4'h0 : _T_480;
  assign _T_482 = _T_136 ? 4'h0 : _T_481;
  assign _T_483 = _T_132 ? 4'h5 : _T_482;
  assign _T_484 = _T_128 ? 4'hb : _T_483;
  assign _T_485 = _T_124 ? 4'h4 : _T_484;
  assign _T_486 = _T_120 ? 4'h6 : _T_485;
  assign _T_487 = _T_116 ? 4'h7 : _T_486;
  assign _T_488 = _T_112 ? 4'he : _T_487;
  assign _T_489 = _T_108 ? 4'hc : _T_488;
  assign _T_490 = _T_104 ? 4'ha : _T_489;
  assign _T_491 = _T_100 ? 4'h0 : _T_490;
  assign _T_492 = _T_96 ? 4'h1 : _T_491;
  assign _T_493 = _T_92 ? 4'h5 : _T_492;
  assign _T_494 = _T_88 ? 4'hb : _T_493;
  assign _T_495 = _T_84 ? 4'h1 : _T_494;
  assign _T_496 = _T_80 ? 4'he : _T_495;
  assign _T_497 = _T_76 ? 4'hc : _T_496;
  assign _T_498 = _T_72 ? 4'h4 : _T_497;
  assign _T_499 = _T_68 ? 4'h6 : _T_498;
  assign _T_500 = _T_64 ? 4'h7 : _T_499;
  assign _T_501 = _T_60 ? 4'h0 : _T_500;
  assign _T_502 = _T_56 ? 4'h8 : _T_501;
  assign _T_503 = _T_52 ? 4'h0 : _T_502;
  assign _T_504 = _T_48 ? 4'h0 : _T_503;
  assign _T_505 = _T_44 ? 4'h0 : _T_504;
  assign _T_506 = _T_40 ? 4'h0 : _T_505;
  assign _T_507 = _T_36 ? 4'h0 : _T_506;
  assign _T_508 = _T_32 ? 4'h0 : _T_507;
  assign _T_509 = _T_28 ? 4'h0 : _T_508;
  assign _T_510 = _T_24 ? 4'h0 : _T_509;
  assign signals_5 = _T_20 ? 4'h0 : _T_510;
  assign _T_518 = _T_188 ? 2'h3 : 2'h0;
  assign _T_519 = _T_184 ? 2'h3 : _T_518;
  assign _T_520 = _T_180 ? 2'h3 : _T_519;
  assign _T_521 = _T_176 ? 2'h3 : _T_520;
  assign _T_522 = _T_172 ? 2'h3 : _T_521;
  assign _T_523 = _T_168 ? 2'h3 : _T_522;
  assign _T_524 = _T_164 ? 2'h0 : _T_523;
  assign _T_525 = _T_160 ? 2'h0 : _T_524;
  assign _T_526 = _T_156 ? 2'h0 : _T_525;
  assign _T_527 = _T_152 ? 2'h0 : _T_526;
  assign _T_528 = _T_148 ? 2'h0 : _T_527;
  assign _T_529 = _T_144 ? 2'h0 : _T_528;
  assign _T_530 = _T_140 ? 2'h2 : _T_529;
  assign _T_531 = _T_136 ? 2'h2 : _T_530;
  assign _T_532 = _T_132 ? 2'h0 : _T_531;
  assign _T_533 = _T_128 ? 2'h0 : _T_532;
  assign _T_534 = _T_124 ? 2'h0 : _T_533;
  assign _T_535 = _T_120 ? 2'h0 : _T_534;
  assign _T_536 = _T_116 ? 2'h0 : _T_535;
  assign _T_537 = _T_112 ? 2'h0 : _T_536;
  assign _T_538 = _T_108 ? 2'h0 : _T_537;
  assign _T_539 = _T_104 ? 2'h0 : _T_538;
  assign _T_540 = _T_100 ? 2'h0 : _T_539;
  assign _T_541 = _T_96 ? 2'h0 : _T_540;
  assign _T_542 = _T_92 ? 2'h0 : _T_541;
  assign _T_543 = _T_88 ? 2'h0 : _T_542;
  assign _T_544 = _T_84 ? 2'h0 : _T_543;
  assign _T_545 = _T_80 ? 2'h0 : _T_544;
  assign _T_546 = _T_76 ? 2'h0 : _T_545;
  assign _T_547 = _T_72 ? 2'h0 : _T_546;
  assign _T_548 = _T_68 ? 2'h0 : _T_547;
  assign _T_549 = _T_64 ? 2'h0 : _T_548;
  assign _T_550 = _T_60 ? 2'h0 : _T_549;
  assign _T_551 = _T_56 ? 2'h0 : _T_550;
  assign _T_552 = _T_52 ? 2'h0 : _T_551;
  assign _T_553 = _T_48 ? 2'h0 : _T_552;
  assign _T_554 = _T_44 ? 2'h0 : _T_553;
  assign _T_555 = _T_40 ? 2'h0 : _T_554;
  assign _T_556 = _T_36 ? 2'h1 : _T_555;
  assign _T_557 = _T_32 ? 2'h1 : _T_556;
  assign _T_558 = _T_28 ? 2'h1 : _T_557;
  assign _T_559 = _T_24 ? 2'h1 : _T_558;
  assign signals_6 = _T_20 ? 2'h1 : _T_559;
  assign _T_568 = _T_184 ? 1'h1 : _T_188;
  assign _T_569 = _T_180 ? 1'h1 : _T_568;
  assign _T_570 = _T_176 ? 1'h1 : _T_569;
  assign _T_571 = _T_172 ? 1'h1 : _T_570;
  assign _T_572 = _T_168 ? 1'h1 : _T_571;
  assign _T_573 = _T_164 ? 1'h0 : _T_572;
  assign _T_574 = _T_160 ? 1'h0 : _T_573;
  assign _T_575 = _T_156 ? 1'h0 : _T_574;
  assign _T_576 = _T_152 ? 1'h0 : _T_575;
  assign _T_577 = _T_148 ? 1'h0 : _T_576;
  assign _T_578 = _T_144 ? 1'h0 : _T_577;
  assign _T_579 = _T_140 ? 1'h1 : _T_578;
  assign _T_580 = _T_136 ? 1'h1 : _T_579;
  assign _T_581 = _T_132 ? 1'h1 : _T_580;
  assign _T_582 = _T_128 ? 1'h1 : _T_581;
  assign _T_583 = _T_124 ? 1'h1 : _T_582;
  assign _T_584 = _T_120 ? 1'h1 : _T_583;
  assign _T_585 = _T_116 ? 1'h1 : _T_584;
  assign _T_586 = _T_112 ? 1'h1 : _T_585;
  assign _T_587 = _T_108 ? 1'h1 : _T_586;
  assign _T_588 = _T_104 ? 1'h1 : _T_587;
  assign _T_589 = _T_100 ? 1'h1 : _T_588;
  assign _T_590 = _T_96 ? 1'h1 : _T_589;
  assign _T_591 = _T_92 ? 1'h1 : _T_590;
  assign _T_592 = _T_88 ? 1'h1 : _T_591;
  assign _T_593 = _T_84 ? 1'h1 : _T_592;
  assign _T_594 = _T_80 ? 1'h1 : _T_593;
  assign _T_595 = _T_76 ? 1'h1 : _T_594;
  assign _T_596 = _T_72 ? 1'h1 : _T_595;
  assign _T_597 = _T_68 ? 1'h1 : _T_596;
  assign _T_598 = _T_64 ? 1'h1 : _T_597;
  assign _T_599 = _T_60 ? 1'h1 : _T_598;
  assign _T_600 = _T_56 ? 1'h1 : _T_599;
  assign _T_601 = _T_52 ? 1'h1 : _T_600;
  assign _T_602 = _T_48 ? 1'h0 : _T_601;
  assign _T_603 = _T_44 ? 1'h0 : _T_602;
  assign _T_604 = _T_40 ? 1'h0 : _T_603;
  assign _T_605 = _T_36 ? 1'h1 : _T_604;
  assign _T_606 = _T_32 ? 1'h1 : _T_605;
  assign _T_607 = _T_28 ? 1'h1 : _T_606;
  assign _T_608 = _T_24 ? 1'h1 : _T_607;
  assign signals_7 = _T_20 ? 1'h1 : _T_608;
  assign _T_630 = _T_132 ? 1'h1 : _T_136;
  assign _T_631 = _T_128 ? 1'h1 : _T_630;
  assign _T_632 = _T_124 ? 1'h1 : _T_631;
  assign _T_633 = _T_120 ? 1'h1 : _T_632;
  assign _T_634 = _T_116 ? 1'h1 : _T_633;
  assign _T_635 = _T_112 ? 1'h1 : _T_634;
  assign _T_636 = _T_108 ? 1'h1 : _T_635;
  assign _T_637 = _T_104 ? 1'h1 : _T_636;
  assign _T_638 = _T_100 ? 1'h1 : _T_637;
  assign _T_639 = _T_96 ? 1'h1 : _T_638;
  assign _T_640 = _T_92 ? 1'h1 : _T_639;
  assign _T_641 = _T_88 ? 1'h1 : _T_640;
  assign _T_642 = _T_84 ? 1'h1 : _T_641;
  assign _T_643 = _T_80 ? 1'h1 : _T_642;
  assign _T_644 = _T_76 ? 1'h1 : _T_643;
  assign _T_645 = _T_72 ? 1'h1 : _T_644;
  assign _T_646 = _T_68 ? 1'h1 : _T_645;
  assign _T_647 = _T_64 ? 1'h1 : _T_646;
  assign _T_648 = _T_60 ? 1'h1 : _T_647;
  assign _T_649 = _T_56 ? 1'h1 : _T_648;
  assign _T_650 = _T_52 ? 1'h1 : _T_649;
  assign _T_651 = _T_48 ? 1'h0 : _T_650;
  assign _T_652 = _T_44 ? 1'h0 : _T_651;
  assign _T_653 = _T_40 ? 1'h0 : _T_652;
  assign _T_654 = _T_36 ? 1'h0 : _T_653;
  assign _T_655 = _T_32 ? 1'h0 : _T_654;
  assign _T_656 = _T_28 ? 1'h0 : _T_655;
  assign _T_657 = _T_24 ? 1'h0 : _T_656;
  assign signals_8 = _T_20 ? 1'h0 : _T_657;
  assign _T_659 = _T_212 ? 1'h0 : _T_216;
  assign _T_660 = _T_208 ? 1'h0 : _T_659;
  assign _T_661 = _T_204 ? 1'h0 : _T_660;
  assign _T_662 = _T_200 ? 1'h0 : _T_661;
  assign _T_663 = _T_196 ? 1'h0 : _T_662;
  assign _T_664 = _T_192 ? 1'h0 : _T_663;
  assign _T_665 = _T_188 ? 1'h0 : _T_664;
  assign _T_666 = _T_184 ? 1'h0 : _T_665;
  assign _T_667 = _T_180 ? 1'h0 : _T_666;
  assign _T_668 = _T_176 ? 1'h0 : _T_667;
  assign _T_669 = _T_172 ? 1'h0 : _T_668;
  assign _T_670 = _T_168 ? 1'h0 : _T_669;
  assign _T_671 = _T_164 ? 1'h0 : _T_670;
  assign _T_672 = _T_160 ? 1'h0 : _T_671;
  assign _T_673 = _T_156 ? 1'h0 : _T_672;
  assign _T_674 = _T_152 ? 1'h0 : _T_673;
  assign _T_675 = _T_148 ? 1'h0 : _T_674;
  assign _T_676 = _T_144 ? 1'h0 : _T_675;
  assign _T_677 = _T_140 ? 1'h0 : _T_676;
  assign _T_678 = _T_136 ? 1'h0 : _T_677;
  assign _T_679 = _T_132 ? 1'h0 : _T_678;
  assign _T_680 = _T_128 ? 1'h0 : _T_679;
  assign _T_681 = _T_124 ? 1'h0 : _T_680;
  assign _T_682 = _T_120 ? 1'h0 : _T_681;
  assign _T_683 = _T_116 ? 1'h0 : _T_682;
  assign _T_684 = _T_112 ? 1'h0 : _T_683;
  assign _T_685 = _T_108 ? 1'h0 : _T_684;
  assign _T_686 = _T_104 ? 1'h0 : _T_685;
  assign _T_687 = _T_100 ? 1'h0 : _T_686;
  assign _T_688 = _T_96 ? 1'h0 : _T_687;
  assign _T_689 = _T_92 ? 1'h0 : _T_688;
  assign _T_690 = _T_88 ? 1'h0 : _T_689;
  assign _T_691 = _T_84 ? 1'h0 : _T_690;
  assign _T_692 = _T_80 ? 1'h0 : _T_691;
  assign _T_693 = _T_76 ? 1'h0 : _T_692;
  assign _T_694 = _T_72 ? 1'h0 : _T_693;
  assign _T_695 = _T_68 ? 1'h0 : _T_694;
  assign _T_696 = _T_64 ? 1'h0 : _T_695;
  assign _T_697 = _T_60 ? 1'h0 : _T_696;
  assign _T_698 = _T_56 ? 1'h0 : _T_697;
  assign _T_699 = _T_52 ? 1'h0 : _T_698;
  assign _T_700 = _T_48 ? 1'h1 : _T_699;
  assign _T_701 = _T_44 ? 1'h1 : _T_700;
  assign _T_702 = _T_40 ? 1'h1 : _T_701;
  assign _T_703 = _T_36 ? 1'h1 : _T_702;
  assign _T_704 = _T_32 ? 1'h1 : _T_703;
  assign _T_705 = _T_28 ? 1'h1 : _T_704;
  assign _T_706 = _T_24 ? 1'h1 : _T_705;
  assign signals_9 = _T_20 ? 1'h1 : _T_706;
  assign _T_750 = _T_44 ? 1'h1 : _T_48;
  assign _T_751 = _T_40 ? 1'h1 : _T_750;
  assign _T_752 = _T_36 ? 1'h0 : _T_751;
  assign _T_753 = _T_32 ? 1'h0 : _T_752;
  assign _T_754 = _T_28 ? 1'h0 : _T_753;
  assign _T_755 = _T_24 ? 1'h0 : _T_754;
  assign signals_10 = _T_20 ? 1'h0 : _T_755;
  assign _T_798 = _T_48 ? 3'h2 : 3'h0;
  assign _T_799 = _T_44 ? 3'h1 : _T_798;
  assign _T_800 = _T_40 ? 3'h3 : _T_799;
  assign _T_801 = _T_36 ? 3'h6 : _T_800;
  assign _T_802 = _T_32 ? 3'h2 : _T_801;
  assign _T_803 = _T_28 ? 3'h5 : _T_802;
  assign _T_804 = _T_24 ? 3'h1 : _T_803;
  assign signals_11 = _T_20 ? 3'h3 : _T_804;
  assign _T_807 = _T_208 ? 3'h4 : 3'h0;
  assign _T_808 = _T_204 ? 3'h4 : _T_807;
  assign _T_809 = _T_200 ? 3'h4 : _T_808;
  assign _T_810 = _T_196 ? 3'h4 : _T_809;
  assign _T_811 = _T_192 ? 3'h4 : _T_810;
  assign _T_812 = _T_188 ? 3'h3 : _T_811;
  assign _T_813 = _T_184 ? 3'h3 : _T_812;
  assign _T_814 = _T_180 ? 3'h2 : _T_813;
  assign _T_815 = _T_176 ? 3'h1 : _T_814;
  assign _T_816 = _T_172 ? 3'h2 : _T_815;
  assign _T_817 = _T_168 ? 3'h1 : _T_816;
  assign _T_818 = _T_164 ? 3'h0 : _T_817;
  assign _T_819 = _T_160 ? 3'h0 : _T_818;
  assign _T_820 = _T_156 ? 3'h0 : _T_819;
  assign _T_821 = _T_152 ? 3'h0 : _T_820;
  assign _T_822 = _T_148 ? 3'h0 : _T_821;
  assign _T_823 = _T_144 ? 3'h0 : _T_822;
  assign _T_824 = _T_140 ? 3'h0 : _T_823;
  assign _T_825 = _T_136 ? 3'h0 : _T_824;
  assign _T_826 = _T_132 ? 3'h0 : _T_825;
  assign _T_827 = _T_128 ? 3'h0 : _T_826;
  assign _T_828 = _T_124 ? 3'h0 : _T_827;
  assign _T_829 = _T_120 ? 3'h0 : _T_828;
  assign _T_830 = _T_116 ? 3'h0 : _T_829;
  assign _T_831 = _T_112 ? 3'h0 : _T_830;
  assign _T_832 = _T_108 ? 3'h0 : _T_831;
  assign _T_833 = _T_104 ? 3'h0 : _T_832;
  assign _T_834 = _T_100 ? 3'h0 : _T_833;
  assign _T_835 = _T_96 ? 3'h0 : _T_834;
  assign _T_836 = _T_92 ? 3'h0 : _T_835;
  assign _T_837 = _T_88 ? 3'h0 : _T_836;
  assign _T_838 = _T_84 ? 3'h0 : _T_837;
  assign _T_839 = _T_80 ? 3'h0 : _T_838;
  assign _T_840 = _T_76 ? 3'h0 : _T_839;
  assign _T_841 = _T_72 ? 3'h0 : _T_840;
  assign _T_842 = _T_68 ? 3'h0 : _T_841;
  assign _T_843 = _T_64 ? 3'h0 : _T_842;
  assign _T_844 = _T_60 ? 3'h0 : _T_843;
  assign _T_845 = _T_56 ? 3'h0 : _T_844;
  assign _T_846 = _T_52 ? 3'h0 : _T_845;
  assign _T_847 = _T_48 ? 3'h0 : _T_846;
  assign _T_848 = _T_44 ? 3'h0 : _T_847;
  assign _T_849 = _T_40 ? 3'h0 : _T_848;
  assign _T_850 = _T_36 ? 3'h0 : _T_849;
  assign _T_851 = _T_32 ? 3'h0 : _T_850;
  assign _T_852 = _T_28 ? 3'h0 : _T_851;
  assign _T_853 = _T_24 ? 3'h0 : _T_852;
  assign signals_12 = _T_20 ? 3'h0 : _T_853;
  assign _T_854 = _T_216 ? 3'h2 : 3'h0;
  assign _T_855 = _T_212 ? 3'h1 : _T_854;
  assign _T_856 = _T_208 ? 3'h4 : _T_855;
  assign _T_857 = _T_204 ? 3'h4 : _T_856;
  assign _T_858 = _T_200 ? 3'h4 : _T_857;
  assign _T_859 = _T_196 ? 3'h4 : _T_858;
  assign _T_860 = _T_192 ? 3'h4 : _T_859;
  assign _T_861 = _T_188 ? 3'h0 : _T_860;
  assign _T_862 = _T_184 ? 3'h0 : _T_861;
  assign _T_863 = _T_180 ? 3'h0 : _T_862;
  assign _T_864 = _T_176 ? 3'h0 : _T_863;
  assign _T_865 = _T_172 ? 3'h0 : _T_864;
  assign _T_866 = _T_168 ? 3'h0 : _T_865;
  assign _T_867 = _T_164 ? 3'h0 : _T_866;
  assign _T_868 = _T_160 ? 3'h0 : _T_867;
  assign _T_869 = _T_156 ? 3'h0 : _T_868;
  assign _T_870 = _T_152 ? 3'h0 : _T_869;
  assign _T_871 = _T_148 ? 3'h0 : _T_870;
  assign _T_872 = _T_144 ? 3'h0 : _T_871;
  assign _T_873 = _T_140 ? 3'h0 : _T_872;
  assign _T_874 = _T_136 ? 3'h0 : _T_873;
  assign _T_875 = _T_132 ? 3'h0 : _T_874;
  assign _T_876 = _T_128 ? 3'h0 : _T_875;
  assign _T_877 = _T_124 ? 3'h0 : _T_876;
  assign _T_878 = _T_120 ? 3'h0 : _T_877;
  assign _T_879 = _T_116 ? 3'h0 : _T_878;
  assign _T_880 = _T_112 ? 3'h0 : _T_879;
  assign _T_881 = _T_108 ? 3'h0 : _T_880;
  assign _T_882 = _T_104 ? 3'h0 : _T_881;
  assign _T_883 = _T_100 ? 3'h0 : _T_882;
  assign _T_884 = _T_96 ? 3'h0 : _T_883;
  assign _T_885 = _T_92 ? 3'h0 : _T_884;
  assign _T_886 = _T_88 ? 3'h0 : _T_885;
  assign _T_887 = _T_84 ? 3'h0 : _T_886;
  assign _T_888 = _T_80 ? 3'h0 : _T_887;
  assign _T_889 = _T_76 ? 3'h0 : _T_888;
  assign _T_890 = _T_72 ? 3'h0 : _T_889;
  assign _T_891 = _T_68 ? 3'h0 : _T_890;
  assign _T_892 = _T_64 ? 3'h0 : _T_891;
  assign _T_893 = _T_60 ? 3'h0 : _T_892;
  assign _T_894 = _T_56 ? 3'h0 : _T_893;
  assign _T_895 = _T_52 ? 3'h0 : _T_894;
  assign _T_896 = _T_48 ? 3'h0 : _T_895;
  assign _T_897 = _T_44 ? 3'h0 : _T_896;
  assign _T_898 = _T_40 ? 3'h0 : _T_897;
  assign _T_899 = _T_36 ? 3'h0 : _T_898;
  assign _T_900 = _T_32 ? 3'h0 : _T_899;
  assign _T_901 = _T_28 ? 3'h0 : _T_900;
  assign _T_902 = _T_24 ? 3'h0 : _T_901;
  assign signals_13 = _T_20 ? 3'h0 : _T_902;
  assign io_output_is_valid = signals_0;
  assign io_output_branch_type = signals_1;
  assign io_output_is_jump = signals_2;
  assign io_output_op1_select = signals_3;
  assign io_output_op2_select = signals_4;
  assign io_output_alu_function = signals_5;
  assign io_output_wb_select = signals_6;
  assign io_output_rf_write_enable = signals_7;
  assign io_output_bypassable = signals_8;
  assign io_output_mem_enable = signals_9;
  assign io_output_mem_command = signals_10;
  assign io_output_mask_type = signals_11;
  assign io_output_csr_cmd = signals_12;
  assign io_output_mem = signals_13;
endmodule
module CtlPath(
  input         clock,
  output        io_imem_req_valid,
  input         io_imem_resp_valid,
  input  [31:0] io_imem_resp_bits_inst,
  input         io_dat_br_eq,
  input         io_dat_br_lt,
  input         io_dat_br_ltu,
  input         io_dat_csr_eret,
  output        io_ctl_exe_kill,
  output [2:0]  io_ctl_pc_sel,
  output        io_ctl_brjmp_sel,
  output [1:0]  io_ctl_op1_sel,
  output [1:0]  io_ctl_op2_sel,
  output [3:0]  io_ctl_alu_fun,
  output [1:0]  io_ctl_wb_sel,
  output        io_ctl_rf_wen,
  output        io_ctl_bypassable,
  output [2:0]  io_ctl_csr_cmd,
  output        io_ctl_dmem_val,
  output        io_ctl_dmem_fcn,
  output [2:0]  io_ctl_dmem_typ,
  output        io_ctl_exception,
  output        io_test_decoder_output_is_valid,
  output [3:0]  io_test_decoder_output_branch_type,
  output        io_test_decoder_output_is_jump,
  output [1:0]  io_test_decoder_output_op1_select,
  output [1:0]  io_test_decoder_output_op2_select,
  output [3:0]  io_test_decoder_output_alu_function,
  output [1:0]  io_test_decoder_output_wb_select,
  output        io_test_decoder_output_rf_write_enable,
  output        io_test_decoder_output_bypassable,
  output        io_test_decoder_output_mem_enable,
  output        io_test_decoder_output_mem_command,
  output [2:0]  io_test_decoder_output_mask_type,
  output [2:0]  io_test_decoder_output_csr_cmd,
  output [2:0]  io_test_decoder_output_mem,
  output        io_test_take_evec,
  output        io_test_req_valid,
  output        io_test_resp_valid,
  output [2:0]  io_test_ctrl_pc_sel
);
  wire [31:0] decoder_io_instruction;
  wire  decoder_io_output_is_valid;
  wire [3:0] decoder_io_output_branch_type;
  wire  decoder_io_output_is_jump;
  wire [1:0] decoder_io_output_op1_select;
  wire [1:0] decoder_io_output_op2_select;
  wire [3:0] decoder_io_output_alu_function;
  wire [1:0] decoder_io_output_wb_select;
  wire  decoder_io_output_rf_write_enable;
  wire  decoder_io_output_bypassable;
  wire  decoder_io_output_mem_enable;
  wire  decoder_io_output_mem_command;
  wire [2:0] decoder_io_output_mask_type;
  wire [2:0] decoder_io_output_csr_cmd;
  wire [2:0] decoder_io_output_mem;
  wire  cs_inst_val;
  wire  cs_rf_wen;
  wire  cs_bypassable;
  wire  cs_mem_en;
  wire  take_evec;
  wire  _T_53;
  wire  _T_54;
  wire  _T_56;
  wire [2:0] _T_57;
  wire  _T_58;
  wire [2:0] _T_59;
  wire  _T_60;
  wire  _T_62;
  wire [2:0] _T_63;
  wire  _T_64;
  wire  _T_66;
  wire [2:0] _T_67;
  wire  _T_68;
  wire [2:0] _T_69;
  wire  _T_70;
  wire [2:0] _T_71;
  wire  _T_72;
  wire  _T_73;
  wire [2:0] _T_74;
  wire [2:0] _T_75;
  wire [2:0] _T_76;
  wire [2:0] _T_77;
  wire [2:0] _T_78;
  wire [2:0] _T_79;
  wire [2:0] _T_80;
  wire [2:0] _T_81;
  wire [2:0] _T_82;
  wire [2:0] ctrl_pc_sel;
  wire  _T_83;
  wire  _T_85;
  wire  _T_86;
  wire  _T_87;
  wire  _T_89;
  wire  _T_93;
  wire [4:0] rs1_addr;
  wire  _T_95;
  wire  _T_96;
  wire  _T_97;
  wire  _T_99;
  wire  csr_ren;
  wire [2:0] csr_cmd;
  wire [2:0] _T_103;
  wire  _T_105;
  wire  _T_107;
  wire  _T_108;
  reg  _T_110;
  reg [31:0] _RAND_0;
  wire  _T_111;
  Decoder decoder (
    .io_instruction(decoder_io_instruction),
    .io_output_is_valid(decoder_io_output_is_valid),
    .io_output_branch_type(decoder_io_output_branch_type),
    .io_output_is_jump(decoder_io_output_is_jump),
    .io_output_op1_select(decoder_io_output_op1_select),
    .io_output_op2_select(decoder_io_output_op2_select),
    .io_output_alu_function(decoder_io_output_alu_function),
    .io_output_wb_select(decoder_io_output_wb_select),
    .io_output_rf_write_enable(decoder_io_output_rf_write_enable),
    .io_output_bypassable(decoder_io_output_bypassable),
    .io_output_mem_enable(decoder_io_output_mem_enable),
    .io_output_mem_command(decoder_io_output_mem_command),
    .io_output_mask_type(decoder_io_output_mask_type),
    .io_output_csr_cmd(decoder_io_output_csr_cmd),
    .io_output_mem(decoder_io_output_mem)
  );
  assign cs_inst_val = decoder_io_output_is_valid;
  assign cs_rf_wen = decoder_io_output_rf_write_enable;
  assign cs_bypassable = decoder_io_output_bypassable;
  assign cs_mem_en = decoder_io_output_mem_enable;
  assign _T_53 = decoder_io_output_branch_type == 4'h0;
  assign _T_54 = decoder_io_output_branch_type == 4'h1;
  assign _T_56 = io_dat_br_eq == 1'h0;
  assign _T_57 = _T_56 ? 3'h1 : 3'h0;
  assign _T_58 = decoder_io_output_branch_type == 4'h2;
  assign _T_59 = io_dat_br_eq ? 3'h1 : 3'h0;
  assign _T_60 = decoder_io_output_branch_type == 4'h3;
  assign _T_62 = io_dat_br_lt == 1'h0;
  assign _T_63 = _T_62 ? 3'h1 : 3'h0;
  assign _T_64 = decoder_io_output_branch_type == 4'h4;
  assign _T_66 = io_dat_br_ltu == 1'h0;
  assign _T_67 = _T_66 ? 3'h1 : 3'h0;
  assign _T_68 = decoder_io_output_branch_type == 4'h5;
  assign _T_69 = io_dat_br_lt ? 3'h1 : 3'h0;
  assign _T_70 = decoder_io_output_branch_type == 4'h6;
  assign _T_71 = io_dat_br_ltu ? 3'h1 : 3'h0;
  assign _T_72 = decoder_io_output_branch_type == 4'h7;
  assign _T_73 = decoder_io_output_branch_type == 4'h8;
  assign _T_74 = _T_73 ? 3'h3 : 3'h0;
  assign _T_75 = _T_72 ? 3'h2 : _T_74;
  assign _T_76 = _T_70 ? _T_71 : _T_75;
  assign _T_77 = _T_68 ? _T_69 : _T_76;
  assign _T_78 = _T_64 ? _T_67 : _T_77;
  assign _T_79 = _T_60 ? _T_63 : _T_78;
  assign _T_80 = _T_58 ? _T_59 : _T_79;
  assign _T_81 = _T_54 ? _T_57 : _T_80;
  assign _T_82 = _T_53 ? 3'h0 : _T_81;
  assign ctrl_pc_sel = take_evec ? 3'h4 : _T_82;
  assign _T_83 = ctrl_pc_sel == 3'h0;
  assign _T_85 = _T_83 == 1'h0;
  assign _T_86 = _T_85 & io_imem_resp_valid;
  assign _T_87 = decoder_io_output_is_jump;
  assign _T_89 = io_imem_resp_valid == 1'h0;
  assign _T_93 = _T_89 ? 1'h0 : cs_rf_wen;
  assign rs1_addr = io_imem_resp_bits_inst[19:15];
  assign _T_95 = decoder_io_output_csr_cmd == 3'h2;
  assign _T_96 = decoder_io_output_csr_cmd == 3'h3;
  assign _T_97 = _T_95 | _T_96;
  assign _T_99 = rs1_addr == 5'h0;
  assign csr_ren = _T_97 & _T_99;
  assign csr_cmd = csr_ren ? 3'h5 : decoder_io_output_csr_cmd;
  assign _T_103 = _T_89 ? 3'h0 : csr_cmd;
  assign _T_105 = cs_mem_en & io_imem_resp_valid;
  assign _T_107 = cs_inst_val == 1'h0;
  assign _T_108 = _T_107 & io_imem_resp_valid;
  assign _T_111 = _T_110 | io_dat_csr_eret;
  assign io_imem_req_valid = _T_86;
  assign io_ctl_exe_kill = take_evec;
  assign io_ctl_pc_sel = ctrl_pc_sel;
  assign io_ctl_brjmp_sel = _T_87;
  assign io_ctl_op1_sel = decoder_io_output_op1_select;
  assign io_ctl_op2_sel = decoder_io_output_op2_select;
  assign io_ctl_alu_fun = decoder_io_output_alu_function;
  assign io_ctl_wb_sel = decoder_io_output_wb_select;
  assign io_ctl_rf_wen = _T_93;
  assign io_ctl_bypassable = cs_bypassable;
  assign io_ctl_csr_cmd = _T_103;
  assign io_ctl_dmem_val = _T_105;
  assign io_ctl_dmem_fcn = decoder_io_output_mem_command;
  assign io_ctl_dmem_typ = decoder_io_output_mask_type;
  assign io_ctl_exception = _T_108;
  assign io_test_decoder_output_is_valid = decoder_io_output_is_valid;
  assign io_test_decoder_output_branch_type = decoder_io_output_branch_type;
  assign io_test_decoder_output_is_jump = decoder_io_output_is_jump;
  assign io_test_decoder_output_op1_select = decoder_io_output_op1_select;
  assign io_test_decoder_output_op2_select = decoder_io_output_op2_select;
  assign io_test_decoder_output_alu_function = decoder_io_output_alu_function;
  assign io_test_decoder_output_wb_select = decoder_io_output_wb_select;
  assign io_test_decoder_output_rf_write_enable = decoder_io_output_rf_write_enable;
  assign io_test_decoder_output_bypassable = decoder_io_output_bypassable;
  assign io_test_decoder_output_mem_enable = decoder_io_output_mem_enable;
  assign io_test_decoder_output_mem_command = decoder_io_output_mem_command;
  assign io_test_decoder_output_mask_type = decoder_io_output_mask_type;
  assign io_test_decoder_output_csr_cmd = decoder_io_output_csr_cmd;
  assign io_test_decoder_output_mem = decoder_io_output_mem;
  assign io_test_take_evec = take_evec;
  assign io_test_req_valid = _T_86;
  assign io_test_resp_valid = io_imem_resp_valid;
  assign io_test_ctrl_pc_sel = ctrl_pc_sel;
  assign decoder_io_instruction = io_imem_resp_bits_inst;
  assign take_evec = _T_111;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  _T_110 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    _T_110 <= io_ctl_exception;
  end
endmodule
module FullAdder(
  input   io_a,
  input   io_b,
  input   io_cin,
  output  io_sum,
  output  io_cout
);
  wire  a_xor_b;
  wire  _T_7;
  wire  a_and_b;
  wire  b_and_cin;
  wire  a_and_cin;
  wire  _T_8;
  wire  _T_9;
  assign a_xor_b = io_a ^ io_b;
  assign _T_7 = a_xor_b ^ io_cin;
  assign a_and_b = io_a & io_b;
  assign b_and_cin = io_b & io_cin;
  assign a_and_cin = io_a & io_cin;
  assign _T_8 = a_and_b | b_and_cin;
  assign _T_9 = _T_8 | a_and_cin;
  assign io_sum = _T_7;
  assign io_cout = _T_9;
endmodule
module Adder(
  input  [31:0] io_A,
  input  [31:0] io_B,
  output [31:0] io_Sum
);
  wire  FullAdder_io_a;
  wire  FullAdder_io_b;
  wire  FullAdder_io_cin;
  wire  FullAdder_io_sum;
  wire  FullAdder_io_cout;
  wire  FullAdder_1_io_a;
  wire  FullAdder_1_io_b;
  wire  FullAdder_1_io_cin;
  wire  FullAdder_1_io_sum;
  wire  FullAdder_1_io_cout;
  wire  FullAdder_2_io_a;
  wire  FullAdder_2_io_b;
  wire  FullAdder_2_io_cin;
  wire  FullAdder_2_io_sum;
  wire  FullAdder_2_io_cout;
  wire  FullAdder_3_io_a;
  wire  FullAdder_3_io_b;
  wire  FullAdder_3_io_cin;
  wire  FullAdder_3_io_sum;
  wire  FullAdder_3_io_cout;
  wire  FullAdder_4_io_a;
  wire  FullAdder_4_io_b;
  wire  FullAdder_4_io_cin;
  wire  FullAdder_4_io_sum;
  wire  FullAdder_4_io_cout;
  wire  FullAdder_5_io_a;
  wire  FullAdder_5_io_b;
  wire  FullAdder_5_io_cin;
  wire  FullAdder_5_io_sum;
  wire  FullAdder_5_io_cout;
  wire  FullAdder_6_io_a;
  wire  FullAdder_6_io_b;
  wire  FullAdder_6_io_cin;
  wire  FullAdder_6_io_sum;
  wire  FullAdder_6_io_cout;
  wire  FullAdder_7_io_a;
  wire  FullAdder_7_io_b;
  wire  FullAdder_7_io_cin;
  wire  FullAdder_7_io_sum;
  wire  FullAdder_7_io_cout;
  wire  FullAdder_8_io_a;
  wire  FullAdder_8_io_b;
  wire  FullAdder_8_io_cin;
  wire  FullAdder_8_io_sum;
  wire  FullAdder_8_io_cout;
  wire  FullAdder_9_io_a;
  wire  FullAdder_9_io_b;
  wire  FullAdder_9_io_cin;
  wire  FullAdder_9_io_sum;
  wire  FullAdder_9_io_cout;
  wire  FullAdder_10_io_a;
  wire  FullAdder_10_io_b;
  wire  FullAdder_10_io_cin;
  wire  FullAdder_10_io_sum;
  wire  FullAdder_10_io_cout;
  wire  FullAdder_11_io_a;
  wire  FullAdder_11_io_b;
  wire  FullAdder_11_io_cin;
  wire  FullAdder_11_io_sum;
  wire  FullAdder_11_io_cout;
  wire  FullAdder_12_io_a;
  wire  FullAdder_12_io_b;
  wire  FullAdder_12_io_cin;
  wire  FullAdder_12_io_sum;
  wire  FullAdder_12_io_cout;
  wire  FullAdder_13_io_a;
  wire  FullAdder_13_io_b;
  wire  FullAdder_13_io_cin;
  wire  FullAdder_13_io_sum;
  wire  FullAdder_13_io_cout;
  wire  FullAdder_14_io_a;
  wire  FullAdder_14_io_b;
  wire  FullAdder_14_io_cin;
  wire  FullAdder_14_io_sum;
  wire  FullAdder_14_io_cout;
  wire  FullAdder_15_io_a;
  wire  FullAdder_15_io_b;
  wire  FullAdder_15_io_cin;
  wire  FullAdder_15_io_sum;
  wire  FullAdder_15_io_cout;
  wire  FullAdder_16_io_a;
  wire  FullAdder_16_io_b;
  wire  FullAdder_16_io_cin;
  wire  FullAdder_16_io_sum;
  wire  FullAdder_16_io_cout;
  wire  FullAdder_17_io_a;
  wire  FullAdder_17_io_b;
  wire  FullAdder_17_io_cin;
  wire  FullAdder_17_io_sum;
  wire  FullAdder_17_io_cout;
  wire  FullAdder_18_io_a;
  wire  FullAdder_18_io_b;
  wire  FullAdder_18_io_cin;
  wire  FullAdder_18_io_sum;
  wire  FullAdder_18_io_cout;
  wire  FullAdder_19_io_a;
  wire  FullAdder_19_io_b;
  wire  FullAdder_19_io_cin;
  wire  FullAdder_19_io_sum;
  wire  FullAdder_19_io_cout;
  wire  FullAdder_20_io_a;
  wire  FullAdder_20_io_b;
  wire  FullAdder_20_io_cin;
  wire  FullAdder_20_io_sum;
  wire  FullAdder_20_io_cout;
  wire  FullAdder_21_io_a;
  wire  FullAdder_21_io_b;
  wire  FullAdder_21_io_cin;
  wire  FullAdder_21_io_sum;
  wire  FullAdder_21_io_cout;
  wire  FullAdder_22_io_a;
  wire  FullAdder_22_io_b;
  wire  FullAdder_22_io_cin;
  wire  FullAdder_22_io_sum;
  wire  FullAdder_22_io_cout;
  wire  FullAdder_23_io_a;
  wire  FullAdder_23_io_b;
  wire  FullAdder_23_io_cin;
  wire  FullAdder_23_io_sum;
  wire  FullAdder_23_io_cout;
  wire  FullAdder_24_io_a;
  wire  FullAdder_24_io_b;
  wire  FullAdder_24_io_cin;
  wire  FullAdder_24_io_sum;
  wire  FullAdder_24_io_cout;
  wire  FullAdder_25_io_a;
  wire  FullAdder_25_io_b;
  wire  FullAdder_25_io_cin;
  wire  FullAdder_25_io_sum;
  wire  FullAdder_25_io_cout;
  wire  FullAdder_26_io_a;
  wire  FullAdder_26_io_b;
  wire  FullAdder_26_io_cin;
  wire  FullAdder_26_io_sum;
  wire  FullAdder_26_io_cout;
  wire  FullAdder_27_io_a;
  wire  FullAdder_27_io_b;
  wire  FullAdder_27_io_cin;
  wire  FullAdder_27_io_sum;
  wire  FullAdder_27_io_cout;
  wire  FullAdder_28_io_a;
  wire  FullAdder_28_io_b;
  wire  FullAdder_28_io_cin;
  wire  FullAdder_28_io_sum;
  wire  FullAdder_28_io_cout;
  wire  FullAdder_29_io_a;
  wire  FullAdder_29_io_b;
  wire  FullAdder_29_io_cin;
  wire  FullAdder_29_io_sum;
  wire  FullAdder_29_io_cout;
  wire  FullAdder_30_io_a;
  wire  FullAdder_30_io_b;
  wire  FullAdder_30_io_cin;
  wire  FullAdder_30_io_sum;
  wire  FullAdder_30_io_cout;
  wire  FullAdder_31_io_a;
  wire  FullAdder_31_io_b;
  wire  FullAdder_31_io_cin;
  wire  FullAdder_31_io_sum;
  wire  FullAdder_31_io_cout;
  wire  carry_1;
  wire  carry_2;
  wire  carry_3;
  wire  carry_4;
  wire  carry_5;
  wire  carry_6;
  wire  carry_7;
  wire  carry_8;
  wire  carry_9;
  wire  carry_10;
  wire  carry_11;
  wire  carry_12;
  wire  carry_13;
  wire  carry_14;
  wire  carry_15;
  wire  carry_16;
  wire  carry_17;
  wire  carry_18;
  wire  carry_19;
  wire  carry_20;
  wire  carry_21;
  wire  carry_22;
  wire  carry_23;
  wire  carry_24;
  wire  carry_25;
  wire  carry_26;
  wire  carry_27;
  wire  carry_28;
  wire  carry_29;
  wire  carry_30;
  wire  carry_31;
  wire  sum_0;
  wire  sum_1;
  wire  sum_2;
  wire  sum_3;
  wire  sum_4;
  wire  sum_5;
  wire  sum_6;
  wire  sum_7;
  wire  sum_8;
  wire  sum_9;
  wire  sum_10;
  wire  sum_11;
  wire  sum_12;
  wire  sum_13;
  wire  sum_14;
  wire  sum_15;
  wire  sum_16;
  wire  sum_17;
  wire  sum_18;
  wire  sum_19;
  wire  sum_20;
  wire  sum_21;
  wire  sum_22;
  wire  sum_23;
  wire  sum_24;
  wire  sum_25;
  wire  sum_26;
  wire  sum_27;
  wire  sum_28;
  wire  sum_29;
  wire  sum_30;
  wire  sum_31;
  wire  _T_82;
  wire  _T_83;
  wire  _T_84;
  wire  _T_85;
  wire  _T_86;
  wire  _T_87;
  wire  _T_88;
  wire  _T_89;
  wire  _T_90;
  wire  _T_91;
  wire  _T_92;
  wire  _T_93;
  wire  _T_94;
  wire  _T_95;
  wire  _T_96;
  wire  _T_97;
  wire  _T_98;
  wire  _T_99;
  wire  _T_100;
  wire  _T_101;
  wire  _T_102;
  wire  _T_103;
  wire  _T_104;
  wire  _T_105;
  wire  _T_106;
  wire  _T_107;
  wire  _T_108;
  wire  _T_109;
  wire  _T_110;
  wire  _T_111;
  wire  _T_112;
  wire  _T_113;
  wire  _T_114;
  wire  _T_115;
  wire  _T_116;
  wire  _T_117;
  wire  _T_118;
  wire  _T_119;
  wire  _T_120;
  wire  _T_121;
  wire  _T_122;
  wire  _T_123;
  wire  _T_124;
  wire  _T_125;
  wire  _T_126;
  wire  _T_127;
  wire  _T_128;
  wire  _T_129;
  wire  _T_130;
  wire  _T_131;
  wire  _T_132;
  wire  _T_133;
  wire  _T_134;
  wire  _T_135;
  wire  _T_136;
  wire  _T_137;
  wire  _T_138;
  wire  _T_139;
  wire  _T_140;
  wire  _T_141;
  wire  _T_142;
  wire  _T_143;
  wire  _T_144;
  wire  _T_145;
  wire  _T_146;
  wire  _T_147;
  wire  _T_148;
  wire  _T_149;
  wire  _T_150;
  wire  _T_151;
  wire  _T_152;
  wire  _T_153;
  wire  _T_154;
  wire  _T_155;
  wire  _T_156;
  wire  _T_157;
  wire  _T_158;
  wire  _T_159;
  wire  _T_160;
  wire  _T_161;
  wire  _T_162;
  wire  _T_163;
  wire  _T_164;
  wire  _T_165;
  wire  _T_166;
  wire  _T_167;
  wire  _T_168;
  wire  _T_169;
  wire  _T_170;
  wire  _T_171;
  wire  _T_172;
  wire  _T_173;
  wire  _T_174;
  wire  _T_175;
  wire  _T_176;
  wire  _T_177;
  wire [1:0] _T_178;
  wire [1:0] _T_179;
  wire [3:0] _T_180;
  wire [1:0] _T_181;
  wire [1:0] _T_182;
  wire [3:0] _T_183;
  wire [7:0] _T_184;
  wire [1:0] _T_185;
  wire [1:0] _T_186;
  wire [3:0] _T_187;
  wire [1:0] _T_188;
  wire [1:0] _T_189;
  wire [3:0] _T_190;
  wire [7:0] _T_191;
  wire [15:0] _T_192;
  wire [1:0] _T_193;
  wire [1:0] _T_194;
  wire [3:0] _T_195;
  wire [1:0] _T_196;
  wire [1:0] _T_197;
  wire [3:0] _T_198;
  wire [7:0] _T_199;
  wire [1:0] _T_200;
  wire [1:0] _T_201;
  wire [3:0] _T_202;
  wire [1:0] _T_203;
  wire [1:0] _T_204;
  wire [3:0] _T_205;
  wire [7:0] _T_206;
  wire [15:0] _T_207;
  wire [31:0] _T_208;
  FullAdder FullAdder (
    .io_a(FullAdder_io_a),
    .io_b(FullAdder_io_b),
    .io_cin(FullAdder_io_cin),
    .io_sum(FullAdder_io_sum),
    .io_cout(FullAdder_io_cout)
  );
  FullAdder FullAdder_1 (
    .io_a(FullAdder_1_io_a),
    .io_b(FullAdder_1_io_b),
    .io_cin(FullAdder_1_io_cin),
    .io_sum(FullAdder_1_io_sum),
    .io_cout(FullAdder_1_io_cout)
  );
  FullAdder FullAdder_2 (
    .io_a(FullAdder_2_io_a),
    .io_b(FullAdder_2_io_b),
    .io_cin(FullAdder_2_io_cin),
    .io_sum(FullAdder_2_io_sum),
    .io_cout(FullAdder_2_io_cout)
  );
  FullAdder FullAdder_3 (
    .io_a(FullAdder_3_io_a),
    .io_b(FullAdder_3_io_b),
    .io_cin(FullAdder_3_io_cin),
    .io_sum(FullAdder_3_io_sum),
    .io_cout(FullAdder_3_io_cout)
  );
  FullAdder FullAdder_4 (
    .io_a(FullAdder_4_io_a),
    .io_b(FullAdder_4_io_b),
    .io_cin(FullAdder_4_io_cin),
    .io_sum(FullAdder_4_io_sum),
    .io_cout(FullAdder_4_io_cout)
  );
  FullAdder FullAdder_5 (
    .io_a(FullAdder_5_io_a),
    .io_b(FullAdder_5_io_b),
    .io_cin(FullAdder_5_io_cin),
    .io_sum(FullAdder_5_io_sum),
    .io_cout(FullAdder_5_io_cout)
  );
  FullAdder FullAdder_6 (
    .io_a(FullAdder_6_io_a),
    .io_b(FullAdder_6_io_b),
    .io_cin(FullAdder_6_io_cin),
    .io_sum(FullAdder_6_io_sum),
    .io_cout(FullAdder_6_io_cout)
  );
  FullAdder FullAdder_7 (
    .io_a(FullAdder_7_io_a),
    .io_b(FullAdder_7_io_b),
    .io_cin(FullAdder_7_io_cin),
    .io_sum(FullAdder_7_io_sum),
    .io_cout(FullAdder_7_io_cout)
  );
  FullAdder FullAdder_8 (
    .io_a(FullAdder_8_io_a),
    .io_b(FullAdder_8_io_b),
    .io_cin(FullAdder_8_io_cin),
    .io_sum(FullAdder_8_io_sum),
    .io_cout(FullAdder_8_io_cout)
  );
  FullAdder FullAdder_9 (
    .io_a(FullAdder_9_io_a),
    .io_b(FullAdder_9_io_b),
    .io_cin(FullAdder_9_io_cin),
    .io_sum(FullAdder_9_io_sum),
    .io_cout(FullAdder_9_io_cout)
  );
  FullAdder FullAdder_10 (
    .io_a(FullAdder_10_io_a),
    .io_b(FullAdder_10_io_b),
    .io_cin(FullAdder_10_io_cin),
    .io_sum(FullAdder_10_io_sum),
    .io_cout(FullAdder_10_io_cout)
  );
  FullAdder FullAdder_11 (
    .io_a(FullAdder_11_io_a),
    .io_b(FullAdder_11_io_b),
    .io_cin(FullAdder_11_io_cin),
    .io_sum(FullAdder_11_io_sum),
    .io_cout(FullAdder_11_io_cout)
  );
  FullAdder FullAdder_12 (
    .io_a(FullAdder_12_io_a),
    .io_b(FullAdder_12_io_b),
    .io_cin(FullAdder_12_io_cin),
    .io_sum(FullAdder_12_io_sum),
    .io_cout(FullAdder_12_io_cout)
  );
  FullAdder FullAdder_13 (
    .io_a(FullAdder_13_io_a),
    .io_b(FullAdder_13_io_b),
    .io_cin(FullAdder_13_io_cin),
    .io_sum(FullAdder_13_io_sum),
    .io_cout(FullAdder_13_io_cout)
  );
  FullAdder FullAdder_14 (
    .io_a(FullAdder_14_io_a),
    .io_b(FullAdder_14_io_b),
    .io_cin(FullAdder_14_io_cin),
    .io_sum(FullAdder_14_io_sum),
    .io_cout(FullAdder_14_io_cout)
  );
  FullAdder FullAdder_15 (
    .io_a(FullAdder_15_io_a),
    .io_b(FullAdder_15_io_b),
    .io_cin(FullAdder_15_io_cin),
    .io_sum(FullAdder_15_io_sum),
    .io_cout(FullAdder_15_io_cout)
  );
  FullAdder FullAdder_16 (
    .io_a(FullAdder_16_io_a),
    .io_b(FullAdder_16_io_b),
    .io_cin(FullAdder_16_io_cin),
    .io_sum(FullAdder_16_io_sum),
    .io_cout(FullAdder_16_io_cout)
  );
  FullAdder FullAdder_17 (
    .io_a(FullAdder_17_io_a),
    .io_b(FullAdder_17_io_b),
    .io_cin(FullAdder_17_io_cin),
    .io_sum(FullAdder_17_io_sum),
    .io_cout(FullAdder_17_io_cout)
  );
  FullAdder FullAdder_18 (
    .io_a(FullAdder_18_io_a),
    .io_b(FullAdder_18_io_b),
    .io_cin(FullAdder_18_io_cin),
    .io_sum(FullAdder_18_io_sum),
    .io_cout(FullAdder_18_io_cout)
  );
  FullAdder FullAdder_19 (
    .io_a(FullAdder_19_io_a),
    .io_b(FullAdder_19_io_b),
    .io_cin(FullAdder_19_io_cin),
    .io_sum(FullAdder_19_io_sum),
    .io_cout(FullAdder_19_io_cout)
  );
  FullAdder FullAdder_20 (
    .io_a(FullAdder_20_io_a),
    .io_b(FullAdder_20_io_b),
    .io_cin(FullAdder_20_io_cin),
    .io_sum(FullAdder_20_io_sum),
    .io_cout(FullAdder_20_io_cout)
  );
  FullAdder FullAdder_21 (
    .io_a(FullAdder_21_io_a),
    .io_b(FullAdder_21_io_b),
    .io_cin(FullAdder_21_io_cin),
    .io_sum(FullAdder_21_io_sum),
    .io_cout(FullAdder_21_io_cout)
  );
  FullAdder FullAdder_22 (
    .io_a(FullAdder_22_io_a),
    .io_b(FullAdder_22_io_b),
    .io_cin(FullAdder_22_io_cin),
    .io_sum(FullAdder_22_io_sum),
    .io_cout(FullAdder_22_io_cout)
  );
  FullAdder FullAdder_23 (
    .io_a(FullAdder_23_io_a),
    .io_b(FullAdder_23_io_b),
    .io_cin(FullAdder_23_io_cin),
    .io_sum(FullAdder_23_io_sum),
    .io_cout(FullAdder_23_io_cout)
  );
  FullAdder FullAdder_24 (
    .io_a(FullAdder_24_io_a),
    .io_b(FullAdder_24_io_b),
    .io_cin(FullAdder_24_io_cin),
    .io_sum(FullAdder_24_io_sum),
    .io_cout(FullAdder_24_io_cout)
  );
  FullAdder FullAdder_25 (
    .io_a(FullAdder_25_io_a),
    .io_b(FullAdder_25_io_b),
    .io_cin(FullAdder_25_io_cin),
    .io_sum(FullAdder_25_io_sum),
    .io_cout(FullAdder_25_io_cout)
  );
  FullAdder FullAdder_26 (
    .io_a(FullAdder_26_io_a),
    .io_b(FullAdder_26_io_b),
    .io_cin(FullAdder_26_io_cin),
    .io_sum(FullAdder_26_io_sum),
    .io_cout(FullAdder_26_io_cout)
  );
  FullAdder FullAdder_27 (
    .io_a(FullAdder_27_io_a),
    .io_b(FullAdder_27_io_b),
    .io_cin(FullAdder_27_io_cin),
    .io_sum(FullAdder_27_io_sum),
    .io_cout(FullAdder_27_io_cout)
  );
  FullAdder FullAdder_28 (
    .io_a(FullAdder_28_io_a),
    .io_b(FullAdder_28_io_b),
    .io_cin(FullAdder_28_io_cin),
    .io_sum(FullAdder_28_io_sum),
    .io_cout(FullAdder_28_io_cout)
  );
  FullAdder FullAdder_29 (
    .io_a(FullAdder_29_io_a),
    .io_b(FullAdder_29_io_b),
    .io_cin(FullAdder_29_io_cin),
    .io_sum(FullAdder_29_io_sum),
    .io_cout(FullAdder_29_io_cout)
  );
  FullAdder FullAdder_30 (
    .io_a(FullAdder_30_io_a),
    .io_b(FullAdder_30_io_b),
    .io_cin(FullAdder_30_io_cin),
    .io_sum(FullAdder_30_io_sum),
    .io_cout(FullAdder_30_io_cout)
  );
  FullAdder FullAdder_31 (
    .io_a(FullAdder_31_io_a),
    .io_b(FullAdder_31_io_b),
    .io_cin(FullAdder_31_io_cin),
    .io_sum(FullAdder_31_io_sum),
    .io_cout(FullAdder_31_io_cout)
  );
  assign _T_82 = io_A[0];
  assign _T_83 = io_B[0];
  assign _T_84 = FullAdder_io_sum;
  assign _T_85 = io_A[1];
  assign _T_86 = io_B[1];
  assign _T_87 = FullAdder_1_io_sum;
  assign _T_88 = io_A[2];
  assign _T_89 = io_B[2];
  assign _T_90 = FullAdder_2_io_sum;
  assign _T_91 = io_A[3];
  assign _T_92 = io_B[3];
  assign _T_93 = FullAdder_3_io_sum;
  assign _T_94 = io_A[4];
  assign _T_95 = io_B[4];
  assign _T_96 = FullAdder_4_io_sum;
  assign _T_97 = io_A[5];
  assign _T_98 = io_B[5];
  assign _T_99 = FullAdder_5_io_sum;
  assign _T_100 = io_A[6];
  assign _T_101 = io_B[6];
  assign _T_102 = FullAdder_6_io_sum;
  assign _T_103 = io_A[7];
  assign _T_104 = io_B[7];
  assign _T_105 = FullAdder_7_io_sum;
  assign _T_106 = io_A[8];
  assign _T_107 = io_B[8];
  assign _T_108 = FullAdder_8_io_sum;
  assign _T_109 = io_A[9];
  assign _T_110 = io_B[9];
  assign _T_111 = FullAdder_9_io_sum;
  assign _T_112 = io_A[10];
  assign _T_113 = io_B[10];
  assign _T_114 = FullAdder_10_io_sum;
  assign _T_115 = io_A[11];
  assign _T_116 = io_B[11];
  assign _T_117 = FullAdder_11_io_sum;
  assign _T_118 = io_A[12];
  assign _T_119 = io_B[12];
  assign _T_120 = FullAdder_12_io_sum;
  assign _T_121 = io_A[13];
  assign _T_122 = io_B[13];
  assign _T_123 = FullAdder_13_io_sum;
  assign _T_124 = io_A[14];
  assign _T_125 = io_B[14];
  assign _T_126 = FullAdder_14_io_sum;
  assign _T_127 = io_A[15];
  assign _T_128 = io_B[15];
  assign _T_129 = FullAdder_15_io_sum;
  assign _T_130 = io_A[16];
  assign _T_131 = io_B[16];
  assign _T_132 = FullAdder_16_io_sum;
  assign _T_133 = io_A[17];
  assign _T_134 = io_B[17];
  assign _T_135 = FullAdder_17_io_sum;
  assign _T_136 = io_A[18];
  assign _T_137 = io_B[18];
  assign _T_138 = FullAdder_18_io_sum;
  assign _T_139 = io_A[19];
  assign _T_140 = io_B[19];
  assign _T_141 = FullAdder_19_io_sum;
  assign _T_142 = io_A[20];
  assign _T_143 = io_B[20];
  assign _T_144 = FullAdder_20_io_sum;
  assign _T_145 = io_A[21];
  assign _T_146 = io_B[21];
  assign _T_147 = FullAdder_21_io_sum;
  assign _T_148 = io_A[22];
  assign _T_149 = io_B[22];
  assign _T_150 = FullAdder_22_io_sum;
  assign _T_151 = io_A[23];
  assign _T_152 = io_B[23];
  assign _T_153 = FullAdder_23_io_sum;
  assign _T_154 = io_A[24];
  assign _T_155 = io_B[24];
  assign _T_156 = FullAdder_24_io_sum;
  assign _T_157 = io_A[25];
  assign _T_158 = io_B[25];
  assign _T_159 = FullAdder_25_io_sum;
  assign _T_160 = io_A[26];
  assign _T_161 = io_B[26];
  assign _T_162 = FullAdder_26_io_sum;
  assign _T_163 = io_A[27];
  assign _T_164 = io_B[27];
  assign _T_165 = FullAdder_27_io_sum;
  assign _T_166 = io_A[28];
  assign _T_167 = io_B[28];
  assign _T_168 = FullAdder_28_io_sum;
  assign _T_169 = io_A[29];
  assign _T_170 = io_B[29];
  assign _T_171 = FullAdder_29_io_sum;
  assign _T_172 = io_A[30];
  assign _T_173 = io_B[30];
  assign _T_174 = FullAdder_30_io_sum;
  assign _T_175 = io_A[31];
  assign _T_176 = io_B[31];
  assign _T_177 = FullAdder_31_io_sum;
  assign _T_178 = {sum_1,sum_0};
  assign _T_179 = {sum_3,sum_2};
  assign _T_180 = {_T_179,_T_178};
  assign _T_181 = {sum_5,sum_4};
  assign _T_182 = {sum_7,sum_6};
  assign _T_183 = {_T_182,_T_181};
  assign _T_184 = {_T_183,_T_180};
  assign _T_185 = {sum_9,sum_8};
  assign _T_186 = {sum_11,sum_10};
  assign _T_187 = {_T_186,_T_185};
  assign _T_188 = {sum_13,sum_12};
  assign _T_189 = {sum_15,sum_14};
  assign _T_190 = {_T_189,_T_188};
  assign _T_191 = {_T_190,_T_187};
  assign _T_192 = {_T_191,_T_184};
  assign _T_193 = {sum_17,sum_16};
  assign _T_194 = {sum_19,sum_18};
  assign _T_195 = {_T_194,_T_193};
  assign _T_196 = {sum_21,sum_20};
  assign _T_197 = {sum_23,sum_22};
  assign _T_198 = {_T_197,_T_196};
  assign _T_199 = {_T_198,_T_195};
  assign _T_200 = {sum_25,sum_24};
  assign _T_201 = {sum_27,sum_26};
  assign _T_202 = {_T_201,_T_200};
  assign _T_203 = {sum_29,sum_28};
  assign _T_204 = {sum_31,sum_30};
  assign _T_205 = {_T_204,_T_203};
  assign _T_206 = {_T_205,_T_202};
  assign _T_207 = {_T_206,_T_199};
  assign _T_208 = {_T_207,_T_192};
  assign io_Sum = _T_208;
  assign FullAdder_io_a = _T_82;
  assign FullAdder_io_b = _T_83;
  assign FullAdder_io_cin = 1'h0;
  assign FullAdder_1_io_a = _T_85;
  assign FullAdder_1_io_b = _T_86;
  assign FullAdder_1_io_cin = carry_1;
  assign FullAdder_2_io_a = _T_88;
  assign FullAdder_2_io_b = _T_89;
  assign FullAdder_2_io_cin = carry_2;
  assign FullAdder_3_io_a = _T_91;
  assign FullAdder_3_io_b = _T_92;
  assign FullAdder_3_io_cin = carry_3;
  assign FullAdder_4_io_a = _T_94;
  assign FullAdder_4_io_b = _T_95;
  assign FullAdder_4_io_cin = carry_4;
  assign FullAdder_5_io_a = _T_97;
  assign FullAdder_5_io_b = _T_98;
  assign FullAdder_5_io_cin = carry_5;
  assign FullAdder_6_io_a = _T_100;
  assign FullAdder_6_io_b = _T_101;
  assign FullAdder_6_io_cin = carry_6;
  assign FullAdder_7_io_a = _T_103;
  assign FullAdder_7_io_b = _T_104;
  assign FullAdder_7_io_cin = carry_7;
  assign FullAdder_8_io_a = _T_106;
  assign FullAdder_8_io_b = _T_107;
  assign FullAdder_8_io_cin = carry_8;
  assign FullAdder_9_io_a = _T_109;
  assign FullAdder_9_io_b = _T_110;
  assign FullAdder_9_io_cin = carry_9;
  assign FullAdder_10_io_a = _T_112;
  assign FullAdder_10_io_b = _T_113;
  assign FullAdder_10_io_cin = carry_10;
  assign FullAdder_11_io_a = _T_115;
  assign FullAdder_11_io_b = _T_116;
  assign FullAdder_11_io_cin = carry_11;
  assign FullAdder_12_io_a = _T_118;
  assign FullAdder_12_io_b = _T_119;
  assign FullAdder_12_io_cin = carry_12;
  assign FullAdder_13_io_a = _T_121;
  assign FullAdder_13_io_b = _T_122;
  assign FullAdder_13_io_cin = carry_13;
  assign FullAdder_14_io_a = _T_124;
  assign FullAdder_14_io_b = _T_125;
  assign FullAdder_14_io_cin = carry_14;
  assign FullAdder_15_io_a = _T_127;
  assign FullAdder_15_io_b = _T_128;
  assign FullAdder_15_io_cin = carry_15;
  assign FullAdder_16_io_a = _T_130;
  assign FullAdder_16_io_b = _T_131;
  assign FullAdder_16_io_cin = carry_16;
  assign FullAdder_17_io_a = _T_133;
  assign FullAdder_17_io_b = _T_134;
  assign FullAdder_17_io_cin = carry_17;
  assign FullAdder_18_io_a = _T_136;
  assign FullAdder_18_io_b = _T_137;
  assign FullAdder_18_io_cin = carry_18;
  assign FullAdder_19_io_a = _T_139;
  assign FullAdder_19_io_b = _T_140;
  assign FullAdder_19_io_cin = carry_19;
  assign FullAdder_20_io_a = _T_142;
  assign FullAdder_20_io_b = _T_143;
  assign FullAdder_20_io_cin = carry_20;
  assign FullAdder_21_io_a = _T_145;
  assign FullAdder_21_io_b = _T_146;
  assign FullAdder_21_io_cin = carry_21;
  assign FullAdder_22_io_a = _T_148;
  assign FullAdder_22_io_b = _T_149;
  assign FullAdder_22_io_cin = carry_22;
  assign FullAdder_23_io_a = _T_151;
  assign FullAdder_23_io_b = _T_152;
  assign FullAdder_23_io_cin = carry_23;
  assign FullAdder_24_io_a = _T_154;
  assign FullAdder_24_io_b = _T_155;
  assign FullAdder_24_io_cin = carry_24;
  assign FullAdder_25_io_a = _T_157;
  assign FullAdder_25_io_b = _T_158;
  assign FullAdder_25_io_cin = carry_25;
  assign FullAdder_26_io_a = _T_160;
  assign FullAdder_26_io_b = _T_161;
  assign FullAdder_26_io_cin = carry_26;
  assign FullAdder_27_io_a = _T_163;
  assign FullAdder_27_io_b = _T_164;
  assign FullAdder_27_io_cin = carry_27;
  assign FullAdder_28_io_a = _T_166;
  assign FullAdder_28_io_b = _T_167;
  assign FullAdder_28_io_cin = carry_28;
  assign FullAdder_29_io_a = _T_169;
  assign FullAdder_29_io_b = _T_170;
  assign FullAdder_29_io_cin = carry_29;
  assign FullAdder_30_io_a = _T_172;
  assign FullAdder_30_io_b = _T_173;
  assign FullAdder_30_io_cin = carry_30;
  assign FullAdder_31_io_a = _T_175;
  assign FullAdder_31_io_b = _T_176;
  assign FullAdder_31_io_cin = carry_31;
  assign carry_1 = FullAdder_io_cout;
  assign carry_2 = FullAdder_1_io_cout;
  assign carry_3 = FullAdder_2_io_cout;
  assign carry_4 = FullAdder_3_io_cout;
  assign carry_5 = FullAdder_4_io_cout;
  assign carry_6 = FullAdder_5_io_cout;
  assign carry_7 = FullAdder_6_io_cout;
  assign carry_8 = FullAdder_7_io_cout;
  assign carry_9 = FullAdder_8_io_cout;
  assign carry_10 = FullAdder_9_io_cout;
  assign carry_11 = FullAdder_10_io_cout;
  assign carry_12 = FullAdder_11_io_cout;
  assign carry_13 = FullAdder_12_io_cout;
  assign carry_14 = FullAdder_13_io_cout;
  assign carry_15 = FullAdder_14_io_cout;
  assign carry_16 = FullAdder_15_io_cout;
  assign carry_17 = FullAdder_16_io_cout;
  assign carry_18 = FullAdder_17_io_cout;
  assign carry_19 = FullAdder_18_io_cout;
  assign carry_20 = FullAdder_19_io_cout;
  assign carry_21 = FullAdder_20_io_cout;
  assign carry_22 = FullAdder_21_io_cout;
  assign carry_23 = FullAdder_22_io_cout;
  assign carry_24 = FullAdder_23_io_cout;
  assign carry_25 = FullAdder_24_io_cout;
  assign carry_26 = FullAdder_25_io_cout;
  assign carry_27 = FullAdder_26_io_cout;
  assign carry_28 = FullAdder_27_io_cout;
  assign carry_29 = FullAdder_28_io_cout;
  assign carry_30 = FullAdder_29_io_cout;
  assign carry_31 = FullAdder_30_io_cout;
  assign sum_0 = _T_84;
  assign sum_1 = _T_87;
  assign sum_2 = _T_90;
  assign sum_3 = _T_93;
  assign sum_4 = _T_96;
  assign sum_5 = _T_99;
  assign sum_6 = _T_102;
  assign sum_7 = _T_105;
  assign sum_8 = _T_108;
  assign sum_9 = _T_111;
  assign sum_10 = _T_114;
  assign sum_11 = _T_117;
  assign sum_12 = _T_120;
  assign sum_13 = _T_123;
  assign sum_14 = _T_126;
  assign sum_15 = _T_129;
  assign sum_16 = _T_132;
  assign sum_17 = _T_135;
  assign sum_18 = _T_138;
  assign sum_19 = _T_141;
  assign sum_20 = _T_144;
  assign sum_21 = _T_147;
  assign sum_22 = _T_150;
  assign sum_23 = _T_153;
  assign sum_24 = _T_156;
  assign sum_25 = _T_159;
  assign sum_26 = _T_162;
  assign sum_27 = _T_165;
  assign sum_28 = _T_168;
  assign sum_29 = _T_171;
  assign sum_30 = _T_174;
  assign sum_31 = _T_177;
endmodule
module ALU(
  input  [3:0]  io_fn,
  input  [31:0] io_in1,
  input  [31:0] io_in2,
  output [31:0] io_out,
  output [31:0] io_adder_out
);
  wire [31:0] adder_io_A;
  wire [31:0] adder_io_B;
  wire [31:0] adder_io_Sum;
  wire  _T_9;
  wire [32:0] _T_11;
  wire [32:0] _T_12;
  wire [31:0] _T_13;
  wire [31:0] _T_14;
  wire  _T_16;
  wire  _T_17;
  wire  _T_18;
  wire  _T_19;
  wire  _T_20;
  wire  _T_23;
  wire  less;
  wire [4:0] shamt;
  wire  _T_24;
  wire  _T_25;
  wire  _T_26;
  wire [15:0] _T_31;
  wire [31:0] _T_32;
  wire [15:0] _T_33;
  wire [31:0] _GEN_0;
  wire [31:0] _T_34;
  wire [31:0] _T_36;
  wire [31:0] _T_37;
  wire [23:0] _T_41;
  wire [31:0] _GEN_1;
  wire [31:0] _T_42;
  wire [23:0] _T_43;
  wire [31:0] _GEN_2;
  wire [31:0] _T_44;
  wire [31:0] _T_46;
  wire [31:0] _T_47;
  wire [27:0] _T_51;
  wire [31:0] _GEN_3;
  wire [31:0] _T_52;
  wire [27:0] _T_53;
  wire [31:0] _GEN_4;
  wire [31:0] _T_54;
  wire [31:0] _T_56;
  wire [31:0] _T_57;
  wire [29:0] _T_61;
  wire [31:0] _GEN_5;
  wire [31:0] _T_62;
  wire [29:0] _T_63;
  wire [31:0] _GEN_6;
  wire [31:0] _T_64;
  wire [31:0] _T_66;
  wire [31:0] _T_67;
  wire [30:0] _T_71;
  wire [31:0] _GEN_7;
  wire [31:0] _T_72;
  wire [30:0] _T_73;
  wire [31:0] _GEN_8;
  wire [31:0] _T_74;
  wire [31:0] _T_76;
  wire [31:0] _T_77;
  wire [31:0] shin;
  wire  _T_79;
  wire  _T_80;
  wire [32:0] _T_81;
  wire [32:0] _T_82;
  wire [32:0] _T_83;
  wire [31:0] shout_r;
  wire [15:0] _T_88;
  wire [31:0] _T_89;
  wire [15:0] _T_90;
  wire [31:0] _GEN_9;
  wire [31:0] _T_91;
  wire [31:0] _T_93;
  wire [31:0] _T_94;
  wire [23:0] _T_98;
  wire [31:0] _GEN_10;
  wire [31:0] _T_99;
  wire [23:0] _T_100;
  wire [31:0] _GEN_11;
  wire [31:0] _T_101;
  wire [31:0] _T_103;
  wire [31:0] _T_104;
  wire [27:0] _T_108;
  wire [31:0] _GEN_12;
  wire [31:0] _T_109;
  wire [27:0] _T_110;
  wire [31:0] _GEN_13;
  wire [31:0] _T_111;
  wire [31:0] _T_113;
  wire [31:0] _T_114;
  wire [29:0] _T_118;
  wire [31:0] _GEN_14;
  wire [31:0] _T_119;
  wire [29:0] _T_120;
  wire [31:0] _GEN_15;
  wire [31:0] _T_121;
  wire [31:0] _T_123;
  wire [31:0] _T_124;
  wire [30:0] _T_128;
  wire [31:0] _GEN_16;
  wire [31:0] _T_129;
  wire [30:0] _T_130;
  wire [31:0] _GEN_17;
  wire [31:0] _T_131;
  wire [31:0] _T_133;
  wire [31:0] shout_l;
  wire  _T_134;
  wire [31:0] _T_135;
  wire  _T_136;
  wire [31:0] _T_137;
  wire  _T_138;
  wire [31:0] _T_139;
  wire [31:0] _T_140;
  wire [31:0] _T_141;
  wire [31:0] bitwise_logic;
  wire  _T_142;
  wire  _T_143;
  wire  _T_144;
  wire  _T_145;
  wire  _T_147;
  wire  _T_151;
  wire [31:0] _T_152;
  wire [31:0] _T_153;
  wire [31:0] _T_154;
  wire [31:0] out;
  Adder adder (
    .io_A(adder_io_A),
    .io_B(adder_io_B),
    .io_Sum(adder_io_Sum)
  );
  assign _T_9 = io_fn[3];
  assign _T_11 = 32'h0 - io_in2;
  assign _T_12 = $unsigned(_T_11);
  assign _T_13 = _T_12[31:0];
  assign _T_14 = _T_9 ? _T_13 : io_in2;
  assign _T_16 = io_in1[31];
  assign _T_17 = io_in2[31];
  assign _T_18 = _T_16 == _T_17;
  assign _T_19 = adder_io_Sum[31];
  assign _T_20 = io_fn == 4'he;
  assign _T_23 = _T_20 ? _T_17 : _T_16;
  assign less = _T_18 ? _T_19 : _T_23;
  assign shamt = io_in2[4:0];
  assign _T_24 = io_fn == 4'h5;
  assign _T_25 = io_fn == 4'hb;
  assign _T_26 = _T_24 | _T_25;
  assign _T_31 = io_in1[31:16];
  assign _T_32 = {{16'd0}, _T_31};
  assign _T_33 = io_in1[15:0];
  assign _GEN_0 = {{16'd0}, _T_33};
  assign _T_34 = _GEN_0 << 16;
  assign _T_36 = _T_34 & 32'hffff0000;
  assign _T_37 = _T_32 | _T_36;
  assign _T_41 = _T_37[31:8];
  assign _GEN_1 = {{8'd0}, _T_41};
  assign _T_42 = _GEN_1 & 32'hff00ff;
  assign _T_43 = _T_37[23:0];
  assign _GEN_2 = {{8'd0}, _T_43};
  assign _T_44 = _GEN_2 << 8;
  assign _T_46 = _T_44 & 32'hff00ff00;
  assign _T_47 = _T_42 | _T_46;
  assign _T_51 = _T_47[31:4];
  assign _GEN_3 = {{4'd0}, _T_51};
  assign _T_52 = _GEN_3 & 32'hf0f0f0f;
  assign _T_53 = _T_47[27:0];
  assign _GEN_4 = {{4'd0}, _T_53};
  assign _T_54 = _GEN_4 << 4;
  assign _T_56 = _T_54 & 32'hf0f0f0f0;
  assign _T_57 = _T_52 | _T_56;
  assign _T_61 = _T_57[31:2];
  assign _GEN_5 = {{2'd0}, _T_61};
  assign _T_62 = _GEN_5 & 32'h33333333;
  assign _T_63 = _T_57[29:0];
  assign _GEN_6 = {{2'd0}, _T_63};
  assign _T_64 = _GEN_6 << 2;
  assign _T_66 = _T_64 & 32'hcccccccc;
  assign _T_67 = _T_62 | _T_66;
  assign _T_71 = _T_67[31:1];
  assign _GEN_7 = {{1'd0}, _T_71};
  assign _T_72 = _GEN_7 & 32'h55555555;
  assign _T_73 = _T_67[30:0];
  assign _GEN_8 = {{1'd0}, _T_73};
  assign _T_74 = _GEN_8 << 1;
  assign _T_76 = _T_74 & 32'haaaaaaaa;
  assign _T_77 = _T_72 | _T_76;
  assign shin = _T_26 ? io_in1 : _T_77;
  assign _T_79 = shin[31];
  assign _T_80 = _T_9 & _T_79;
  assign _T_81 = {_T_80,shin};
  assign _T_82 = $signed(_T_81);
  assign _T_83 = $signed(_T_82) >>> shamt;
  assign shout_r = _T_83[31:0];
  assign _T_88 = shout_r[31:16];
  assign _T_89 = {{16'd0}, _T_88};
  assign _T_90 = shout_r[15:0];
  assign _GEN_9 = {{16'd0}, _T_90};
  assign _T_91 = _GEN_9 << 16;
  assign _T_93 = _T_91 & 32'hffff0000;
  assign _T_94 = _T_89 | _T_93;
  assign _T_98 = _T_94[31:8];
  assign _GEN_10 = {{8'd0}, _T_98};
  assign _T_99 = _GEN_10 & 32'hff00ff;
  assign _T_100 = _T_94[23:0];
  assign _GEN_11 = {{8'd0}, _T_100};
  assign _T_101 = _GEN_11 << 8;
  assign _T_103 = _T_101 & 32'hff00ff00;
  assign _T_104 = _T_99 | _T_103;
  assign _T_108 = _T_104[31:4];
  assign _GEN_12 = {{4'd0}, _T_108};
  assign _T_109 = _GEN_12 & 32'hf0f0f0f;
  assign _T_110 = _T_104[27:0];
  assign _GEN_13 = {{4'd0}, _T_110};
  assign _T_111 = _GEN_13 << 4;
  assign _T_113 = _T_111 & 32'hf0f0f0f0;
  assign _T_114 = _T_109 | _T_113;
  assign _T_118 = _T_114[31:2];
  assign _GEN_14 = {{2'd0}, _T_118};
  assign _T_119 = _GEN_14 & 32'h33333333;
  assign _T_120 = _T_114[29:0];
  assign _GEN_15 = {{2'd0}, _T_120};
  assign _T_121 = _GEN_15 << 2;
  assign _T_123 = _T_121 & 32'hcccccccc;
  assign _T_124 = _T_119 | _T_123;
  assign _T_128 = _T_124[31:1];
  assign _GEN_16 = {{1'd0}, _T_128};
  assign _T_129 = _GEN_16 & 32'h55555555;
  assign _T_130 = _T_124[30:0];
  assign _GEN_17 = {{1'd0}, _T_130};
  assign _T_131 = _GEN_17 << 1;
  assign _T_133 = _T_131 & 32'haaaaaaaa;
  assign shout_l = _T_129 | _T_133;
  assign _T_134 = io_fn == 4'h7;
  assign _T_135 = io_in1 & io_in2;
  assign _T_136 = io_fn == 4'h6;
  assign _T_137 = io_in1 | io_in2;
  assign _T_138 = io_fn == 4'h4;
  assign _T_139 = io_in1 ^ io_in2;
  assign _T_140 = _T_138 ? _T_139 : io_in1;
  assign _T_141 = _T_136 ? _T_137 : _T_140;
  assign bitwise_logic = _T_134 ? _T_135 : _T_141;
  assign _T_142 = io_fn == 4'h0;
  assign _T_143 = io_fn == 4'ha;
  assign _T_144 = _T_142 | _T_143;
  assign _T_145 = io_fn == 4'hc;
  assign _T_147 = _T_145 | _T_20;
  assign _T_151 = io_fn == 4'h1;
  assign _T_152 = _T_151 ? shout_l : bitwise_logic;
  assign _T_153 = _T_26 ? shout_r : _T_152;
  assign _T_154 = _T_147 ? {{31'd0}, less} : _T_153;
  assign out = _T_144 ? adder_io_Sum : _T_154;
  assign io_out = out;
  assign io_adder_out = adder_io_Sum;
  assign adder_io_A = io_in1;
  assign adder_io_B = _T_14;
endmodule
module BranchCond(
  input  [31:0] io_exe_rs1_data,
  input  [31:0] io_exe_rs2_data,
  output        io_br_eq,
  output        io_br_lt,
  output        io_br_ltu
);
  wire  _T_7;
  wire [31:0] _T_8;
  wire [31:0] _T_9;
  wire  _T_10;
  wire  _T_11;
  assign _T_7 = io_exe_rs1_data == io_exe_rs2_data;
  assign _T_8 = $signed(io_exe_rs1_data);
  assign _T_9 = $signed(io_exe_rs2_data);
  assign _T_10 = $signed(_T_8) < $signed(_T_9);
  assign _T_11 = io_exe_rs1_data < io_exe_rs2_data;
  assign io_br_eq = _T_7;
  assign io_br_lt = _T_10;
  assign io_br_ltu = _T_11;
endmodule
module BranchJumpCalculator(
  input  [31:0] io_imm_j_sext,
  input  [31:0] io_imm_b_sext,
  input  [31:0] io_exe_pc,
  input  [31:0] io_alu_adder_out,
  input  [31:0] io_exception_target,
  input  [2:0]  io_ctl_pc_sel,
  input         io_ctl_brjmp_sel,
  output [9:0]  io_take_pc,
  output [31:0] io_exe_jump_reg_target,
  output [31:0] io_take_pc_allbits
);
  wire [31:0] imm_brjmp;
  wire [32:0] _T_12;
  wire [31:0] exe_brjmp_target;
  wire [31:0] take_pc_allbits;
  wire  _T_14;
  wire  _T_15;
  wire [31:0] _T_16;
  wire [31:0] _T_17;
  wire [9:0] _T_18;
  assign imm_brjmp = io_ctl_brjmp_sel ? io_imm_j_sext : io_imm_b_sext;
  assign _T_12 = io_exe_pc + imm_brjmp;
  assign exe_brjmp_target = _T_12[31:0];
  assign _T_14 = io_ctl_pc_sel == 3'h4;
  assign _T_15 = io_ctl_pc_sel == 3'h3;
  assign _T_16 = _T_15 ? io_alu_adder_out : exe_brjmp_target;
  assign _T_17 = _T_14 ? io_exception_target : _T_16;
  assign _T_18 = take_pc_allbits[9:0];
  assign io_take_pc = _T_18;
  assign io_exe_jump_reg_target = io_alu_adder_out;
  assign io_take_pc_allbits = take_pc_allbits;
  assign take_pc_allbits = _T_17;
endmodule
module ID(
  input  [31:0] io_instruction,
  output [31:0] io_imm_u,
  output [4:0]  io_imm_z,
  output [31:0] io_imm_i_sext,
  output [31:0] io_imm_s_sext,
  output [31:0] io_imm_b_sext,
  output [31:0] io_imm_j_sext,
  output [4:0]  io_rs1_addr,
  output [4:0]  io_rs2_addr,
  output [4:0]  io_wb_addr
);
  wire [11:0] imm_i;
  wire [6:0] _T_12;
  wire [4:0] _T_13;
  wire [11:0] imm_s;
  wire  _T_14;
  wire  _T_15;
  wire [5:0] _T_16;
  wire [3:0] _T_17;
  wire [9:0] _T_18;
  wire [1:0] _T_19;
  wire [11:0] imm_b;
  wire [7:0] _T_21;
  wire  _T_22;
  wire [9:0] _T_23;
  wire [10:0] _T_24;
  wire [8:0] _T_25;
  wire [19:0] imm_j;
  wire [19:0] _T_26;
  wire [31:0] _T_32;
  wire [4:0] _T_33;
  wire  _T_34;
  wire [19:0] _T_38;
  wire [31:0] _T_39;
  wire  _T_40;
  wire [19:0] _T_44;
  wire [31:0] _T_45;
  wire  _T_46;
  wire [18:0] _T_50;
  wire [30:0] _T_52;
  wire [31:0] _T_53;
  wire  _T_54;
  wire [10:0] _T_58;
  wire [30:0] _T_60;
  wire [31:0] _T_61;
  wire [4:0] _T_63;
  assign imm_i = io_instruction[31:20];
  assign _T_12 = io_instruction[31:25];
  assign _T_13 = io_instruction[11:7];
  assign imm_s = {_T_12,_T_13};
  assign _T_14 = io_instruction[31];
  assign _T_15 = io_instruction[7];
  assign _T_16 = io_instruction[30:25];
  assign _T_17 = io_instruction[11:8];
  assign _T_18 = {_T_16,_T_17};
  assign _T_19 = {_T_14,_T_15};
  assign imm_b = {_T_19,_T_18};
  assign _T_21 = io_instruction[19:12];
  assign _T_22 = io_instruction[20];
  assign _T_23 = io_instruction[30:21];
  assign _T_24 = {_T_22,_T_23};
  assign _T_25 = {_T_14,_T_21};
  assign imm_j = {_T_25,_T_24};
  assign _T_26 = io_instruction[31:12];
  assign _T_32 = {_T_26,12'h0};
  assign _T_33 = io_instruction[19:15];
  assign _T_34 = imm_i[11];
  assign _T_38 = _T_34 ? 20'hfffff : 20'h0;
  assign _T_39 = {_T_38,imm_i};
  assign _T_40 = imm_s[11];
  assign _T_44 = _T_40 ? 20'hfffff : 20'h0;
  assign _T_45 = {_T_44,imm_s};
  assign _T_46 = imm_b[11];
  assign _T_50 = _T_46 ? 19'h7ffff : 19'h0;
  assign _T_52 = {_T_50,imm_b};
  assign _T_53 = {_T_52,1'h0};
  assign _T_54 = imm_j[19];
  assign _T_58 = _T_54 ? 11'h7ff : 11'h0;
  assign _T_60 = {_T_58,imm_j};
  assign _T_61 = {_T_60,1'h0};
  assign _T_63 = io_instruction[24:20];
  assign io_imm_u = _T_32;
  assign io_imm_z = _T_33;
  assign io_imm_i_sext = _T_39;
  assign io_imm_s_sext = _T_45;
  assign io_imm_b_sext = _T_53;
  assign io_imm_j_sext = _T_61;
  assign io_rs1_addr = _T_33;
  assign io_rs2_addr = _T_63;
  assign io_wb_addr = _T_13;
endmodule
module RS(
  input  [31:0] io_rf_rs1_data,
  input  [31:0] io_rf_rs2_data,
  input  [31:0] io_wb_reg_alu,
  input  [4:0]  io_wb_reg_wbaddr,
  input  [4:0]  io_exe_rs1_addr,
  input  [4:0]  io_exe_rs2_addr,
  input         io_wb_reg_ctrl_rf_wen,
  input         io_wb_reg_ctrl_bypassable,
  output [31:0] io_exe_rs1_data,
  output [31:0] io_exe_rs2_data
);
  wire  _T_12;
  wire  _T_14;
  wire  _T_15;
  wire  _T_16;
  wire  _T_17;
  wire  _T_18;
  wire  _T_20;
  wire  _T_21;
  wire  _T_22;
  wire  _T_23;
  wire [31:0] _T_24;
  wire [31:0] _T_25;
  assign _T_12 = io_wb_reg_wbaddr == io_exe_rs1_addr;
  assign _T_14 = io_exe_rs1_addr != 5'h0;
  assign _T_15 = _T_12 & _T_14;
  assign _T_16 = _T_15 & io_wb_reg_ctrl_rf_wen;
  assign _T_17 = _T_16 & io_wb_reg_ctrl_bypassable;
  assign _T_18 = io_wb_reg_wbaddr == io_exe_rs2_addr;
  assign _T_20 = io_exe_rs2_addr != 5'h0;
  assign _T_21 = _T_18 & _T_20;
  assign _T_22 = _T_21 & io_wb_reg_ctrl_rf_wen;
  assign _T_23 = _T_22 & io_wb_reg_ctrl_bypassable;
  assign _T_24 = _T_17 ? io_wb_reg_alu : io_rf_rs1_data;
  assign _T_25 = _T_23 ? io_wb_reg_alu : io_rf_rs2_data;
  assign io_exe_rs1_data = _T_24;
  assign io_exe_rs2_data = _T_25;
endmodule
module Operands(
  input  [31:0] io_exe_rs1_data,
  input  [31:0] io_exe_rs2_data,
  input  [1:0]  io_ctl_op1_sel,
  input  [1:0]  io_ctl_op2_sel,
  input  [4:0]  io_imm_z,
  input  [31:0] io_imm_u,
  input  [31:0] io_imm_i_sext,
  input  [31:0] io_imm_s_sext,
  input  [31:0] io_exe_pc,
  output [31:0] io_exe_alu_op1,
  output [31:0] io_exe_alu_op2
);
  wire  _T_13;
  wire  _T_14;
  wire [31:0] _T_15;
  wire [31:0] _T_16;
  wire  _T_17;
  wire  _T_18;
  wire  _T_19;
  wire [31:0] _T_20;
  wire [31:0] _T_21;
  wire [31:0] _T_22;
  assign _T_13 = io_ctl_op1_sel == 2'h2;
  assign _T_14 = io_ctl_op1_sel == 2'h1;
  assign _T_15 = _T_14 ? io_imm_u : io_exe_rs1_data;
  assign _T_16 = _T_13 ? {{27'd0}, io_imm_z} : _T_15;
  assign _T_17 = io_ctl_op2_sel == 2'h1;
  assign _T_18 = io_ctl_op2_sel == 2'h3;
  assign _T_19 = io_ctl_op2_sel == 2'h2;
  assign _T_20 = _T_19 ? io_imm_s_sext : io_exe_rs2_data;
  assign _T_21 = _T_18 ? io_exe_pc : _T_20;
  assign _T_22 = _T_17 ? io_imm_i_sext : _T_21;
  assign io_exe_alu_op1 = _T_16;
  assign io_exe_alu_op2 = _T_22;
endmodule
module RegisterFile(
  input         clock,
  input  [4:0]  io_rs1_addr,
  output [31:0] io_rs1_data,
  input  [4:0]  io_rs2_addr,
  output [31:0] io_rs2_data,
  input  [4:0]  io_test_addr,
  output [31:0] io_test_data,
  input  [4:0]  io_waddr,
  input  [31:0] io_wdata,
  input         io_wen
);
  reg [31:0] regfile [0:31];
  reg [31:0] _RAND_0;
  wire [31:0] regfile__T_19_data;
  wire [4:0] regfile__T_19_addr;
  wire [31:0] regfile__T_24_data;
  wire [4:0] regfile__T_24_addr;
  wire [31:0] regfile__T_27_data;
  wire [4:0] regfile__T_27_addr;
  wire [31:0] regfile__T_16_data;
  wire [4:0] regfile__T_16_addr;
  wire  regfile__T_16_mask;
  wire  regfile__T_16_en;
  wire  _T_14;
  wire  _T_15;
  wire [31:0] _GEN_14;
  wire  _T_18;
  wire [31:0] _T_21;
  wire [31:0] _GEN_15;
  wire  _T_23;
  wire [31:0] _T_26;
  assign regfile__T_19_addr = io_rs1_addr;
  assign regfile__T_19_data = regfile[regfile__T_19_addr];
  assign regfile__T_24_addr = io_rs2_addr;
  assign regfile__T_24_data = regfile[regfile__T_24_addr];
  assign regfile__T_27_addr = io_test_addr;
  assign regfile__T_27_data = regfile[regfile__T_27_addr];
  assign regfile__T_16_data = io_wdata;
  assign regfile__T_16_addr = io_waddr;
  assign regfile__T_16_mask = _T_15;
  assign regfile__T_16_en = _T_15;
  assign _T_14 = io_waddr != 5'h0;
  assign _T_15 = io_wen & _T_14;
  assign _GEN_14 = {{27'd0}, io_rs1_addr};
  assign _T_18 = _GEN_14 != 32'h0;
  assign _T_21 = _T_18 ? regfile__T_19_data : 32'h0;
  assign _GEN_15 = {{27'd0}, io_rs2_addr};
  assign _T_23 = _GEN_15 != 32'h0;
  assign _T_26 = _T_23 ? regfile__T_24_data : 32'h0;
  assign io_rs1_data = _T_21;
  assign io_rs2_data = _T_26;
  assign io_test_data = regfile__T_27_data;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  _RAND_0 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    regfile[initvar] = _RAND_0[31:0];
  `endif // RANDOMIZE_MEM_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(regfile__T_16_en & regfile__T_16_mask) begin
      regfile[regfile__T_16_addr] <= regfile__T_16_data;
    end
  end
endmodule
/* 
module Memory_1(
  input         clock,
  input  [2:0]  io_read_type,
  input  [11:0] io_raddr,
  output [31:0] io_rdata,
  input  [2:0]  io_write_type,
  input  [31:0] io_wdata,
  input  [11:0] io_waddr,
  input         io_wen,
  input         io_valid
);
  reg [7:0] regfile [0:4095];
  reg [31:0] _RAND_0;
  wire [7:0] regfile__T_42_data;
  wire [11:0] regfile__T_42_addr;
  wire [7:0] regfile__T_50_data;
  wire [11:0] regfile__T_50_addr;
  wire [7:0] regfile__T_54_data;
  wire [11:0] regfile__T_54_addr;
  wire [7:0] regfile__T_63_data;
  wire [11:0] regfile__T_63_addr;
  wire [7:0] regfile__T_67_data;
  wire [11:0] regfile__T_67_addr;
  wire [7:0] regfile__T_71_data;
  wire [11:0] regfile__T_71_addr;
  wire [7:0] regfile__T_75_data;
  wire [11:0] regfile__T_75_addr;
  wire [7:0] regfile__T_81_data;
  wire [11:0] regfile__T_81_addr;
  wire [7:0] regfile__T_89_data;
  wire [11:0] regfile__T_89_addr;
  wire [7:0] regfile__T_93_data;
  wire [11:0] regfile__T_93_addr;
  wire [7:0] regfile__T_102_data;
  wire [11:0] regfile__T_102_addr;
  wire [7:0] regfile__T_106_data;
  wire [11:0] regfile__T_106_addr;
  wire [7:0] regfile__T_110_data;
  wire [11:0] regfile__T_110_addr;
  wire [7:0] regfile__T_114_data;
  wire [11:0] regfile__T_114_addr;
  wire [7:0] regfile__T_14_data;
  wire [11:0] regfile__T_14_addr;
  wire  regfile__T_14_mask;
  wire  regfile__T_14_en;
  wire [7:0] regfile__T_17_data;
  wire [11:0] regfile__T_17_addr;
  wire  regfile__T_17_mask;
  wire  regfile__T_17_en;
  wire [7:0] regfile__T_22_data;
  wire [11:0] regfile__T_22_addr;
  wire  regfile__T_22_mask;
  wire  regfile__T_22_en;
  wire [7:0] regfile__T_25_data;
  wire [11:0] regfile__T_25_addr;
  wire  regfile__T_25_mask;
  wire  regfile__T_25_en;
  wire [7:0] regfile__T_30_data;
  wire [11:0] regfile__T_30_addr;
  wire  regfile__T_30_mask;
  wire  regfile__T_30_en;
  wire [7:0] regfile__T_35_data;
  wire [11:0] regfile__T_35_addr;
  wire  regfile__T_35_mask;
  wire  regfile__T_35_en;
  wire [7:0] regfile__T_40_data;
  wire [11:0] regfile__T_40_addr;
  wire  regfile__T_40_mask;
  wire  regfile__T_40_en;
  wire  _T_12;
  wire [7:0] _T_13;
  wire  _T_15;
  wire [7:0] _T_16;
  wire [12:0] _T_19;
  wire [11:0] _T_20;
  wire [7:0] _T_21;
  wire  _T_23;
  wire [7:0] _T_24;
  wire [11:0] _T_28;
  wire [7:0] _T_29;
  wire [12:0] _T_32;
  wire [11:0] _T_33;
  wire [7:0] _T_34;
  wire [12:0] _T_37;
  wire [11:0] _T_38;
  wire [7:0] _T_39;
  wire  _GEN_18;
  wire  _GEN_32;
  wire  _GEN_38;
  wire  _GEN_48;
  wire  _GEN_52;
  wire  _GEN_58;
  wire  _GEN_68;
  wire  _GEN_72;
  wire  _GEN_78;
  wire  _T_41;
  wire  _T_43;
  wire [23:0] _T_47;
  wire [31:0] _T_48;
  wire  _T_49;
  wire [12:0] _T_52;
  wire [11:0] _T_53;
  wire [15:0] _T_55;
  wire  _T_56;
  wire [15:0] _T_60;
  wire [31:0] _T_61;
  wire  _T_62;
  wire [11:0] _T_66;
  wire [12:0] _T_69;
  wire [11:0] _T_70;
  wire [12:0] _T_73;
  wire [11:0] _T_74;
  wire [15:0] _T_76;
  wire [15:0] _T_77;
  wire [31:0] _T_78;
  wire  _T_79;
  wire  _T_80;
  wire [31:0] _T_87;
  wire  _T_88;
  wire [11:0] _T_92;
  wire [15:0] _T_94;
  wire [31:0] _T_100;
  wire  _T_101;
  wire [11:0] _T_105;
  wire [11:0] _T_109;
  wire [11:0] _T_113;
  wire [15:0] _T_115;
  wire [15:0] _T_116;
  wire [31:0] _T_117;
  wire [31:0] _GEN_97;
  wire  _GEN_100;
  wire [31:0] _GEN_107;
  wire  _GEN_110;
  wire  _GEN_114;
  wire  _GEN_120;
  wire  _GEN_124;
  wire  _GEN_128;
  wire [31:0] _GEN_138;
  wire  _GEN_141;
  wire  _GEN_144;
  wire  _GEN_148;
  wire [31:0] _GEN_156;
  wire  _GEN_159;
  wire  _GEN_165;
  wire  _GEN_168;
  wire  _GEN_172;
  wire [31:0] _GEN_179;
  wire  _GEN_182;
  wire  _GEN_186;
  wire  _GEN_192;
  wire  _GEN_195;
  wire  _GEN_199;
  assign regfile__T_42_addr = io_raddr;
  assign regfile__T_42_data = regfile[regfile__T_42_addr];
  assign regfile__T_50_addr = io_raddr;
  assign regfile__T_50_data = regfile[regfile__T_50_addr];
  assign regfile__T_54_addr = _T_53;
  assign regfile__T_54_data = regfile[regfile__T_54_addr];
  assign regfile__T_63_addr = io_raddr;
  assign regfile__T_63_data = regfile[regfile__T_63_addr];
  assign regfile__T_67_addr = _T_66;
  assign regfile__T_67_data = regfile[regfile__T_67_addr];
  assign regfile__T_71_addr = _T_70;
  assign regfile__T_71_data = regfile[regfile__T_71_addr];
  assign regfile__T_75_addr = _T_74;
  assign regfile__T_75_data = regfile[regfile__T_75_addr];
  assign regfile__T_81_addr = io_raddr;
  assign regfile__T_81_data = regfile[regfile__T_81_addr];
  assign regfile__T_89_addr = io_raddr;
  assign regfile__T_89_data = regfile[regfile__T_89_addr];
  assign regfile__T_93_addr = _T_92;
  assign regfile__T_93_data = regfile[regfile__T_93_addr];
  assign regfile__T_102_addr = io_raddr;
  assign regfile__T_102_data = regfile[regfile__T_102_addr];
  assign regfile__T_106_addr = _T_105;
  assign regfile__T_106_data = regfile[regfile__T_106_addr];
  assign regfile__T_110_addr = _T_109;
  assign regfile__T_110_data = regfile[regfile__T_110_addr];
  assign regfile__T_114_addr = _T_113;
  assign regfile__T_114_data = regfile[regfile__T_114_addr];
  assign regfile__T_14_data = _T_13;
  assign regfile__T_14_addr = io_waddr;
  assign regfile__T_14_mask = _GEN_68;
  assign regfile__T_14_en = _GEN_68;
  assign regfile__T_17_data = _T_16;
  assign regfile__T_17_addr = io_waddr;
  assign regfile__T_17_mask = _GEN_72;
  assign regfile__T_17_en = _GEN_72;
  assign regfile__T_22_data = _T_21;
  assign regfile__T_22_addr = _T_20;
  assign regfile__T_22_mask = _GEN_72;
  assign regfile__T_22_en = _GEN_72;
  assign regfile__T_25_data = _T_24;
  assign regfile__T_25_addr = io_waddr;
  assign regfile__T_25_mask = _GEN_78;
  assign regfile__T_25_en = _GEN_78;
  assign regfile__T_30_data = _T_29;
  assign regfile__T_30_addr = _T_28;
  assign regfile__T_30_mask = _GEN_78;
  assign regfile__T_30_en = _GEN_78;
  assign regfile__T_35_data = _T_34;
  assign regfile__T_35_addr = _T_33;
  assign regfile__T_35_mask = _GEN_78;
  assign regfile__T_35_en = _GEN_78;
  assign regfile__T_40_data = _T_39;
  assign regfile__T_40_addr = _T_38;
  assign regfile__T_40_mask = _GEN_78;
  assign regfile__T_40_en = _GEN_78;
  assign _T_12 = io_write_type == 3'h1;
  assign _T_13 = io_wdata[7:0];
  assign _T_15 = io_write_type == 3'h2;
  assign _T_16 = io_wdata[7:0];
  assign _T_19 = io_waddr + 12'h1;
  assign _T_20 = _T_19[11:0];
  assign _T_21 = io_wdata[15:8];
  assign _T_23 = io_write_type == 3'h3;
  assign _T_24 = io_wdata[7:0];
  assign _T_28 = _T_19[11:0];
  assign _T_29 = io_wdata[15:8];
  assign _T_32 = io_waddr + 12'h2;
  assign _T_33 = _T_32[11:0];
  assign _T_34 = io_wdata[23:16];
  assign _T_37 = io_waddr + 12'h3;
  assign _T_38 = _T_37[11:0];
  assign _T_39 = io_wdata[31:24];
  assign _GEN_18 = _T_15 ? 1'h0 : _T_23;
  assign _GEN_32 = _T_12 ? 1'h0 : _T_15;
  assign _GEN_38 = _T_12 ? 1'h0 : _GEN_18;
  assign _GEN_48 = io_wen ? _T_12 : 1'h0;
  assign _GEN_52 = io_wen ? _GEN_32 : 1'h0;
  assign _GEN_58 = io_wen ? _GEN_38 : 1'h0;
  assign _GEN_68 = io_valid ? _GEN_48 : 1'h0;
  assign _GEN_72 = io_valid ? _GEN_52 : 1'h0;
  assign _GEN_78 = io_valid ? _GEN_58 : 1'h0;
  assign _T_41 = io_read_type == 3'h1;
  assign _T_43 = regfile__T_42_data[7];
  assign _T_47 = _T_43 ? 24'hffffff : 24'h0;
  assign _T_48 = {_T_47,regfile__T_42_data};
  assign _T_49 = io_read_type == 3'h2;
  assign _T_52 = io_raddr + 12'h1;
  assign _T_53 = _T_52[11:0];
  assign _T_55 = {regfile__T_54_data,regfile__T_50_data};
  assign _T_56 = _T_55[15];
  assign _T_60 = _T_56 ? 16'hffff : 16'h0;
  assign _T_61 = {_T_60,_T_55};
  assign _T_62 = io_read_type == 3'h3;
  assign _T_66 = _T_52[11:0];
  assign _T_69 = io_raddr + 12'h2;
  assign _T_70 = _T_69[11:0];
  assign _T_73 = io_raddr + 12'h3;
  assign _T_74 = _T_73[11:0];
  assign _T_76 = {regfile__T_67_data,regfile__T_63_data};
  assign _T_77 = {regfile__T_75_data,regfile__T_71_data};
  assign _T_78 = {_T_77,_T_76};
  assign _T_79 = io_read_type == 3'h4;
  assign _T_80 = io_read_type == 3'h5;
  assign _T_87 = {24'h0,regfile__T_81_data};
  assign _T_88 = io_read_type == 3'h6;
  assign _T_92 = _T_52[11:0];
  assign _T_94 = {regfile__T_93_data,regfile__T_89_data};
  assign _T_100 = {16'h0,_T_94};
  assign _T_101 = io_read_type == 3'h7;
  assign _T_105 = _T_52[11:0];
  assign _T_109 = _T_69[11:0];
  assign _T_113 = _T_73[11:0];
  assign _T_115 = {regfile__T_106_data,regfile__T_102_data};
  assign _T_116 = {regfile__T_114_data,regfile__T_110_data};
  assign _T_117 = {_T_116,_T_115};
  assign _GEN_97 = _T_88 ? _T_100 : _T_117;
  assign _GEN_100 = _T_88 ? 1'h0 : _T_101;
  assign _GEN_107 = _T_80 ? _T_87 : _GEN_97;
  assign _GEN_110 = _T_80 ? 1'h0 : _T_88;
  assign _GEN_114 = _T_80 ? 1'h0 : _GEN_100;
  assign _GEN_120 = _T_79 ? 1'h0 : _T_80;
  assign _GEN_124 = _T_79 ? 1'h0 : _GEN_110;
  assign _GEN_128 = _T_79 ? 1'h0 : _GEN_114;
  assign _GEN_138 = _T_62 ? _T_78 : _GEN_107;
  assign _GEN_141 = _T_62 ? 1'h0 : _GEN_120;
  assign _GEN_144 = _T_62 ? 1'h0 : _GEN_124;
  assign _GEN_148 = _T_62 ? 1'h0 : _GEN_128;
  assign _GEN_156 = _T_49 ? _T_61 : _GEN_138;
  assign _GEN_159 = _T_49 ? 1'h0 : _T_62;
  assign _GEN_165 = _T_49 ? 1'h0 : _GEN_141;
  assign _GEN_168 = _T_49 ? 1'h0 : _GEN_144;
  assign _GEN_172 = _T_49 ? 1'h0 : _GEN_148;
  assign _GEN_179 = _T_41 ? _T_48 : _GEN_156;
  assign _GEN_182 = _T_41 ? 1'h0 : _T_49;
  assign _GEN_186 = _T_41 ? 1'h0 : _GEN_159;
  assign _GEN_192 = _T_41 ? 1'h0 : _GEN_165;
  assign _GEN_195 = _T_41 ? 1'h0 : _GEN_168;
  assign _GEN_199 = _T_41 ? 1'h0 : _GEN_172;
  assign io_rdata = _GEN_179;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  _RAND_0 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 4096; initvar = initvar+1)
    regfile[initvar] = _RAND_0[7:0];
  `endif // RANDOMIZE_MEM_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(regfile__T_14_en & regfile__T_14_mask) begin
      regfile[regfile__T_14_addr] <= regfile__T_14_data;
    end
    if(regfile__T_17_en & regfile__T_17_mask) begin
      regfile[regfile__T_17_addr] <= regfile__T_17_data;
    end
    if(regfile__T_22_en & regfile__T_22_mask) begin
      regfile[regfile__T_22_addr] <= regfile__T_22_data;
    end
    if(regfile__T_25_en & regfile__T_25_mask) begin
      regfile[regfile__T_25_addr] <= regfile__T_25_data;
    end
    if(regfile__T_30_en & regfile__T_30_mask) begin
      regfile[regfile__T_30_addr] <= regfile__T_30_data;
    end
    if(regfile__T_35_en & regfile__T_35_mask) begin
      regfile[regfile__T_35_addr] <= regfile__T_35_data;
    end
    if(regfile__T_40_en & regfile__T_40_mask) begin
      regfile[regfile__T_40_addr] <= regfile__T_40_data;
    end
  end
endmodule
*/


module Memory_1(
  input         clock,
  input  [2:0]  io_read_type,
  input  [11:0] io_raddr,
  output [31:0] io_rdata,
  input  [2:0]  io_write_type,
  input  [31:0] io_wdata,
  input  [11:0] io_waddr,
  input         io_wen,
  input         io_valid
);

endmodule

module CSRFile(
  input         clock,
  input         reset,
  input  [2:0]  io_rw_cmd,
  output [31:0] io_rw_rdata,
  input  [31:0] io_rw_wdata,
  output        io_eret,
  input  [11:0] io_decode_csr,
  output        io_status_debug,
  output [1:0]  io_status_prv,
  output        io_status_sd,
  output [7:0]  io_status_zero1,
  output        io_status_tsr,
  output        io_status_tw,
  output        io_status_tvm,
  output        io_status_mxr,
  output        io_status_sum,
  output        io_status_mprv,
  output [1:0]  io_status_xs,
  output [1:0]  io_status_fs,
  output [1:0]  io_status_mpp,
  output [1:0]  io_status_hpp,
  output        io_status_spp,
  output        io_status_mpie,
  output        io_status_hpie,
  output        io_status_spie,
  output        io_status_upie,
  output        io_status_mie,
  output        io_status_hie,
  output        io_status_sie,
  output        io_status_uie,
  output [31:0] io_evec,
  input         io_exception,
  input         io_retire,
  input  [31:0] io_pc
);
  reg [1:0] reg_mstatus_prv;
  reg [31:0] _RAND_0;
  reg  reg_mstatus_mpie;
  reg [31:0] _RAND_1;
  reg  reg_mstatus_mie;
  reg [31:0] _RAND_2;
  reg [31:0] reg_mepc;
  reg [31:0] _RAND_3;
  reg [31:0] reg_mcause;
  reg [31:0] _RAND_4;
  reg [31:0] reg_mtval;
  reg [31:0] _RAND_5;
  reg [31:0] reg_mscratch;
  reg [31:0] _RAND_6;
  reg [31:0] reg_medeleg;
  reg [31:0] _RAND_7;
  reg  reg_mip_mtip;
  reg [31:0] _RAND_8;
  reg  reg_mip_msip;
  reg [31:0] _RAND_9;
  reg  reg_mie_mtip;
  reg [31:0] _RAND_10;
  reg  reg_mie_msip;
  reg [31:0] _RAND_11;
  reg [5:0] _T_174;
  reg [31:0] _RAND_12;
  wire [6:0] _T_175;
  reg [57:0] _T_178;
  reg [63:0] _RAND_13;
  wire  _T_179;
  wire [58:0] _T_181;
  wire [57:0] _T_182;
  wire [57:0] _GEN_0;
  wire [63:0] _T_183;
  reg [5:0] _T_186;
  reg [31:0] _RAND_14;
  wire [5:0] _GEN_153;
  wire [6:0] _T_187;
  reg [57:0] _T_190;
  reg [63:0] _RAND_15;
  wire  _T_191;
  wire [58:0] _T_193;
  wire [57:0] _T_194;
  wire [57:0] _GEN_1;
  wire [63:0] _T_195;
  reg [39:0] _T_198;
  reg [63:0] _RAND_16;
  wire [40:0] _T_199;
  reg [39:0] _T_201;
  reg [63:0] _RAND_17;
  wire [40:0] _T_202;
  reg [39:0] _T_204;
  reg [63:0] _RAND_18;
  wire [40:0] _T_205;
  reg [39:0] _T_207;
  reg [63:0] _RAND_19;
  wire [40:0] _T_208;
  reg [39:0] _T_210;
  reg [63:0] _RAND_20;
  wire [40:0] _T_211;
  reg [39:0] _T_213;
  reg [63:0] _RAND_21;
  wire [40:0] _T_214;
  reg [39:0] _T_216;
  reg [63:0] _RAND_22;
  wire [40:0] _T_217;
  reg [39:0] _T_219;
  reg [63:0] _RAND_23;
  wire [40:0] _T_220;
  reg [39:0] _T_222;
  reg [63:0] _RAND_24;
  wire [40:0] _T_223;
  reg [39:0] _T_225;
  reg [63:0] _RAND_25;
  wire [40:0] _T_226;
  reg [39:0] _T_228;
  reg [63:0] _RAND_26;
  wire [40:0] _T_229;
  reg [39:0] _T_231;
  reg [63:0] _RAND_27;
  wire [40:0] _T_232;
  reg [39:0] _T_234;
  reg [63:0] _RAND_28;
  wire [40:0] _T_235;
  reg [39:0] _T_237;
  reg [63:0] _RAND_29;
  wire [40:0] _T_238;
  reg [39:0] _T_240;
  reg [63:0] _RAND_30;
  wire [40:0] _T_241;
  reg [39:0] _T_243;
  reg [63:0] _RAND_31;
  wire [40:0] _T_244;
  reg [39:0] _T_246;
  reg [63:0] _RAND_32;
  wire [40:0] _T_247;
  reg [39:0] _T_249;
  reg [63:0] _RAND_33;
  wire [40:0] _T_250;
  reg [39:0] _T_252;
  reg [63:0] _RAND_34;
  wire [40:0] _T_253;
  reg [39:0] _T_255;
  reg [63:0] _RAND_35;
  wire [40:0] _T_256;
  reg [39:0] _T_258;
  reg [63:0] _RAND_36;
  wire [40:0] _T_259;
  reg [39:0] _T_261;
  reg [63:0] _RAND_37;
  wire [40:0] _T_262;
  reg [39:0] _T_264;
  reg [63:0] _RAND_38;
  wire [40:0] _T_265;
  reg [39:0] _T_267;
  reg [63:0] _RAND_39;
  wire [40:0] _T_268;
  reg [39:0] _T_270;
  reg [63:0] _RAND_40;
  wire [40:0] _T_271;
  reg [39:0] _T_273;
  reg [63:0] _RAND_41;
  wire [40:0] _T_274;
  reg [39:0] _T_276;
  reg [63:0] _RAND_42;
  wire [40:0] _T_277;
  reg [39:0] _T_279;
  reg [63:0] _RAND_43;
  wire [40:0] _T_280;
  reg [39:0] _T_282;
  reg [63:0] _RAND_44;
  wire [40:0] _T_283;
  reg [39:0] _T_285;
  reg [63:0] _RAND_45;
  wire [40:0] _T_286;
  reg [39:0] _T_288;
  reg [63:0] _RAND_46;
  wire [40:0] _T_289;
  reg [39:0] _T_291;
  reg [63:0] _RAND_47;
  wire [40:0] _T_292;
  wire [1:0] new_prv;
  reg [31:0] reg_dpc;
  reg [31:0] _RAND_48;
  reg [31:0] reg_dscratch;
  reg [31:0] _RAND_49;
  reg  reg_dcsr_ebreakm;
  reg [31:0] _RAND_50;
  reg  reg_dcsr_step;
  reg [31:0] _RAND_51;
  wire  system_insn;
  wire  _T_408;
  wire  _T_410;
  wire  cpu_ren;
  wire [1:0] _T_411;
  wire [1:0] _T_412;
  wire [2:0] _T_413;
  wire [4:0] _T_414;
  wire [1:0] _T_415;
  wire [2:0] _T_416;
  wire [3:0] _T_417;
  wire [4:0] _T_418;
  wire [7:0] _T_419;
  wire [12:0] _T_420;
  wire [2:0] _T_421;
  wire [4:0] _T_422;
  wire [1:0] _T_423;
  wire [2:0] _T_424;
  wire [7:0] _T_425;
  wire [8:0] _T_426;
  wire [9:0] _T_427;
  wire [2:0] _T_428;
  wire [3:0] _T_429;
  wire [13:0] _T_430;
  wire [21:0] _T_431;
  wire [34:0] read_mstatus;
  wire [1:0] _T_439;
  wire [3:0] _T_440;
  wire [1:0] _T_442;
  wire [3:0] _T_443;
  wire [7:0] _T_444;
  wire [15:0] _T_452;
  wire [1:0] _T_454;
  wire [3:0] _T_455;
  wire [1:0] _T_457;
  wire [3:0] _T_458;
  wire [7:0] _T_459;
  wire [15:0] _T_467;
  wire [2:0] _T_468;
  wire [4:0] _T_469;
  wire [10:0] _T_473;
  wire [12:0] _T_477;
  wire [16:0] _T_479;
  wire [20:0] _T_480;
  wire [31:0] _T_481;
  wire  _T_485;
  wire  _T_487;
  wire  _T_489;
  wire  _T_495;
  wire  _T_497;
  wire  _T_499;
  wire  _T_501;
  wire  _T_503;
  wire  _T_505;
  wire  _T_507;
  wire  _T_509;
  wire  _T_511;
  wire  _T_515;
  wire  _T_517;
  wire  _T_519;
  wire  _T_521;
  wire  _T_523;
  wire  _T_525;
  wire  _T_527;
  wire  _T_529;
  wire  _T_531;
  wire  _T_533;
  wire  _T_535;
  wire  _T_537;
  wire  _T_539;
  wire  _T_541;
  wire  _T_543;
  wire  _T_545;
  wire  _T_547;
  wire  _T_549;
  wire  _T_551;
  wire  _T_553;
  wire  _T_555;
  wire  _T_557;
  wire  _T_559;
  wire  _T_561;
  wire  _T_563;
  wire  _T_565;
  wire  _T_567;
  wire  _T_569;
  wire  _T_571;
  wire  _T_573;
  wire  _T_575;
  wire  _T_577;
  wire  _T_579;
  wire  _T_581;
  wire  _T_583;
  wire  _T_585;
  wire  _T_587;
  wire  _T_589;
  wire  _T_591;
  wire  _T_593;
  wire  _T_595;
  wire  _T_597;
  wire  _T_599;
  wire  _T_601;
  wire  _T_603;
  wire  _T_605;
  wire  _T_607;
  wire  _T_609;
  wire  _T_611;
  wire  _T_613;
  wire  _T_615;
  wire  _T_617;
  wire  _T_619;
  wire  _T_621;
  wire  _T_623;
  wire  _T_625;
  wire  _T_627;
  wire  _T_629;
  wire  _T_631;
  wire  _T_633;
  wire  _T_635;
  wire  _T_637;
  wire  _T_639;
  wire  _T_641;
  wire  _T_643;
  wire  _T_645;
  wire  _T_647;
  wire  _T_649;
  wire  _T_651;
  wire  _T_653;
  wire [1:0] _T_654;
  wire  priv_sufficient;
  wire [1:0] _T_655;
  wire [1:0] _T_656;
  wire  read_only;
  wire  _T_658;
  wire  _T_659;
  wire  cpu_wen;
  wire  _T_661;
  wire  wen;
  wire  _T_662;
  wire  _T_663;
  wire  _T_664;
  wire [31:0] _T_666;
  wire [31:0] _T_667;
  wire [31:0] _T_670;
  wire [31:0] _T_671;
  wire [31:0] wdata;
  wire [2:0] _T_673;
  wire [7:0] opcode;
  wire  _T_674;
  wire  insn_call;
  wire  _T_675;
  wire  insn_break;
  wire  _T_676;
  wire  _T_677;
  wire  insn_ret;
  wire  _T_960;
  wire  _T_961;
  wire [31:0] _GEN_2;
  wire [31:0] _GEN_4;
  wire [1:0] _T_964;
  wire  _T_966;
  wire  _T_968;
  wire  _T_970;
  wire  _T_973;
  wire  _T_974;
  wire [1:0] _GEN_6;
  wire [31:0] _GEN_8;
  wire  _T_978;
  wire  _T_979;
  wire  _GEN_9;
  wire  _GEN_10;
  wire [1:0] _GEN_11;
  wire [31:0] _GEN_12;
  wire [3:0] _GEN_154;
  wire [4:0] _T_983;
  wire [3:0] _T_984;
  wire [31:0] _GEN_13;
  wire [31:0] _GEN_14;
  wire [31:0] _GEN_15;
  wire [31:0] _GEN_16;
  wire [63:0] _T_989;
  wire [63:0] _T_991;
  wire [15:0] _T_993;
  wire [8:0] _T_999;
  wire [34:0] _T_1001;
  wire [8:0] _T_1003;
  wire [15:0] _T_1005;
  wire [15:0] _T_1007;
  wire [31:0] _T_1009;
  wire [31:0] _T_1011;
  wire [31:0] _T_1013;
  wire [31:0] _T_1015;
  wire [31:0] _T_1019;
  wire [31:0] _T_1021;
  wire [31:0] _T_1023;
  wire [31:0] _T_1025;
  wire [39:0] _T_1027;
  wire [39:0] _T_1029;
  wire [39:0] _T_1031;
  wire [39:0] _T_1033;
  wire [39:0] _T_1035;
  wire [39:0] _T_1037;
  wire [39:0] _T_1039;
  wire [39:0] _T_1041;
  wire [39:0] _T_1043;
  wire [39:0] _T_1045;
  wire [39:0] _T_1047;
  wire [39:0] _T_1049;
  wire [39:0] _T_1051;
  wire [39:0] _T_1053;
  wire [39:0] _T_1055;
  wire [39:0] _T_1057;
  wire [39:0] _T_1059;
  wire [39:0] _T_1061;
  wire [39:0] _T_1063;
  wire [39:0] _T_1065;
  wire [39:0] _T_1067;
  wire [39:0] _T_1069;
  wire [39:0] _T_1071;
  wire [39:0] _T_1073;
  wire [39:0] _T_1075;
  wire [39:0] _T_1077;
  wire [39:0] _T_1079;
  wire [39:0] _T_1081;
  wire [39:0] _T_1083;
  wire [39:0] _T_1085;
  wire [39:0] _T_1087;
  wire [39:0] _T_1089;
  wire [39:0] _T_1091;
  wire [39:0] _T_1093;
  wire [39:0] _T_1095;
  wire [39:0] _T_1097;
  wire [39:0] _T_1099;
  wire [39:0] _T_1101;
  wire [39:0] _T_1103;
  wire [39:0] _T_1105;
  wire [39:0] _T_1107;
  wire [39:0] _T_1109;
  wire [39:0] _T_1111;
  wire [39:0] _T_1113;
  wire [39:0] _T_1115;
  wire [39:0] _T_1117;
  wire [39:0] _T_1119;
  wire [39:0] _T_1121;
  wire [39:0] _T_1123;
  wire [39:0] _T_1125;
  wire [39:0] _T_1127;
  wire [39:0] _T_1129;
  wire [39:0] _T_1131;
  wire [39:0] _T_1133;
  wire [39:0] _T_1135;
  wire [39:0] _T_1137;
  wire [39:0] _T_1139;
  wire [39:0] _T_1141;
  wire [39:0] _T_1143;
  wire [39:0] _T_1145;
  wire [39:0] _T_1147;
  wire [39:0] _T_1149;
  wire [39:0] _T_1151;
  wire [39:0] _T_1153;
  wire [63:0] _T_1158;
  wire [63:0] _GEN_155;
  wire [63:0] _T_1159;
  wire [63:0] _GEN_156;
  wire [63:0] _T_1162;
  wire [63:0] _GEN_157;
  wire [63:0] _T_1163;
  wire [63:0] _GEN_158;
  wire [63:0] _T_1164;
  wire [63:0] _GEN_159;
  wire [63:0] _T_1165;
  wire [63:0] _GEN_160;
  wire [63:0] _T_1166;
  wire [63:0] _GEN_161;
  wire [63:0] _T_1167;
  wire [63:0] _GEN_162;
  wire [63:0] _T_1168;
  wire [63:0] _GEN_163;
  wire [63:0] _T_1169;
  wire [63:0] _GEN_164;
  wire [63:0] _T_1170;
  wire [63:0] _GEN_165;
  wire [63:0] _T_1172;
  wire [63:0] _GEN_166;
  wire [63:0] _T_1173;
  wire [63:0] _GEN_167;
  wire [63:0] _T_1174;
  wire [63:0] _GEN_168;
  wire [63:0] _T_1175;
  wire [63:0] _GEN_169;
  wire [63:0] _T_1176;
  wire [63:0] _GEN_170;
  wire [63:0] _T_1177;
  wire [63:0] _GEN_171;
  wire [63:0] _T_1178;
  wire [63:0] _GEN_172;
  wire [63:0] _T_1179;
  wire [63:0] _GEN_173;
  wire [63:0] _T_1180;
  wire [63:0] _GEN_174;
  wire [63:0] _T_1181;
  wire [63:0] _GEN_175;
  wire [63:0] _T_1182;
  wire [63:0] _GEN_176;
  wire [63:0] _T_1183;
  wire [63:0] _GEN_177;
  wire [63:0] _T_1184;
  wire [63:0] _GEN_178;
  wire [63:0] _T_1185;
  wire [63:0] _GEN_179;
  wire [63:0] _T_1186;
  wire [63:0] _GEN_180;
  wire [63:0] _T_1187;
  wire [63:0] _GEN_181;
  wire [63:0] _T_1188;
  wire [63:0] _GEN_182;
  wire [63:0] _T_1189;
  wire [63:0] _GEN_183;
  wire [63:0] _T_1190;
  wire [63:0] _GEN_184;
  wire [63:0] _T_1191;
  wire [63:0] _GEN_185;
  wire [63:0] _T_1192;
  wire [63:0] _GEN_186;
  wire [63:0] _T_1193;
  wire [63:0] _GEN_187;
  wire [63:0] _T_1194;
  wire [63:0] _GEN_188;
  wire [63:0] _T_1195;
  wire [63:0] _GEN_189;
  wire [63:0] _T_1196;
  wire [63:0] _GEN_190;
  wire [63:0] _T_1197;
  wire [63:0] _GEN_191;
  wire [63:0] _T_1198;
  wire [63:0] _GEN_192;
  wire [63:0] _T_1199;
  wire [63:0] _GEN_193;
  wire [63:0] _T_1200;
  wire [63:0] _GEN_194;
  wire [63:0] _T_1201;
  wire [63:0] _GEN_195;
  wire [63:0] _T_1202;
  wire [63:0] _GEN_196;
  wire [63:0] _T_1203;
  wire [63:0] _GEN_197;
  wire [63:0] _T_1204;
  wire [63:0] _GEN_198;
  wire [63:0] _T_1205;
  wire [63:0] _GEN_199;
  wire [63:0] _T_1206;
  wire [63:0] _GEN_200;
  wire [63:0] _T_1207;
  wire [63:0] _GEN_201;
  wire [63:0] _T_1208;
  wire [63:0] _GEN_202;
  wire [63:0] _T_1209;
  wire [63:0] _GEN_203;
  wire [63:0] _T_1210;
  wire [63:0] _GEN_204;
  wire [63:0] _T_1211;
  wire [63:0] _GEN_205;
  wire [63:0] _T_1212;
  wire [63:0] _GEN_206;
  wire [63:0] _T_1213;
  wire [63:0] _GEN_207;
  wire [63:0] _T_1214;
  wire [63:0] _GEN_208;
  wire [63:0] _T_1215;
  wire [63:0] _GEN_209;
  wire [63:0] _T_1216;
  wire [63:0] _GEN_210;
  wire [63:0] _T_1217;
  wire [63:0] _GEN_211;
  wire [63:0] _T_1218;
  wire [63:0] _GEN_212;
  wire [63:0] _T_1219;
  wire [63:0] _GEN_213;
  wire [63:0] _T_1220;
  wire [63:0] _GEN_214;
  wire [63:0] _T_1221;
  wire [63:0] _GEN_215;
  wire [63:0] _T_1222;
  wire [63:0] _GEN_216;
  wire [63:0] _T_1223;
  wire [63:0] _GEN_217;
  wire [63:0] _T_1224;
  wire [63:0] _GEN_218;
  wire [63:0] _T_1225;
  wire [63:0] _GEN_219;
  wire [63:0] _T_1226;
  wire [63:0] _GEN_220;
  wire [63:0] _T_1227;
  wire [63:0] _GEN_221;
  wire [63:0] _T_1228;
  wire [63:0] _GEN_222;
  wire [63:0] _T_1229;
  wire [63:0] _GEN_223;
  wire [63:0] _T_1230;
  wire [63:0] _GEN_224;
  wire [63:0] _T_1231;
  wire [63:0] _GEN_225;
  wire [63:0] _T_1232;
  wire [63:0] _GEN_226;
  wire [63:0] _T_1233;
  wire [63:0] _GEN_227;
  wire [63:0] _T_1234;
  wire [63:0] _GEN_228;
  wire [63:0] _T_1235;
  wire [63:0] _GEN_229;
  wire [63:0] _T_1236;
  wire [63:0] _GEN_230;
  wire [63:0] _T_1237;
  wire [63:0] _GEN_231;
  wire [63:0] _T_1238;
  wire [63:0] _GEN_232;
  wire [63:0] _T_1239;
  wire [63:0] _T_1243;
  wire  _T_1246_ebreakm;
  wire  _T_1246_step;
  wire [31:0] _T_1248;
  wire  _T_1250;
  wire  _T_1260;
  wire  _GEN_17;
  wire  _GEN_18;
  wire  _T_1266_mpie;
  wire  _T_1266_mie;
  wire [34:0] _T_1268;
  wire  _T_1272;
  wire  _T_1276;
  wire  _GEN_19;
  wire  _GEN_20;
  wire  _T_1294_msip;
  wire [15:0] _T_1296;
  wire  _T_1300;
  wire  _GEN_21;
  wire  _T_1315_mtip;
  wire  _T_1315_msip;
  wire [15:0] _T_1317;
  wire  _T_1321;
  wire  _T_1325;
  wire  _GEN_22;
  wire  _GEN_23;
  wire [7:0] _T_1334;
  wire [31:0] _T_1335;
  wire [39:0] _T_1336;
  wire [40:0] _GEN_24;
  wire [7:0] _T_1337;
  wire [39:0] _T_1338;
  wire [40:0] _GEN_25;
  wire [31:0] _T_1340;
  wire [39:0] _T_1341;
  wire [40:0] _GEN_26;
  wire [7:0] _T_1342;
  wire [39:0] _T_1343;
  wire [40:0] _GEN_27;
  wire [31:0] _T_1345;
  wire [39:0] _T_1346;
  wire [40:0] _GEN_28;
  wire [7:0] _T_1347;
  wire [39:0] _T_1348;
  wire [40:0] _GEN_29;
  wire [31:0] _T_1350;
  wire [39:0] _T_1351;
  wire [40:0] _GEN_30;
  wire [7:0] _T_1352;
  wire [39:0] _T_1353;
  wire [40:0] _GEN_31;
  wire [31:0] _T_1355;
  wire [39:0] _T_1356;
  wire [40:0] _GEN_32;
  wire [7:0] _T_1357;
  wire [39:0] _T_1358;
  wire [40:0] _GEN_33;
  wire [31:0] _T_1360;
  wire [39:0] _T_1361;
  wire [40:0] _GEN_34;
  wire [7:0] _T_1362;
  wire [39:0] _T_1363;
  wire [40:0] _GEN_35;
  wire [31:0] _T_1365;
  wire [39:0] _T_1366;
  wire [40:0] _GEN_36;
  wire [7:0] _T_1367;
  wire [39:0] _T_1368;
  wire [40:0] _GEN_37;
  wire [31:0] _T_1370;
  wire [39:0] _T_1371;
  wire [40:0] _GEN_38;
  wire [7:0] _T_1372;
  wire [39:0] _T_1373;
  wire [40:0] _GEN_39;
  wire [31:0] _T_1375;
  wire [39:0] _T_1376;
  wire [40:0] _GEN_40;
  wire [7:0] _T_1377;
  wire [39:0] _T_1378;
  wire [40:0] _GEN_41;
  wire [31:0] _T_1380;
  wire [39:0] _T_1381;
  wire [40:0] _GEN_42;
  wire [7:0] _T_1382;
  wire [39:0] _T_1383;
  wire [40:0] _GEN_43;
  wire [31:0] _T_1385;
  wire [39:0] _T_1386;
  wire [40:0] _GEN_44;
  wire [7:0] _T_1387;
  wire [39:0] _T_1388;
  wire [40:0] _GEN_45;
  wire [31:0] _T_1390;
  wire [39:0] _T_1391;
  wire [40:0] _GEN_46;
  wire [7:0] _T_1392;
  wire [39:0] _T_1393;
  wire [40:0] _GEN_47;
  wire [31:0] _T_1395;
  wire [39:0] _T_1396;
  wire [40:0] _GEN_48;
  wire [7:0] _T_1397;
  wire [39:0] _T_1398;
  wire [40:0] _GEN_49;
  wire [31:0] _T_1400;
  wire [39:0] _T_1401;
  wire [40:0] _GEN_50;
  wire [7:0] _T_1402;
  wire [39:0] _T_1403;
  wire [40:0] _GEN_51;
  wire [31:0] _T_1405;
  wire [39:0] _T_1406;
  wire [40:0] _GEN_52;
  wire [7:0] _T_1407;
  wire [39:0] _T_1408;
  wire [40:0] _GEN_53;
  wire [31:0] _T_1410;
  wire [39:0] _T_1411;
  wire [40:0] _GEN_54;
  wire [7:0] _T_1412;
  wire [39:0] _T_1413;
  wire [40:0] _GEN_55;
  wire [31:0] _T_1415;
  wire [39:0] _T_1416;
  wire [40:0] _GEN_56;
  wire [7:0] _T_1417;
  wire [39:0] _T_1418;
  wire [40:0] _GEN_57;
  wire [31:0] _T_1420;
  wire [39:0] _T_1421;
  wire [40:0] _GEN_58;
  wire [7:0] _T_1422;
  wire [39:0] _T_1423;
  wire [40:0] _GEN_59;
  wire [31:0] _T_1425;
  wire [39:0] _T_1426;
  wire [40:0] _GEN_60;
  wire [7:0] _T_1427;
  wire [39:0] _T_1428;
  wire [40:0] _GEN_61;
  wire [31:0] _T_1430;
  wire [39:0] _T_1431;
  wire [40:0] _GEN_62;
  wire [7:0] _T_1432;
  wire [39:0] _T_1433;
  wire [40:0] _GEN_63;
  wire [31:0] _T_1435;
  wire [39:0] _T_1436;
  wire [40:0] _GEN_64;
  wire [7:0] _T_1437;
  wire [39:0] _T_1438;
  wire [40:0] _GEN_65;
  wire [31:0] _T_1440;
  wire [39:0] _T_1441;
  wire [40:0] _GEN_66;
  wire [7:0] _T_1442;
  wire [39:0] _T_1443;
  wire [40:0] _GEN_67;
  wire [31:0] _T_1445;
  wire [39:0] _T_1446;
  wire [40:0] _GEN_68;
  wire [7:0] _T_1447;
  wire [39:0] _T_1448;
  wire [40:0] _GEN_69;
  wire [31:0] _T_1450;
  wire [39:0] _T_1451;
  wire [40:0] _GEN_70;
  wire [7:0] _T_1452;
  wire [39:0] _T_1453;
  wire [40:0] _GEN_71;
  wire [31:0] _T_1455;
  wire [39:0] _T_1456;
  wire [40:0] _GEN_72;
  wire [7:0] _T_1457;
  wire [39:0] _T_1458;
  wire [40:0] _GEN_73;
  wire [31:0] _T_1460;
  wire [39:0] _T_1461;
  wire [40:0] _GEN_74;
  wire [7:0] _T_1462;
  wire [39:0] _T_1463;
  wire [40:0] _GEN_75;
  wire [31:0] _T_1465;
  wire [39:0] _T_1466;
  wire [40:0] _GEN_76;
  wire [7:0] _T_1467;
  wire [39:0] _T_1468;
  wire [40:0] _GEN_77;
  wire [31:0] _T_1470;
  wire [39:0] _T_1471;
  wire [40:0] _GEN_78;
  wire [7:0] _T_1472;
  wire [39:0] _T_1473;
  wire [40:0] _GEN_79;
  wire [31:0] _T_1475;
  wire [39:0] _T_1476;
  wire [40:0] _GEN_80;
  wire [7:0] _T_1477;
  wire [39:0] _T_1478;
  wire [40:0] _GEN_81;
  wire [31:0] _T_1480;
  wire [39:0] _T_1481;
  wire [40:0] _GEN_82;
  wire [7:0] _T_1482;
  wire [39:0] _T_1483;
  wire [40:0] _GEN_83;
  wire [31:0] _T_1485;
  wire [39:0] _T_1486;
  wire [40:0] _GEN_84;
  wire [7:0] _T_1487;
  wire [39:0] _T_1488;
  wire [40:0] _GEN_85;
  wire [31:0] _T_1490;
  wire [39:0] _T_1491;
  wire [40:0] _GEN_86;
  wire [7:0] _T_1492;
  wire [39:0] _T_1493;
  wire [40:0] _GEN_87;
  wire [31:0] _T_1495;
  wire [63:0] _T_1496;
  wire [57:0] _T_1497;
  wire [63:0] _GEN_88;
  wire [57:0] _GEN_89;
  wire [31:0] _T_1498;
  wire [63:0] _T_1499;
  wire [57:0] _T_1500;
  wire [63:0] _GEN_90;
  wire [57:0] _GEN_91;
  wire [31:0] _T_1502;
  wire [63:0] _T_1503;
  wire [57:0] _T_1504;
  wire [63:0] _GEN_92;
  wire [57:0] _GEN_93;
  wire [31:0] _T_1505;
  wire [63:0] _T_1506;
  wire [57:0] _T_1507;
  wire [63:0] _GEN_94;
  wire [57:0] _GEN_95;
  wire [31:0] _GEN_96;
  wire [31:0] _GEN_97;
  wire [31:0] _T_1510;
  wire [34:0] _GEN_233;
  wire [34:0] _T_1512;
  wire [34:0] _GEN_98;
  wire [31:0] _GEN_99;
  wire [31:0] _T_1514;
  wire [31:0] _GEN_100;
  wire [31:0] _GEN_101;
  wire [31:0] _GEN_102;
  wire  _GEN_103;
  wire  _GEN_104;
  wire  _GEN_105;
  wire  _GEN_106;
  wire  _GEN_107;
  wire  _GEN_108;
  wire  _GEN_109;
  wire [40:0] _GEN_110;
  wire [40:0] _GEN_111;
  wire [40:0] _GEN_112;
  wire [40:0] _GEN_113;
  wire [40:0] _GEN_114;
  wire [40:0] _GEN_115;
  wire [40:0] _GEN_116;
  wire [40:0] _GEN_117;
  wire [40:0] _GEN_118;
  wire [40:0] _GEN_119;
  wire [40:0] _GEN_120;
  wire [40:0] _GEN_121;
  wire [40:0] _GEN_122;
  wire [40:0] _GEN_123;
  wire [40:0] _GEN_124;
  wire [40:0] _GEN_125;
  wire [40:0] _GEN_126;
  wire [40:0] _GEN_127;
  wire [40:0] _GEN_128;
  wire [40:0] _GEN_129;
  wire [40:0] _GEN_130;
  wire [40:0] _GEN_131;
  wire [40:0] _GEN_132;
  wire [40:0] _GEN_133;
  wire [40:0] _GEN_134;
  wire [40:0] _GEN_135;
  wire [40:0] _GEN_136;
  wire [40:0] _GEN_137;
  wire [40:0] _GEN_138;
  wire [40:0] _GEN_139;
  wire [40:0] _GEN_140;
  wire [40:0] _GEN_141;
  wire [63:0] _GEN_142;
  wire [57:0] _GEN_143;
  wire [63:0] _GEN_144;
  wire [57:0] _GEN_145;
  wire [31:0] _GEN_146;
  wire [31:0] _GEN_147;
  wire [34:0] _GEN_148;
  wire [31:0] _GEN_149;
  wire [31:0] _GEN_150;
  wire [31:0] _GEN_151;
  wire [31:0] _GEN_152;
  assign _T_175 = _T_174 + 6'h1;
  assign _T_179 = _T_175[6];
  assign _T_181 = _T_178 + 58'h1;
  assign _T_182 = _T_181[57:0];
  assign _GEN_0 = _T_179 ? _T_182 : _T_178;
  assign _T_183 = {_T_178,_T_174};
  assign _GEN_153 = {{5'd0}, io_retire};
  assign _T_187 = _T_186 + _GEN_153;
  assign _T_191 = _T_187[6];
  assign _T_193 = _T_190 + 58'h1;
  assign _T_194 = _T_193[57:0];
  assign _GEN_1 = _T_191 ? _T_194 : _T_190;
  assign _T_195 = {_T_190,_T_186};
  assign _T_199 = _T_198 + 40'h0;
  assign _T_202 = _T_201 + 40'h0;
  assign _T_205 = _T_204 + 40'h0;
  assign _T_208 = _T_207 + 40'h0;
  assign _T_211 = _T_210 + 40'h0;
  assign _T_214 = _T_213 + 40'h0;
  assign _T_217 = _T_216 + 40'h0;
  assign _T_220 = _T_219 + 40'h0;
  assign _T_223 = _T_222 + 40'h0;
  assign _T_226 = _T_225 + 40'h0;
  assign _T_229 = _T_228 + 40'h0;
  assign _T_232 = _T_231 + 40'h0;
  assign _T_235 = _T_234 + 40'h0;
  assign _T_238 = _T_237 + 40'h0;
  assign _T_241 = _T_240 + 40'h0;
  assign _T_244 = _T_243 + 40'h0;
  assign _T_247 = _T_246 + 40'h0;
  assign _T_250 = _T_249 + 40'h0;
  assign _T_253 = _T_252 + 40'h0;
  assign _T_256 = _T_255 + 40'h0;
  assign _T_259 = _T_258 + 40'h0;
  assign _T_262 = _T_261 + 40'h0;
  assign _T_265 = _T_264 + 40'h0;
  assign _T_268 = _T_267 + 40'h0;
  assign _T_271 = _T_270 + 40'h0;
  assign _T_274 = _T_273 + 40'h0;
  assign _T_277 = _T_276 + 40'h0;
  assign _T_280 = _T_279 + 40'h0;
  assign _T_283 = _T_282 + 40'h0;
  assign _T_286 = _T_285 + 40'h0;
  assign _T_289 = _T_288 + 40'h0;
  assign _T_292 = _T_291 + 40'h0;
  assign system_insn = io_rw_cmd == 3'h4;
  assign _T_408 = io_rw_cmd != 3'h0;
  assign _T_410 = system_insn == 1'h0;
  assign cpu_ren = _T_408 & _T_410;
  assign _T_411 = {io_status_sie,io_status_uie};
  assign _T_412 = {io_status_upie,io_status_mie};
  assign _T_413 = {_T_412,io_status_hie};
  assign _T_414 = {_T_413,_T_411};
  assign _T_415 = {io_status_mpie,io_status_hpie};
  assign _T_416 = {_T_415,io_status_spie};
  assign _T_417 = {io_status_mpp,io_status_hpp};
  assign _T_418 = {_T_417,io_status_spp};
  assign _T_419 = {_T_418,_T_416};
  assign _T_420 = {_T_419,_T_414};
  assign _T_421 = {io_status_mprv,io_status_xs};
  assign _T_422 = {_T_421,io_status_fs};
  assign _T_423 = {io_status_tvm,io_status_mxr};
  assign _T_424 = {_T_423,io_status_sum};
  assign _T_425 = {_T_424,_T_422};
  assign _T_426 = {io_status_zero1,io_status_tsr};
  assign _T_427 = {_T_426,io_status_tw};
  assign _T_428 = {io_status_debug,io_status_prv};
  assign _T_429 = {_T_428,io_status_sd};
  assign _T_430 = {_T_429,_T_427};
  assign _T_431 = {_T_430,_T_425};
  assign read_mstatus = {_T_431,_T_420};
  assign _T_439 = {reg_mip_msip,1'h0};
  assign _T_440 = {_T_439,2'h0};
  assign _T_442 = {reg_mip_mtip,1'h0};
  assign _T_443 = {_T_442,2'h0};
  assign _T_444 = {_T_443,_T_440};
  assign _T_452 = {8'h0,_T_444};
  assign _T_454 = {reg_mie_msip,1'h0};
  assign _T_455 = {_T_454,2'h0};
  assign _T_457 = {reg_mie_mtip,1'h0};
  assign _T_458 = {_T_457,2'h0};
  assign _T_459 = {_T_458,_T_455};
  assign _T_467 = {8'h0,_T_459};
  assign _T_468 = {2'h0,reg_dcsr_step};
  assign _T_469 = {_T_468,2'h3};
  assign _T_473 = {6'h0,_T_469};
  assign _T_477 = {12'h0,reg_dcsr_ebreakm};
  assign _T_479 = {4'h4,_T_477};
  assign _T_480 = {_T_479,4'h0};
  assign _T_481 = {_T_480,_T_473};
  assign _T_485 = io_decode_csr == 12'hb00;
  assign _T_487 = io_decode_csr == 12'hb02;
  assign _T_489 = io_decode_csr == 12'hf13;
  assign _T_495 = io_decode_csr == 12'h301;
  assign _T_497 = io_decode_csr == 12'h300;
  assign _T_499 = io_decode_csr == 12'h305;
  assign _T_501 = io_decode_csr == 12'h344;
  assign _T_503 = io_decode_csr == 12'h304;
  assign _T_505 = io_decode_csr == 12'h340;
  assign _T_507 = io_decode_csr == 12'h341;
  assign _T_509 = io_decode_csr == 12'h343;
  assign _T_511 = io_decode_csr == 12'h342;
  assign _T_515 = io_decode_csr == 12'h7b0;
  assign _T_517 = io_decode_csr == 12'h7b1;
  assign _T_519 = io_decode_csr == 12'h7b2;
  assign _T_521 = io_decode_csr == 12'h302;
  assign _T_523 = io_decode_csr == 12'hb03;
  assign _T_525 = io_decode_csr == 12'hb83;
  assign _T_527 = io_decode_csr == 12'hb04;
  assign _T_529 = io_decode_csr == 12'hb84;
  assign _T_531 = io_decode_csr == 12'hb05;
  assign _T_533 = io_decode_csr == 12'hb85;
  assign _T_535 = io_decode_csr == 12'hb06;
  assign _T_537 = io_decode_csr == 12'hb86;
  assign _T_539 = io_decode_csr == 12'hb07;
  assign _T_541 = io_decode_csr == 12'hb87;
  assign _T_543 = io_decode_csr == 12'hb08;
  assign _T_545 = io_decode_csr == 12'hb88;
  assign _T_547 = io_decode_csr == 12'hb09;
  assign _T_549 = io_decode_csr == 12'hb89;
  assign _T_551 = io_decode_csr == 12'hb0a;
  assign _T_553 = io_decode_csr == 12'hb8a;
  assign _T_555 = io_decode_csr == 12'hb0b;
  assign _T_557 = io_decode_csr == 12'hb8b;
  assign _T_559 = io_decode_csr == 12'hb0c;
  assign _T_561 = io_decode_csr == 12'hb8c;
  assign _T_563 = io_decode_csr == 12'hb0d;
  assign _T_565 = io_decode_csr == 12'hb8d;
  assign _T_567 = io_decode_csr == 12'hb0e;
  assign _T_569 = io_decode_csr == 12'hb8e;
  assign _T_571 = io_decode_csr == 12'hb0f;
  assign _T_573 = io_decode_csr == 12'hb8f;
  assign _T_575 = io_decode_csr == 12'hb10;
  assign _T_577 = io_decode_csr == 12'hb90;
  assign _T_579 = io_decode_csr == 12'hb11;
  assign _T_581 = io_decode_csr == 12'hb91;
  assign _T_583 = io_decode_csr == 12'hb12;
  assign _T_585 = io_decode_csr == 12'hb92;
  assign _T_587 = io_decode_csr == 12'hb13;
  assign _T_589 = io_decode_csr == 12'hb93;
  assign _T_591 = io_decode_csr == 12'hb14;
  assign _T_593 = io_decode_csr == 12'hb94;
  assign _T_595 = io_decode_csr == 12'hb15;
  assign _T_597 = io_decode_csr == 12'hb95;
  assign _T_599 = io_decode_csr == 12'hb16;
  assign _T_601 = io_decode_csr == 12'hb96;
  assign _T_603 = io_decode_csr == 12'hb17;
  assign _T_605 = io_decode_csr == 12'hb97;
  assign _T_607 = io_decode_csr == 12'hb18;
  assign _T_609 = io_decode_csr == 12'hb98;
  assign _T_611 = io_decode_csr == 12'hb19;
  assign _T_613 = io_decode_csr == 12'hb99;
  assign _T_615 = io_decode_csr == 12'hb1a;
  assign _T_617 = io_decode_csr == 12'hb9a;
  assign _T_619 = io_decode_csr == 12'hb1b;
  assign _T_621 = io_decode_csr == 12'hb9b;
  assign _T_623 = io_decode_csr == 12'hb1c;
  assign _T_625 = io_decode_csr == 12'hb9c;
  assign _T_627 = io_decode_csr == 12'hb1d;
  assign _T_629 = io_decode_csr == 12'hb9d;
  assign _T_631 = io_decode_csr == 12'hb1e;
  assign _T_633 = io_decode_csr == 12'hb9e;
  assign _T_635 = io_decode_csr == 12'hb1f;
  assign _T_637 = io_decode_csr == 12'hb9f;
  assign _T_639 = io_decode_csr == 12'hb20;
  assign _T_641 = io_decode_csr == 12'hba0;
  assign _T_643 = io_decode_csr == 12'hb21;
  assign _T_645 = io_decode_csr == 12'hba1;
  assign _T_647 = io_decode_csr == 12'hb22;
  assign _T_649 = io_decode_csr == 12'hba2;
  assign _T_651 = io_decode_csr == 12'hb80;
  assign _T_653 = io_decode_csr == 12'hb82;
  assign _T_654 = io_decode_csr[9:8];
  assign priv_sufficient = reg_mstatus_prv >= _T_654;
  assign _T_655 = io_decode_csr[11:10];
  assign _T_656 = ~ _T_655;
  assign read_only = _T_656 == 2'h0;
  assign _T_658 = io_rw_cmd != 3'h5;
  assign _T_659 = cpu_ren & _T_658;
  assign cpu_wen = _T_659 & priv_sufficient;
  assign _T_661 = read_only == 1'h0;
  assign wen = cpu_wen & _T_661;
  assign _T_662 = io_rw_cmd == 3'h2;
  assign _T_663 = io_rw_cmd == 3'h3;
  assign _T_664 = _T_662 | _T_663;
  assign _T_666 = _T_664 ? io_rw_rdata : 32'h0;
  assign _T_667 = _T_666 | io_rw_wdata;
  assign _T_670 = _T_663 ? io_rw_wdata : 32'h0;
  assign _T_671 = ~ _T_670;
  assign wdata = _T_667 & _T_671;
  assign _T_673 = io_decode_csr[2:0];
  assign opcode = 8'h1 << _T_673;
  assign _T_674 = opcode[0];
  assign insn_call = system_insn & _T_674;
  assign _T_675 = opcode[1];
  assign insn_break = system_insn & _T_675;
  assign _T_676 = opcode[2];
  assign _T_677 = system_insn & _T_676;
  assign insn_ret = _T_677 & priv_sufficient;
  assign _T_960 = insn_call | insn_break;
  assign _T_961 = _T_960 | insn_ret;
  assign _GEN_2 = io_exception ? 32'h2 : reg_mcause;
  assign _GEN_4 = io_exception ? io_pc : reg_mepc;
  assign _T_964 = insn_ret + io_exception;
  assign _T_966 = _T_964 <= 2'h1;
  assign _T_968 = _T_966 | reset;
  assign _T_970 = _T_968 == 1'h0;
  assign _T_973 = io_decode_csr[10];
  assign _T_974 = insn_ret & _T_973;
  assign _GEN_6 = _T_974 ? 2'h3 : reg_mstatus_prv;
  assign _GEN_8 = _T_974 ? reg_dpc : 32'h80000004;
  assign _T_978 = _T_973 == 1'h0;
  assign _T_979 = insn_ret & _T_978;
  assign _GEN_9 = _T_979 ? reg_mstatus_mpie : reg_mstatus_mie;
  assign _GEN_10 = _T_979 ? 1'h1 : reg_mstatus_mpie;
  assign _GEN_11 = _T_979 ? 2'h3 : _GEN_6;
  assign _GEN_12 = _T_979 ? reg_mepc : _GEN_8;
  assign _GEN_154 = {{2'd0}, reg_mstatus_prv};
  assign _T_983 = _GEN_154 + 4'h8;
  assign _T_984 = _T_983[3:0];
  assign _GEN_13 = insn_call ? 32'h80000004 : _GEN_12;
  assign _GEN_14 = insn_call ? {{28'd0}, _T_984} : _GEN_2;
  assign _GEN_15 = insn_break ? 32'h80000004 : _GEN_13;
  assign _GEN_16 = insn_break ? 32'h3 : _GEN_14;
  assign _T_989 = _T_485 ? _T_183 : 64'h0;
  assign _T_991 = _T_487 ? _T_195 : 64'h0;
  assign _T_993 = _T_489 ? 16'h8000 : 16'h0;
  assign _T_999 = _T_495 ? 9'h100 : 9'h0;
  assign _T_1001 = _T_497 ? read_mstatus : 35'h0;
  assign _T_1003 = _T_499 ? 9'h100 : 9'h0;
  assign _T_1005 = _T_501 ? _T_452 : 16'h0;
  assign _T_1007 = _T_503 ? _T_467 : 16'h0;
  assign _T_1009 = _T_505 ? reg_mscratch : 32'h0;
  assign _T_1011 = _T_507 ? reg_mepc : 32'h0;
  assign _T_1013 = _T_509 ? reg_mtval : 32'h0;
  assign _T_1015 = _T_511 ? reg_mcause : 32'h0;
  assign _T_1019 = _T_515 ? _T_481 : 32'h0;
  assign _T_1021 = _T_517 ? reg_dpc : 32'h0;
  assign _T_1023 = _T_519 ? reg_dscratch : 32'h0;
  assign _T_1025 = _T_521 ? reg_medeleg : 32'h0;
  assign _T_1027 = _T_523 ? _T_198 : 40'h0;
  assign _T_1029 = _T_525 ? _T_198 : 40'h0;
  assign _T_1031 = _T_527 ? _T_201 : 40'h0;
  assign _T_1033 = _T_529 ? _T_201 : 40'h0;
  assign _T_1035 = _T_531 ? _T_204 : 40'h0;
  assign _T_1037 = _T_533 ? _T_204 : 40'h0;
  assign _T_1039 = _T_535 ? _T_207 : 40'h0;
  assign _T_1041 = _T_537 ? _T_207 : 40'h0;
  assign _T_1043 = _T_539 ? _T_210 : 40'h0;
  assign _T_1045 = _T_541 ? _T_210 : 40'h0;
  assign _T_1047 = _T_543 ? _T_213 : 40'h0;
  assign _T_1049 = _T_545 ? _T_213 : 40'h0;
  assign _T_1051 = _T_547 ? _T_216 : 40'h0;
  assign _T_1053 = _T_549 ? _T_216 : 40'h0;
  assign _T_1055 = _T_551 ? _T_219 : 40'h0;
  assign _T_1057 = _T_553 ? _T_219 : 40'h0;
  assign _T_1059 = _T_555 ? _T_222 : 40'h0;
  assign _T_1061 = _T_557 ? _T_222 : 40'h0;
  assign _T_1063 = _T_559 ? _T_225 : 40'h0;
  assign _T_1065 = _T_561 ? _T_225 : 40'h0;
  assign _T_1067 = _T_563 ? _T_228 : 40'h0;
  assign _T_1069 = _T_565 ? _T_228 : 40'h0;
  assign _T_1071 = _T_567 ? _T_231 : 40'h0;
  assign _T_1073 = _T_569 ? _T_231 : 40'h0;
  assign _T_1075 = _T_571 ? _T_234 : 40'h0;
  assign _T_1077 = _T_573 ? _T_234 : 40'h0;
  assign _T_1079 = _T_575 ? _T_237 : 40'h0;
  assign _T_1081 = _T_577 ? _T_237 : 40'h0;
  assign _T_1083 = _T_579 ? _T_240 : 40'h0;
  assign _T_1085 = _T_581 ? _T_240 : 40'h0;
  assign _T_1087 = _T_583 ? _T_243 : 40'h0;
  assign _T_1089 = _T_585 ? _T_243 : 40'h0;
  assign _T_1091 = _T_587 ? _T_246 : 40'h0;
  assign _T_1093 = _T_589 ? _T_246 : 40'h0;
  assign _T_1095 = _T_591 ? _T_249 : 40'h0;
  assign _T_1097 = _T_593 ? _T_249 : 40'h0;
  assign _T_1099 = _T_595 ? _T_252 : 40'h0;
  assign _T_1101 = _T_597 ? _T_252 : 40'h0;
  assign _T_1103 = _T_599 ? _T_255 : 40'h0;
  assign _T_1105 = _T_601 ? _T_255 : 40'h0;
  assign _T_1107 = _T_603 ? _T_258 : 40'h0;
  assign _T_1109 = _T_605 ? _T_258 : 40'h0;
  assign _T_1111 = _T_607 ? _T_261 : 40'h0;
  assign _T_1113 = _T_609 ? _T_261 : 40'h0;
  assign _T_1115 = _T_611 ? _T_264 : 40'h0;
  assign _T_1117 = _T_613 ? _T_264 : 40'h0;
  assign _T_1119 = _T_615 ? _T_267 : 40'h0;
  assign _T_1121 = _T_617 ? _T_267 : 40'h0;
  assign _T_1123 = _T_619 ? _T_270 : 40'h0;
  assign _T_1125 = _T_621 ? _T_270 : 40'h0;
  assign _T_1127 = _T_623 ? _T_273 : 40'h0;
  assign _T_1129 = _T_625 ? _T_273 : 40'h0;
  assign _T_1131 = _T_627 ? _T_276 : 40'h0;
  assign _T_1133 = _T_629 ? _T_276 : 40'h0;
  assign _T_1135 = _T_631 ? _T_279 : 40'h0;
  assign _T_1137 = _T_633 ? _T_279 : 40'h0;
  assign _T_1139 = _T_635 ? _T_282 : 40'h0;
  assign _T_1141 = _T_637 ? _T_282 : 40'h0;
  assign _T_1143 = _T_639 ? _T_285 : 40'h0;
  assign _T_1145 = _T_641 ? _T_285 : 40'h0;
  assign _T_1147 = _T_643 ? _T_288 : 40'h0;
  assign _T_1149 = _T_645 ? _T_288 : 40'h0;
  assign _T_1151 = _T_647 ? _T_291 : 40'h0;
  assign _T_1153 = _T_649 ? _T_291 : 40'h0;
  assign _T_1158 = _T_989 | _T_991;
  assign _GEN_155 = {{48'd0}, _T_993};
  assign _T_1159 = _T_1158 | _GEN_155;
  assign _GEN_156 = {{55'd0}, _T_999};
  assign _T_1162 = _T_1159 | _GEN_156;
  assign _GEN_157 = {{29'd0}, _T_1001};
  assign _T_1163 = _T_1162 | _GEN_157;
  assign _GEN_158 = {{55'd0}, _T_1003};
  assign _T_1164 = _T_1163 | _GEN_158;
  assign _GEN_159 = {{48'd0}, _T_1005};
  assign _T_1165 = _T_1164 | _GEN_159;
  assign _GEN_160 = {{48'd0}, _T_1007};
  assign _T_1166 = _T_1165 | _GEN_160;
  assign _GEN_161 = {{32'd0}, _T_1009};
  assign _T_1167 = _T_1166 | _GEN_161;
  assign _GEN_162 = {{32'd0}, _T_1011};
  assign _T_1168 = _T_1167 | _GEN_162;
  assign _GEN_163 = {{32'd0}, _T_1013};
  assign _T_1169 = _T_1168 | _GEN_163;
  assign _GEN_164 = {{32'd0}, _T_1015};
  assign _T_1170 = _T_1169 | _GEN_164;
  assign _GEN_165 = {{32'd0}, _T_1019};
  assign _T_1172 = _T_1170 | _GEN_165;
  assign _GEN_166 = {{32'd0}, _T_1021};
  assign _T_1173 = _T_1172 | _GEN_166;
  assign _GEN_167 = {{32'd0}, _T_1023};
  assign _T_1174 = _T_1173 | _GEN_167;
  assign _GEN_168 = {{32'd0}, _T_1025};
  assign _T_1175 = _T_1174 | _GEN_168;
  assign _GEN_169 = {{24'd0}, _T_1027};
  assign _T_1176 = _T_1175 | _GEN_169;
  assign _GEN_170 = {{24'd0}, _T_1029};
  assign _T_1177 = _T_1176 | _GEN_170;
  assign _GEN_171 = {{24'd0}, _T_1031};
  assign _T_1178 = _T_1177 | _GEN_171;
  assign _GEN_172 = {{24'd0}, _T_1033};
  assign _T_1179 = _T_1178 | _GEN_172;
  assign _GEN_173 = {{24'd0}, _T_1035};
  assign _T_1180 = _T_1179 | _GEN_173;
  assign _GEN_174 = {{24'd0}, _T_1037};
  assign _T_1181 = _T_1180 | _GEN_174;
  assign _GEN_175 = {{24'd0}, _T_1039};
  assign _T_1182 = _T_1181 | _GEN_175;
  assign _GEN_176 = {{24'd0}, _T_1041};
  assign _T_1183 = _T_1182 | _GEN_176;
  assign _GEN_177 = {{24'd0}, _T_1043};
  assign _T_1184 = _T_1183 | _GEN_177;
  assign _GEN_178 = {{24'd0}, _T_1045};
  assign _T_1185 = _T_1184 | _GEN_178;
  assign _GEN_179 = {{24'd0}, _T_1047};
  assign _T_1186 = _T_1185 | _GEN_179;
  assign _GEN_180 = {{24'd0}, _T_1049};
  assign _T_1187 = _T_1186 | _GEN_180;
  assign _GEN_181 = {{24'd0}, _T_1051};
  assign _T_1188 = _T_1187 | _GEN_181;
  assign _GEN_182 = {{24'd0}, _T_1053};
  assign _T_1189 = _T_1188 | _GEN_182;
  assign _GEN_183 = {{24'd0}, _T_1055};
  assign _T_1190 = _T_1189 | _GEN_183;
  assign _GEN_184 = {{24'd0}, _T_1057};
  assign _T_1191 = _T_1190 | _GEN_184;
  assign _GEN_185 = {{24'd0}, _T_1059};
  assign _T_1192 = _T_1191 | _GEN_185;
  assign _GEN_186 = {{24'd0}, _T_1061};
  assign _T_1193 = _T_1192 | _GEN_186;
  assign _GEN_187 = {{24'd0}, _T_1063};
  assign _T_1194 = _T_1193 | _GEN_187;
  assign _GEN_188 = {{24'd0}, _T_1065};
  assign _T_1195 = _T_1194 | _GEN_188;
  assign _GEN_189 = {{24'd0}, _T_1067};
  assign _T_1196 = _T_1195 | _GEN_189;
  assign _GEN_190 = {{24'd0}, _T_1069};
  assign _T_1197 = _T_1196 | _GEN_190;
  assign _GEN_191 = {{24'd0}, _T_1071};
  assign _T_1198 = _T_1197 | _GEN_191;
  assign _GEN_192 = {{24'd0}, _T_1073};
  assign _T_1199 = _T_1198 | _GEN_192;
  assign _GEN_193 = {{24'd0}, _T_1075};
  assign _T_1200 = _T_1199 | _GEN_193;
  assign _GEN_194 = {{24'd0}, _T_1077};
  assign _T_1201 = _T_1200 | _GEN_194;
  assign _GEN_195 = {{24'd0}, _T_1079};
  assign _T_1202 = _T_1201 | _GEN_195;
  assign _GEN_196 = {{24'd0}, _T_1081};
  assign _T_1203 = _T_1202 | _GEN_196;
  assign _GEN_197 = {{24'd0}, _T_1083};
  assign _T_1204 = _T_1203 | _GEN_197;
  assign _GEN_198 = {{24'd0}, _T_1085};
  assign _T_1205 = _T_1204 | _GEN_198;
  assign _GEN_199 = {{24'd0}, _T_1087};
  assign _T_1206 = _T_1205 | _GEN_199;
  assign _GEN_200 = {{24'd0}, _T_1089};
  assign _T_1207 = _T_1206 | _GEN_200;
  assign _GEN_201 = {{24'd0}, _T_1091};
  assign _T_1208 = _T_1207 | _GEN_201;
  assign _GEN_202 = {{24'd0}, _T_1093};
  assign _T_1209 = _T_1208 | _GEN_202;
  assign _GEN_203 = {{24'd0}, _T_1095};
  assign _T_1210 = _T_1209 | _GEN_203;
  assign _GEN_204 = {{24'd0}, _T_1097};
  assign _T_1211 = _T_1210 | _GEN_204;
  assign _GEN_205 = {{24'd0}, _T_1099};
  assign _T_1212 = _T_1211 | _GEN_205;
  assign _GEN_206 = {{24'd0}, _T_1101};
  assign _T_1213 = _T_1212 | _GEN_206;
  assign _GEN_207 = {{24'd0}, _T_1103};
  assign _T_1214 = _T_1213 | _GEN_207;
  assign _GEN_208 = {{24'd0}, _T_1105};
  assign _T_1215 = _T_1214 | _GEN_208;
  assign _GEN_209 = {{24'd0}, _T_1107};
  assign _T_1216 = _T_1215 | _GEN_209;
  assign _GEN_210 = {{24'd0}, _T_1109};
  assign _T_1217 = _T_1216 | _GEN_210;
  assign _GEN_211 = {{24'd0}, _T_1111};
  assign _T_1218 = _T_1217 | _GEN_211;
  assign _GEN_212 = {{24'd0}, _T_1113};
  assign _T_1219 = _T_1218 | _GEN_212;
  assign _GEN_213 = {{24'd0}, _T_1115};
  assign _T_1220 = _T_1219 | _GEN_213;
  assign _GEN_214 = {{24'd0}, _T_1117};
  assign _T_1221 = _T_1220 | _GEN_214;
  assign _GEN_215 = {{24'd0}, _T_1119};
  assign _T_1222 = _T_1221 | _GEN_215;
  assign _GEN_216 = {{24'd0}, _T_1121};
  assign _T_1223 = _T_1222 | _GEN_216;
  assign _GEN_217 = {{24'd0}, _T_1123};
  assign _T_1224 = _T_1223 | _GEN_217;
  assign _GEN_218 = {{24'd0}, _T_1125};
  assign _T_1225 = _T_1224 | _GEN_218;
  assign _GEN_219 = {{24'd0}, _T_1127};
  assign _T_1226 = _T_1225 | _GEN_219;
  assign _GEN_220 = {{24'd0}, _T_1129};
  assign _T_1227 = _T_1226 | _GEN_220;
  assign _GEN_221 = {{24'd0}, _T_1131};
  assign _T_1228 = _T_1227 | _GEN_221;
  assign _GEN_222 = {{24'd0}, _T_1133};
  assign _T_1229 = _T_1228 | _GEN_222;
  assign _GEN_223 = {{24'd0}, _T_1135};
  assign _T_1230 = _T_1229 | _GEN_223;
  assign _GEN_224 = {{24'd0}, _T_1137};
  assign _T_1231 = _T_1230 | _GEN_224;
  assign _GEN_225 = {{24'd0}, _T_1139};
  assign _T_1232 = _T_1231 | _GEN_225;
  assign _GEN_226 = {{24'd0}, _T_1141};
  assign _T_1233 = _T_1232 | _GEN_226;
  assign _GEN_227 = {{24'd0}, _T_1143};
  assign _T_1234 = _T_1233 | _GEN_227;
  assign _GEN_228 = {{24'd0}, _T_1145};
  assign _T_1235 = _T_1234 | _GEN_228;
  assign _GEN_229 = {{24'd0}, _T_1147};
  assign _T_1236 = _T_1235 | _GEN_229;
  assign _GEN_230 = {{24'd0}, _T_1149};
  assign _T_1237 = _T_1236 | _GEN_230;
  assign _GEN_231 = {{24'd0}, _T_1151};
  assign _T_1238 = _T_1237 | _GEN_231;
  assign _GEN_232 = {{24'd0}, _T_1153};
  assign _T_1239 = _T_1238 | _GEN_232;
  assign _T_1250 = _T_1248[2];
  assign _T_1260 = _T_1248[15];
  assign _GEN_17 = _T_515 ? _T_1246_step : reg_dcsr_step;
  assign _GEN_18 = _T_515 ? _T_1246_ebreakm : reg_dcsr_ebreakm;
  assign _T_1272 = _T_1268[3];
  assign _T_1276 = _T_1268[7];
  assign _GEN_19 = _T_497 ? _T_1266_mie : _GEN_9;
  assign _GEN_20 = _T_497 ? _T_1266_mpie : _GEN_10;
  assign _T_1300 = _T_1296[3];
  assign _GEN_21 = _T_501 ? _T_1294_msip : reg_mip_msip;
  assign _T_1321 = _T_1317[3];
  assign _T_1325 = _T_1317[7];
  assign _GEN_22 = _T_503 ? _T_1315_msip : reg_mie_msip;
  assign _GEN_23 = _T_503 ? _T_1315_mtip : reg_mie_mtip;
  assign _T_1334 = wdata[7:0];
  assign _T_1335 = _T_198[31:0];
  assign _T_1336 = {_T_1334,_T_1335};
  assign _GEN_24 = _T_525 ? {{1'd0}, _T_1336} : _T_199;
  assign _T_1337 = _T_198[39:32];
  assign _T_1338 = {_T_1337,wdata};
  assign _GEN_25 = _T_523 ? {{1'd0}, _T_1338} : _GEN_24;
  assign _T_1340 = _T_201[31:0];
  assign _T_1341 = {_T_1334,_T_1340};
  assign _GEN_26 = _T_529 ? {{1'd0}, _T_1341} : _T_202;
  assign _T_1342 = _T_201[39:32];
  assign _T_1343 = {_T_1342,wdata};
  assign _GEN_27 = _T_527 ? {{1'd0}, _T_1343} : _GEN_26;
  assign _T_1345 = _T_204[31:0];
  assign _T_1346 = {_T_1334,_T_1345};
  assign _GEN_28 = _T_533 ? {{1'd0}, _T_1346} : _T_205;
  assign _T_1347 = _T_204[39:32];
  assign _T_1348 = {_T_1347,wdata};
  assign _GEN_29 = _T_531 ? {{1'd0}, _T_1348} : _GEN_28;
  assign _T_1350 = _T_207[31:0];
  assign _T_1351 = {_T_1334,_T_1350};
  assign _GEN_30 = _T_537 ? {{1'd0}, _T_1351} : _T_208;
  assign _T_1352 = _T_207[39:32];
  assign _T_1353 = {_T_1352,wdata};
  assign _GEN_31 = _T_535 ? {{1'd0}, _T_1353} : _GEN_30;
  assign _T_1355 = _T_210[31:0];
  assign _T_1356 = {_T_1334,_T_1355};
  assign _GEN_32 = _T_541 ? {{1'd0}, _T_1356} : _T_211;
  assign _T_1357 = _T_210[39:32];
  assign _T_1358 = {_T_1357,wdata};
  assign _GEN_33 = _T_539 ? {{1'd0}, _T_1358} : _GEN_32;
  assign _T_1360 = _T_213[31:0];
  assign _T_1361 = {_T_1334,_T_1360};
  assign _GEN_34 = _T_545 ? {{1'd0}, _T_1361} : _T_214;
  assign _T_1362 = _T_213[39:32];
  assign _T_1363 = {_T_1362,wdata};
  assign _GEN_35 = _T_543 ? {{1'd0}, _T_1363} : _GEN_34;
  assign _T_1365 = _T_216[31:0];
  assign _T_1366 = {_T_1334,_T_1365};
  assign _GEN_36 = _T_549 ? {{1'd0}, _T_1366} : _T_217;
  assign _T_1367 = _T_216[39:32];
  assign _T_1368 = {_T_1367,wdata};
  assign _GEN_37 = _T_547 ? {{1'd0}, _T_1368} : _GEN_36;
  assign _T_1370 = _T_219[31:0];
  assign _T_1371 = {_T_1334,_T_1370};
  assign _GEN_38 = _T_553 ? {{1'd0}, _T_1371} : _T_220;
  assign _T_1372 = _T_219[39:32];
  assign _T_1373 = {_T_1372,wdata};
  assign _GEN_39 = _T_551 ? {{1'd0}, _T_1373} : _GEN_38;
  assign _T_1375 = _T_222[31:0];
  assign _T_1376 = {_T_1334,_T_1375};
  assign _GEN_40 = _T_557 ? {{1'd0}, _T_1376} : _T_223;
  assign _T_1377 = _T_222[39:32];
  assign _T_1378 = {_T_1377,wdata};
  assign _GEN_41 = _T_555 ? {{1'd0}, _T_1378} : _GEN_40;
  assign _T_1380 = _T_225[31:0];
  assign _T_1381 = {_T_1334,_T_1380};
  assign _GEN_42 = _T_561 ? {{1'd0}, _T_1381} : _T_226;
  assign _T_1382 = _T_225[39:32];
  assign _T_1383 = {_T_1382,wdata};
  assign _GEN_43 = _T_559 ? {{1'd0}, _T_1383} : _GEN_42;
  assign _T_1385 = _T_228[31:0];
  assign _T_1386 = {_T_1334,_T_1385};
  assign _GEN_44 = _T_565 ? {{1'd0}, _T_1386} : _T_229;
  assign _T_1387 = _T_228[39:32];
  assign _T_1388 = {_T_1387,wdata};
  assign _GEN_45 = _T_563 ? {{1'd0}, _T_1388} : _GEN_44;
  assign _T_1390 = _T_231[31:0];
  assign _T_1391 = {_T_1334,_T_1390};
  assign _GEN_46 = _T_569 ? {{1'd0}, _T_1391} : _T_232;
  assign _T_1392 = _T_231[39:32];
  assign _T_1393 = {_T_1392,wdata};
  assign _GEN_47 = _T_567 ? {{1'd0}, _T_1393} : _GEN_46;
  assign _T_1395 = _T_234[31:0];
  assign _T_1396 = {_T_1334,_T_1395};
  assign _GEN_48 = _T_573 ? {{1'd0}, _T_1396} : _T_235;
  assign _T_1397 = _T_234[39:32];
  assign _T_1398 = {_T_1397,wdata};
  assign _GEN_49 = _T_571 ? {{1'd0}, _T_1398} : _GEN_48;
  assign _T_1400 = _T_237[31:0];
  assign _T_1401 = {_T_1334,_T_1400};
  assign _GEN_50 = _T_577 ? {{1'd0}, _T_1401} : _T_238;
  assign _T_1402 = _T_237[39:32];
  assign _T_1403 = {_T_1402,wdata};
  assign _GEN_51 = _T_575 ? {{1'd0}, _T_1403} : _GEN_50;
  assign _T_1405 = _T_240[31:0];
  assign _T_1406 = {_T_1334,_T_1405};
  assign _GEN_52 = _T_581 ? {{1'd0}, _T_1406} : _T_241;
  assign _T_1407 = _T_240[39:32];
  assign _T_1408 = {_T_1407,wdata};
  assign _GEN_53 = _T_579 ? {{1'd0}, _T_1408} : _GEN_52;
  assign _T_1410 = _T_243[31:0];
  assign _T_1411 = {_T_1334,_T_1410};
  assign _GEN_54 = _T_585 ? {{1'd0}, _T_1411} : _T_244;
  assign _T_1412 = _T_243[39:32];
  assign _T_1413 = {_T_1412,wdata};
  assign _GEN_55 = _T_583 ? {{1'd0}, _T_1413} : _GEN_54;
  assign _T_1415 = _T_246[31:0];
  assign _T_1416 = {_T_1334,_T_1415};
  assign _GEN_56 = _T_589 ? {{1'd0}, _T_1416} : _T_247;
  assign _T_1417 = _T_246[39:32];
  assign _T_1418 = {_T_1417,wdata};
  assign _GEN_57 = _T_587 ? {{1'd0}, _T_1418} : _GEN_56;
  assign _T_1420 = _T_249[31:0];
  assign _T_1421 = {_T_1334,_T_1420};
  assign _GEN_58 = _T_593 ? {{1'd0}, _T_1421} : _T_250;
  assign _T_1422 = _T_249[39:32];
  assign _T_1423 = {_T_1422,wdata};
  assign _GEN_59 = _T_591 ? {{1'd0}, _T_1423} : _GEN_58;
  assign _T_1425 = _T_252[31:0];
  assign _T_1426 = {_T_1334,_T_1425};
  assign _GEN_60 = _T_597 ? {{1'd0}, _T_1426} : _T_253;
  assign _T_1427 = _T_252[39:32];
  assign _T_1428 = {_T_1427,wdata};
  assign _GEN_61 = _T_595 ? {{1'd0}, _T_1428} : _GEN_60;
  assign _T_1430 = _T_255[31:0];
  assign _T_1431 = {_T_1334,_T_1430};
  assign _GEN_62 = _T_601 ? {{1'd0}, _T_1431} : _T_256;
  assign _T_1432 = _T_255[39:32];
  assign _T_1433 = {_T_1432,wdata};
  assign _GEN_63 = _T_599 ? {{1'd0}, _T_1433} : _GEN_62;
  assign _T_1435 = _T_258[31:0];
  assign _T_1436 = {_T_1334,_T_1435};
  assign _GEN_64 = _T_605 ? {{1'd0}, _T_1436} : _T_259;
  assign _T_1437 = _T_258[39:32];
  assign _T_1438 = {_T_1437,wdata};
  assign _GEN_65 = _T_603 ? {{1'd0}, _T_1438} : _GEN_64;
  assign _T_1440 = _T_261[31:0];
  assign _T_1441 = {_T_1334,_T_1440};
  assign _GEN_66 = _T_609 ? {{1'd0}, _T_1441} : _T_262;
  assign _T_1442 = _T_261[39:32];
  assign _T_1443 = {_T_1442,wdata};
  assign _GEN_67 = _T_607 ? {{1'd0}, _T_1443} : _GEN_66;
  assign _T_1445 = _T_264[31:0];
  assign _T_1446 = {_T_1334,_T_1445};
  assign _GEN_68 = _T_613 ? {{1'd0}, _T_1446} : _T_265;
  assign _T_1447 = _T_264[39:32];
  assign _T_1448 = {_T_1447,wdata};
  assign _GEN_69 = _T_611 ? {{1'd0}, _T_1448} : _GEN_68;
  assign _T_1450 = _T_267[31:0];
  assign _T_1451 = {_T_1334,_T_1450};
  assign _GEN_70 = _T_617 ? {{1'd0}, _T_1451} : _T_268;
  assign _T_1452 = _T_267[39:32];
  assign _T_1453 = {_T_1452,wdata};
  assign _GEN_71 = _T_615 ? {{1'd0}, _T_1453} : _GEN_70;
  assign _T_1455 = _T_270[31:0];
  assign _T_1456 = {_T_1334,_T_1455};
  assign _GEN_72 = _T_621 ? {{1'd0}, _T_1456} : _T_271;
  assign _T_1457 = _T_270[39:32];
  assign _T_1458 = {_T_1457,wdata};
  assign _GEN_73 = _T_619 ? {{1'd0}, _T_1458} : _GEN_72;
  assign _T_1460 = _T_273[31:0];
  assign _T_1461 = {_T_1334,_T_1460};
  assign _GEN_74 = _T_625 ? {{1'd0}, _T_1461} : _T_274;
  assign _T_1462 = _T_273[39:32];
  assign _T_1463 = {_T_1462,wdata};
  assign _GEN_75 = _T_623 ? {{1'd0}, _T_1463} : _GEN_74;
  assign _T_1465 = _T_276[31:0];
  assign _T_1466 = {_T_1334,_T_1465};
  assign _GEN_76 = _T_629 ? {{1'd0}, _T_1466} : _T_277;
  assign _T_1467 = _T_276[39:32];
  assign _T_1468 = {_T_1467,wdata};
  assign _GEN_77 = _T_627 ? {{1'd0}, _T_1468} : _GEN_76;
  assign _T_1470 = _T_279[31:0];
  assign _T_1471 = {_T_1334,_T_1470};
  assign _GEN_78 = _T_633 ? {{1'd0}, _T_1471} : _T_280;
  assign _T_1472 = _T_279[39:32];
  assign _T_1473 = {_T_1472,wdata};
  assign _GEN_79 = _T_631 ? {{1'd0}, _T_1473} : _GEN_78;
  assign _T_1475 = _T_282[31:0];
  assign _T_1476 = {_T_1334,_T_1475};
  assign _GEN_80 = _T_637 ? {{1'd0}, _T_1476} : _T_283;
  assign _T_1477 = _T_282[39:32];
  assign _T_1478 = {_T_1477,wdata};
  assign _GEN_81 = _T_635 ? {{1'd0}, _T_1478} : _GEN_80;
  assign _T_1480 = _T_285[31:0];
  assign _T_1481 = {_T_1334,_T_1480};
  assign _GEN_82 = _T_641 ? {{1'd0}, _T_1481} : _T_286;
  assign _T_1482 = _T_285[39:32];
  assign _T_1483 = {_T_1482,wdata};
  assign _GEN_83 = _T_639 ? {{1'd0}, _T_1483} : _GEN_82;
  assign _T_1485 = _T_288[31:0];
  assign _T_1486 = {_T_1334,_T_1485};
  assign _GEN_84 = _T_645 ? {{1'd0}, _T_1486} : _T_289;
  assign _T_1487 = _T_288[39:32];
  assign _T_1488 = {_T_1487,wdata};
  assign _GEN_85 = _T_643 ? {{1'd0}, _T_1488} : _GEN_84;
  assign _T_1490 = _T_291[31:0];
  assign _T_1491 = {_T_1334,_T_1490};
  assign _GEN_86 = _T_649 ? {{1'd0}, _T_1491} : _T_292;
  assign _T_1492 = _T_291[39:32];
  assign _T_1493 = {_T_1492,wdata};
  assign _GEN_87 = _T_647 ? {{1'd0}, _T_1493} : _GEN_86;
  assign _T_1495 = _T_183[31:0];
  assign _T_1496 = {wdata,_T_1495};
  assign _T_1497 = _T_1496[63:6];
  assign _GEN_88 = _T_651 ? _T_1496 : {{57'd0}, _T_175};
  assign _GEN_89 = _T_651 ? _T_1497 : _GEN_0;
  assign _T_1498 = _T_183[63:32];
  assign _T_1499 = {_T_1498,wdata};
  assign _T_1500 = _T_1499[63:6];
  assign _GEN_90 = _T_485 ? _T_1499 : _GEN_88;
  assign _GEN_91 = _T_485 ? _T_1500 : _GEN_89;
  assign _T_1502 = _T_195[31:0];
  assign _T_1503 = {wdata,_T_1502};
  assign _T_1504 = _T_1503[63:6];
  assign _GEN_92 = _T_653 ? _T_1503 : {{57'd0}, _T_187};
  assign _GEN_93 = _T_653 ? _T_1504 : _GEN_1;
  assign _T_1505 = _T_195[63:32];
  assign _T_1506 = {_T_1505,wdata};
  assign _T_1507 = _T_1506[63:6];
  assign _GEN_94 = _T_487 ? _T_1506 : _GEN_92;
  assign _GEN_95 = _T_487 ? _T_1507 : _GEN_93;
  assign _GEN_96 = _T_517 ? wdata : reg_dpc;
  assign _GEN_97 = _T_519 ? wdata : reg_dscratch;
  assign _T_1510 = wdata >> 2'h2;
  assign _GEN_233 = {{3'd0}, _T_1510};
  assign _T_1512 = _GEN_233 << 2'h2;
  assign _GEN_98 = _T_507 ? _T_1512 : {{3'd0}, _GEN_4};
  assign _GEN_99 = _T_505 ? wdata : reg_mscratch;
  assign _T_1514 = wdata & 32'h8000001f;
  assign _GEN_100 = _T_511 ? _T_1514 : _GEN_16;
  assign _GEN_101 = _T_509 ? wdata : reg_mtval;
  assign _GEN_102 = _T_521 ? wdata : reg_medeleg;
  assign _GEN_103 = wen ? _GEN_17 : reg_dcsr_step;
  assign _GEN_104 = wen ? _GEN_18 : reg_dcsr_ebreakm;
  assign _GEN_105 = wen ? _GEN_19 : _GEN_9;
  assign _GEN_106 = wen ? _GEN_20 : _GEN_10;
  assign _GEN_107 = wen ? _GEN_21 : reg_mip_msip;
  assign _GEN_108 = wen ? _GEN_22 : reg_mie_msip;
  assign _GEN_109 = wen ? _GEN_23 : reg_mie_mtip;
  assign _GEN_110 = wen ? _GEN_25 : _T_199;
  assign _GEN_111 = wen ? _GEN_27 : _T_202;
  assign _GEN_112 = wen ? _GEN_29 : _T_205;
  assign _GEN_113 = wen ? _GEN_31 : _T_208;
  assign _GEN_114 = wen ? _GEN_33 : _T_211;
  assign _GEN_115 = wen ? _GEN_35 : _T_214;
  assign _GEN_116 = wen ? _GEN_37 : _T_217;
  assign _GEN_117 = wen ? _GEN_39 : _T_220;
  assign _GEN_118 = wen ? _GEN_41 : _T_223;
  assign _GEN_119 = wen ? _GEN_43 : _T_226;
  assign _GEN_120 = wen ? _GEN_45 : _T_229;
  assign _GEN_121 = wen ? _GEN_47 : _T_232;
  assign _GEN_122 = wen ? _GEN_49 : _T_235;
  assign _GEN_123 = wen ? _GEN_51 : _T_238;
  assign _GEN_124 = wen ? _GEN_53 : _T_241;
  assign _GEN_125 = wen ? _GEN_55 : _T_244;
  assign _GEN_126 = wen ? _GEN_57 : _T_247;
  assign _GEN_127 = wen ? _GEN_59 : _T_250;
  assign _GEN_128 = wen ? _GEN_61 : _T_253;
  assign _GEN_129 = wen ? _GEN_63 : _T_256;
  assign _GEN_130 = wen ? _GEN_65 : _T_259;
  assign _GEN_131 = wen ? _GEN_67 : _T_262;
  assign _GEN_132 = wen ? _GEN_69 : _T_265;
  assign _GEN_133 = wen ? _GEN_71 : _T_268;
  assign _GEN_134 = wen ? _GEN_73 : _T_271;
  assign _GEN_135 = wen ? _GEN_75 : _T_274;
  assign _GEN_136 = wen ? _GEN_77 : _T_277;
  assign _GEN_137 = wen ? _GEN_79 : _T_280;
  assign _GEN_138 = wen ? _GEN_81 : _T_283;
  assign _GEN_139 = wen ? _GEN_83 : _T_286;
  assign _GEN_140 = wen ? _GEN_85 : _T_289;
  assign _GEN_141 = wen ? _GEN_87 : _T_292;
  assign _GEN_142 = wen ? _GEN_90 : {{57'd0}, _T_175};
  assign _GEN_143 = wen ? _GEN_91 : _GEN_0;
  assign _GEN_144 = wen ? _GEN_94 : {{57'd0}, _T_187};
  assign _GEN_145 = wen ? _GEN_95 : _GEN_1;
  assign _GEN_146 = wen ? _GEN_96 : reg_dpc;
  assign _GEN_147 = wen ? _GEN_97 : reg_dscratch;
  assign _GEN_148 = wen ? _GEN_98 : {{3'd0}, _GEN_4};
  assign _GEN_149 = wen ? _GEN_99 : reg_mscratch;
  assign _GEN_150 = wen ? _GEN_100 : _GEN_16;
  assign _GEN_151 = wen ? _GEN_101 : reg_mtval;
  assign _GEN_152 = wen ? _GEN_102 : reg_medeleg;
  assign io_rw_rdata = _T_1243[31:0];
  assign io_eret = _T_961;
  assign io_status_debug = 1'h0;
  assign io_status_prv = reg_mstatus_prv;
  assign io_status_sd = 1'h0;
  assign io_status_zero1 = 8'h0;
  assign io_status_tsr = 1'h0;
  assign io_status_tw = 1'h0;
  assign io_status_tvm = 1'h0;
  assign io_status_mxr = 1'h0;
  assign io_status_sum = 1'h0;
  assign io_status_mprv = 1'h0;
  assign io_status_xs = 2'h0;
  assign io_status_fs = 2'h0;
  assign io_status_mpp = 2'h3;
  assign io_status_hpp = 2'h0;
  assign io_status_spp = 1'h0;
  assign io_status_mpie = reg_mstatus_mpie;
  assign io_status_hpie = 1'h0;
  assign io_status_spie = 1'h0;
  assign io_status_upie = 1'h0;
  assign io_status_mie = reg_mstatus_mie;
  assign io_status_hie = 1'h0;
  assign io_status_sie = 1'h0;
  assign io_status_uie = 1'h0;
  assign io_evec = _GEN_15;
  assign new_prv = _GEN_11;
  assign _T_1243 = _T_1239;
  assign _T_1246_ebreakm = _T_1260;
  assign _T_1246_step = _T_1250;
  assign _T_1248 = wdata;
  assign _T_1266_mpie = _T_1276;
  assign _T_1266_mie = _T_1272;
  assign _T_1268 = {{3'd0}, wdata};
  assign _T_1294_msip = _T_1300;
  assign _T_1296 = wdata[15:0];
  assign _T_1315_mtip = _T_1325;
  assign _T_1315_msip = _T_1321;
  assign _T_1317 = wdata[15:0];
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  reg_mstatus_prv = _RAND_0[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  reg_mstatus_mpie = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  reg_mstatus_mie = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  reg_mepc = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  reg_mcause = _RAND_4[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  reg_mtval = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  reg_mscratch = _RAND_6[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  reg_medeleg = _RAND_7[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  reg_mip_mtip = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{$random}};
  reg_mip_msip = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{$random}};
  reg_mie_mtip = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{$random}};
  reg_mie_msip = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{$random}};
  _T_174 = _RAND_12[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {2{$random}};
  _T_178 = _RAND_13[57:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{$random}};
  _T_186 = _RAND_14[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {2{$random}};
  _T_190 = _RAND_15[57:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {2{$random}};
  _T_198 = _RAND_16[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {2{$random}};
  _T_201 = _RAND_17[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {2{$random}};
  _T_204 = _RAND_18[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {2{$random}};
  _T_207 = _RAND_19[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {2{$random}};
  _T_210 = _RAND_20[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {2{$random}};
  _T_213 = _RAND_21[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {2{$random}};
  _T_216 = _RAND_22[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {2{$random}};
  _T_219 = _RAND_23[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {2{$random}};
  _T_222 = _RAND_24[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {2{$random}};
  _T_225 = _RAND_25[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {2{$random}};
  _T_228 = _RAND_26[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {2{$random}};
  _T_231 = _RAND_27[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {2{$random}};
  _T_234 = _RAND_28[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {2{$random}};
  _T_237 = _RAND_29[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {2{$random}};
  _T_240 = _RAND_30[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {2{$random}};
  _T_243 = _RAND_31[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {2{$random}};
  _T_246 = _RAND_32[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {2{$random}};
  _T_249 = _RAND_33[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {2{$random}};
  _T_252 = _RAND_34[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {2{$random}};
  _T_255 = _RAND_35[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {2{$random}};
  _T_258 = _RAND_36[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {2{$random}};
  _T_261 = _RAND_37[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {2{$random}};
  _T_264 = _RAND_38[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {2{$random}};
  _T_267 = _RAND_39[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {2{$random}};
  _T_270 = _RAND_40[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {2{$random}};
  _T_273 = _RAND_41[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {2{$random}};
  _T_276 = _RAND_42[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {2{$random}};
  _T_279 = _RAND_43[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {2{$random}};
  _T_282 = _RAND_44[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {2{$random}};
  _T_285 = _RAND_45[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {2{$random}};
  _T_288 = _RAND_46[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {2{$random}};
  _T_291 = _RAND_47[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{$random}};
  reg_dpc = _RAND_48[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{$random}};
  reg_dscratch = _RAND_49[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{$random}};
  reg_dcsr_ebreakm = _RAND_50[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{$random}};
  reg_dcsr_step = _RAND_51[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      reg_mstatus_prv <= 2'h3;
    end else begin
      reg_mstatus_prv <= new_prv;
    end
    if (reset) begin
      reg_mstatus_mpie <= 1'h0;
    end else begin
      if (wen) begin
        if (_T_497) begin
          reg_mstatus_mpie <= _T_1266_mpie;
        end else begin
          if (_T_979) begin
            reg_mstatus_mpie <= 1'h1;
          end
        end
      end else begin
        if (_T_979) begin
          reg_mstatus_mpie <= 1'h1;
        end
      end
    end
    if (reset) begin
      reg_mstatus_mie <= 1'h0;
    end else begin
      if (wen) begin
        if (_T_497) begin
          reg_mstatus_mie <= _T_1266_mie;
        end else begin
          if (_T_979) begin
            reg_mstatus_mie <= reg_mstatus_mpie;
          end
        end
      end else begin
        if (_T_979) begin
          reg_mstatus_mie <= reg_mstatus_mpie;
        end
      end
    end
    reg_mepc <= _GEN_148[31:0];
    if (wen) begin
      if (_T_511) begin
        reg_mcause <= _T_1514;
      end else begin
        if (insn_break) begin
          reg_mcause <= 32'h3;
        end else begin
          if (insn_call) begin
            reg_mcause <= {{28'd0}, _T_984};
          end else begin
            if (io_exception) begin
              reg_mcause <= 32'h2;
            end
          end
        end
      end
    end else begin
      if (insn_break) begin
        reg_mcause <= 32'h3;
      end else begin
        if (insn_call) begin
          reg_mcause <= {{28'd0}, _T_984};
        end else begin
          if (io_exception) begin
            reg_mcause <= 32'h2;
          end
        end
      end
    end
    if (wen) begin
      if (_T_509) begin
        reg_mtval <= wdata;
      end
    end
    if (wen) begin
      if (_T_505) begin
        reg_mscratch <= wdata;
      end
    end
    if (wen) begin
      if (_T_521) begin
        reg_medeleg <= wdata;
      end
    end
    if (reset) begin
      reg_mip_mtip <= 1'h0;
    end else begin
      reg_mip_mtip <= 1'h1;
    end
    if (reset) begin
      reg_mip_msip <= 1'h0;
    end else begin
      if (wen) begin
        if (_T_501) begin
          reg_mip_msip <= _T_1294_msip;
        end
      end
    end
    if (reset) begin
      reg_mie_mtip <= 1'h0;
    end else begin
      if (wen) begin
        if (_T_503) begin
          reg_mie_mtip <= _T_1315_mtip;
        end
      end
    end
    if (reset) begin
      reg_mie_msip <= 1'h0;
    end else begin
      if (wen) begin
        if (_T_503) begin
          reg_mie_msip <= _T_1315_msip;
        end
      end
    end
    if (reset) begin
      _T_174 <= 6'h0;
    end else begin
      _T_174 <= _GEN_142[5:0];
    end
    if (reset) begin
      _T_178 <= 58'h0;
    end else begin
      if (wen) begin
        if (_T_485) begin
          _T_178 <= _T_1500;
        end else begin
          if (_T_651) begin
            _T_178 <= _T_1497;
          end else begin
            if (_T_179) begin
              _T_178 <= _T_182;
            end
          end
        end
      end else begin
        if (_T_179) begin
          _T_178 <= _T_182;
        end
      end
    end
    if (reset) begin
      _T_186 <= 6'h0;
    end else begin
      _T_186 <= _GEN_144[5:0];
    end
    if (reset) begin
      _T_190 <= 58'h0;
    end else begin
      if (wen) begin
        if (_T_487) begin
          _T_190 <= _T_1507;
        end else begin
          if (_T_653) begin
            _T_190 <= _T_1504;
          end else begin
            if (_T_191) begin
              _T_190 <= _T_194;
            end
          end
        end
      end else begin
        if (_T_191) begin
          _T_190 <= _T_194;
        end
      end
    end
    _T_198 <= _GEN_110[39:0];
    _T_201 <= _GEN_111[39:0];
    _T_204 <= _GEN_112[39:0];
    _T_207 <= _GEN_113[39:0];
    _T_210 <= _GEN_114[39:0];
    _T_213 <= _GEN_115[39:0];
    _T_216 <= _GEN_116[39:0];
    _T_219 <= _GEN_117[39:0];
    _T_222 <= _GEN_118[39:0];
    _T_225 <= _GEN_119[39:0];
    _T_228 <= _GEN_120[39:0];
    _T_231 <= _GEN_121[39:0];
    _T_234 <= _GEN_122[39:0];
    _T_237 <= _GEN_123[39:0];
    _T_240 <= _GEN_124[39:0];
    _T_243 <= _GEN_125[39:0];
    _T_246 <= _GEN_126[39:0];
    _T_249 <= _GEN_127[39:0];
    _T_252 <= _GEN_128[39:0];
    _T_255 <= _GEN_129[39:0];
    _T_258 <= _GEN_130[39:0];
    _T_261 <= _GEN_131[39:0];
    _T_264 <= _GEN_132[39:0];
    _T_267 <= _GEN_133[39:0];
    _T_270 <= _GEN_134[39:0];
    _T_273 <= _GEN_135[39:0];
    _T_276 <= _GEN_136[39:0];
    _T_279 <= _GEN_137[39:0];
    _T_282 <= _GEN_138[39:0];
    _T_285 <= _GEN_139[39:0];
    _T_288 <= _GEN_140[39:0];
    _T_291 <= _GEN_141[39:0];
    if (wen) begin
      if (_T_517) begin
        reg_dpc <= wdata;
      end
    end
    if (wen) begin
      if (_T_519) begin
        reg_dscratch <= wdata;
      end
    end
    if (reset) begin
      reg_dcsr_ebreakm <= 1'h0;
    end else begin
      if (wen) begin
        if (_T_515) begin
          reg_dcsr_ebreakm <= _T_1246_ebreakm;
        end
      end
    end
    if (reset) begin
      reg_dcsr_step <= 1'h0;
    end else begin
      if (wen) begin
        if (_T_515) begin
          reg_dcsr_step <= _T_1246_step;
        end
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_970) begin
          $fwrite(32'h80000002,"Assertion failed: these conditions must be mutually exclusive\n    at CSR.scala:277 assert(PopCount(insn_ret :: io.exception :: Nil) <= 1, \"these conditions must be mutually exclusive\")\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_970) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module DatPath(
  input         clock,
  input         reset,
  output [9:0]  io_imem_req_bits_pc,
  output        io_imem_resp_ready,
  input         io_imem_resp_valid,
  input  [9:0]  io_imem_resp_bits_pc,
  input  [31:0] io_imem_resp_bits_inst,
  input         io_ctl_exe_kill,
  input  [2:0]  io_ctl_pc_sel,
  input         io_ctl_brjmp_sel,
  input  [1:0]  io_ctl_op1_sel,
  input  [1:0]  io_ctl_op2_sel,
  input  [3:0]  io_ctl_alu_fun,
  input  [1:0]  io_ctl_wb_sel,
  input         io_ctl_rf_wen,
  input         io_ctl_bypassable,
  input  [2:0]  io_ctl_csr_cmd,
  input         io_ctl_dmem_val,
  input         io_ctl_dmem_fcn,
  input  [2:0]  io_ctl_dmem_typ,
  input         io_ctl_exception,
  output        io_dat_br_eq,
  output        io_dat_br_lt,
  output        io_dat_br_ltu,
  output        io_dat_csr_eret,
  output [31:0] io_test_imm_i_sext,
  output [31:0] io_test_imm_s_sext,
  output [31:0] io_test_imm_b_sext,
  output [31:0] io_test_imm_j_sext,
  output [31:0] io_test_imm_u,
  output [31:0] io_test_rf_rs1_data,
  output [31:0] io_test_rf_rs2_data,
  output [31:0] io_test_exe_rs1_data,
  output [31:0] io_test_exe_rs2_data,
  output [31:0] io_test_alu_out,
  output [31:0] io_test_alu_adder_out,
  output [31:0] io_test_alu_op1,
  output [31:0] io_test_alu_op2,
  output        io_test_exe_valid,
  output [31:0] io_test_exe_pc,
  output [31:0] io_test_exe_inst,
  output [9:0]  io_test_take_pc,
  output [31:0] io_test_take_pc_allbits,
  output [31:0] io_test_exe_jump_reg_target,
  output [31:0] io_test_dmem_rdata,
  output        io_test_wb_reg_valid,
  output        io_test_wb_reg_ctrl_exe_kill,
  output [2:0]  io_test_wb_reg_ctrl_pc_sel,
  output        io_test_wb_reg_ctrl_brjmp_sel,
  output [1:0]  io_test_wb_reg_ctrl_op1_sel,
  output [1:0]  io_test_wb_reg_ctrl_op2_sel,
  output [3:0]  io_test_wb_reg_ctrl_alu_fun,
  output [1:0]  io_test_wb_reg_ctrl_wb_sel,
  output        io_test_wb_reg_ctrl_rf_wen,
  output        io_test_wb_reg_ctrl_bypassable,
  output [2:0]  io_test_wb_reg_ctrl_csr_cmd,
  output        io_test_wb_reg_ctrl_dmem_val,
  output        io_test_wb_reg_ctrl_dmem_fcn,
  output [2:0]  io_test_wb_reg_ctrl_dmem_typ,
  output        io_test_wb_reg_ctrl_exception,
  output [31:0] io_test_wb_reg_alu,
  output [10:0] io_test_wb_reg_csr_addr,
  output [4:0]  io_test_wb_reg_wbaddr,
  output        io_test_wb_hazard_stall,
  output        io_test_resp_ready,
  input  [4:0]  io_regfile_test_addr,
  output [31:0] io_regfile_test_data
);
  wire [3:0] alu_io_fn;
  wire [31:0] alu_io_in1;
  wire [31:0] alu_io_in2;
  wire [31:0] alu_io_out;
  wire [31:0] alu_io_adder_out;
  wire [31:0] branch_cond_io_exe_rs1_data;
  wire [31:0] branch_cond_io_exe_rs2_data;
  wire  branch_cond_io_br_eq;
  wire  branch_cond_io_br_lt;
  wire  branch_cond_io_br_ltu;
  wire [31:0] branch_jump_calculator_io_imm_j_sext;
  wire [31:0] branch_jump_calculator_io_imm_b_sext;
  wire [31:0] branch_jump_calculator_io_exe_pc;
  wire [31:0] branch_jump_calculator_io_alu_adder_out;
  wire [31:0] branch_jump_calculator_io_exception_target;
  wire [2:0] branch_jump_calculator_io_ctl_pc_sel;
  wire  branch_jump_calculator_io_ctl_brjmp_sel;
  wire [9:0] branch_jump_calculator_io_take_pc;
  wire [31:0] branch_jump_calculator_io_exe_jump_reg_target;
  wire [31:0] branch_jump_calculator_io_take_pc_allbits;
  wire [31:0] id_io_instruction;
  wire [31:0] id_io_imm_u;
  wire [4:0] id_io_imm_z;
  wire [31:0] id_io_imm_i_sext;
  wire [31:0] id_io_imm_s_sext;
  wire [31:0] id_io_imm_b_sext;
  wire [31:0] id_io_imm_j_sext;
  wire [4:0] id_io_rs1_addr;
  wire [4:0] id_io_rs2_addr;
  wire [4:0] id_io_wb_addr;
  wire [31:0] rs_io_rf_rs1_data;
  wire [31:0] rs_io_rf_rs2_data;
  wire [31:0] rs_io_wb_reg_alu;
  wire [4:0] rs_io_wb_reg_wbaddr;
  wire [4:0] rs_io_exe_rs1_addr;
  wire [4:0] rs_io_exe_rs2_addr;
  wire  rs_io_wb_reg_ctrl_rf_wen;
  wire  rs_io_wb_reg_ctrl_bypassable;
  wire [31:0] rs_io_exe_rs1_data;
  wire [31:0] rs_io_exe_rs2_data;
  wire [31:0] operands_io_exe_rs1_data;
  wire [31:0] operands_io_exe_rs2_data;
  wire [1:0] operands_io_ctl_op1_sel;
  wire [1:0] operands_io_ctl_op2_sel;
  wire [4:0] operands_io_imm_z;
  wire [31:0] operands_io_imm_u;
  wire [31:0] operands_io_imm_i_sext;
  wire [31:0] operands_io_imm_s_sext;
  wire [31:0] operands_io_exe_pc;
  wire [31:0] operands_io_exe_alu_op1;
  wire [31:0] operands_io_exe_alu_op2;
  wire  regfile_clock;
  wire [4:0] regfile_io_rs1_addr;
  wire [31:0] regfile_io_rs1_data;
  wire [4:0] regfile_io_rs2_addr;
  wire [31:0] regfile_io_rs2_data;
  wire [4:0] regfile_io_test_addr;
  wire [31:0] regfile_io_test_data;
  wire [4:0] regfile_io_waddr;
  wire [31:0] regfile_io_wdata;
  wire  regfile_io_wen;
  reg  wb_reg_valid;
  reg [31:0] _RAND_0;
  reg  wb_reg_ctrl_exe_kill;
  reg [31:0] _RAND_1;
  reg [2:0] wb_reg_ctrl_pc_sel;
  reg [31:0] _RAND_2;
  reg  wb_reg_ctrl_brjmp_sel;
  reg [31:0] _RAND_3;
  reg [1:0] wb_reg_ctrl_op1_sel;
  reg [31:0] _RAND_4;
  reg [1:0] wb_reg_ctrl_op2_sel;
  reg [31:0] _RAND_5;
  reg [3:0] wb_reg_ctrl_alu_fun;
  reg [31:0] _RAND_6;
  reg [1:0] wb_reg_ctrl_wb_sel;
  reg [31:0] _RAND_7;
  reg  wb_reg_ctrl_rf_wen;
  reg [31:0] _RAND_8;
  reg  wb_reg_ctrl_bypassable;
  reg [31:0] _RAND_9;
  reg [2:0] wb_reg_ctrl_csr_cmd;
  reg [31:0] _RAND_10;
  reg  wb_reg_ctrl_dmem_val;
  reg [31:0] _RAND_11;
  reg  wb_reg_ctrl_dmem_fcn;
  reg [31:0] _RAND_12;
  reg [2:0] wb_reg_ctrl_dmem_typ;
  reg [31:0] _RAND_13;
  reg  wb_reg_ctrl_exception;
  reg [31:0] _RAND_14;
  reg [31:0] wb_reg_alu;
  reg [31:0] _RAND_15;
  reg [11:0] wb_reg_csr_addr;
  reg [31:0] _RAND_16;
  reg [4:0] wb_reg_wbaddr;
  reg [31:0] _RAND_17;
  reg [11:0] wb_reg_dmem_raddr;
  reg [31:0] _RAND_18;
  wire  wb_hazard_stall;
  wire [31:0] exception_target;
  wire  _T_67;
  wire [31:0] exe_pc;
  wire [31:0] wb_wbdata;
  wire  _T_74;
  wire  _T_76;
  wire  _T_77;
  wire  _T_78;
  wire  _T_80;
  wire  _T_81;
  wire  _T_82;
  wire  _T_84;
  wire  _T_85;
  wire  _T_86;
  wire  _T_89;
  wire  _T_90;
  wire  _T_91;
  wire  dmem_clock;
  wire [2:0] dmem_io_read_type;
  wire [11:0] dmem_io_raddr;
  wire [31:0] dmem_io_rdata;
  wire [2:0] dmem_io_write_type;
  wire [31:0] dmem_io_wdata;
  wire [11:0] dmem_io_waddr;
  wire  dmem_io_wen;
  wire  dmem_io_valid;
  wire  _T_95;
  wire [11:0] _T_97;
  wire [31:0] _GEN_1;
  wire  _T_100;
  wire  _GEN_4;
  wire [2:0] _GEN_5;
  wire  _GEN_6;
  wire  _GEN_7;
  wire [11:0] _T_104;
  wire  _T_107;
  wire  csr_clock;
  wire  csr_reset;
  wire [2:0] csr_io_rw_cmd;
  wire [31:0] csr_io_rw_rdata;
  wire [31:0] csr_io_rw_wdata;
  wire  csr_io_eret;
  wire [11:0] csr_io_decode_csr;
  wire  csr_io_status_debug;
  wire [1:0] csr_io_status_prv;
  wire  csr_io_status_sd;
  wire [7:0] csr_io_status_zero1;
  wire  csr_io_status_tsr;
  wire  csr_io_status_tw;
  wire  csr_io_status_tvm;
  wire  csr_io_status_mxr;
  wire  csr_io_status_sum;
  wire  csr_io_status_mprv;
  wire [1:0] csr_io_status_xs;
  wire [1:0] csr_io_status_fs;
  wire [1:0] csr_io_status_mpp;
  wire [1:0] csr_io_status_hpp;
  wire  csr_io_status_spp;
  wire  csr_io_status_mpie;
  wire  csr_io_status_hpie;
  wire  csr_io_status_spie;
  wire  csr_io_status_upie;
  wire  csr_io_status_mie;
  wire  csr_io_status_hie;
  wire  csr_io_status_sie;
  wire  csr_io_status_uie;
  wire [31:0] csr_io_evec;
  wire  csr_io_exception;
  wire  csr_io_retire;
  wire [31:0] csr_io_pc;
  wire [32:0] _T_109;
  wire [32:0] _T_110;
  wire [31:0] _T_111;
  wire  _T_172;
  wire  _T_173;
  wire  _T_174;
  wire  _T_175;
  wire [31:0] _T_176;
  wire [31:0] _T_177;
  wire [31:0] _T_178;
  wire [31:0] _T_179;
  wire  _GEN_8;
  wire [2:0] _GEN_9;
  wire  _GEN_10;
  wire  _GEN_11;
  ALU alu (
    .io_fn(alu_io_fn),
    .io_in1(alu_io_in1),
    .io_in2(alu_io_in2),
    .io_out(alu_io_out),
    .io_adder_out(alu_io_adder_out)
  );
  BranchCond branch_cond (
    .io_exe_rs1_data(branch_cond_io_exe_rs1_data),
    .io_exe_rs2_data(branch_cond_io_exe_rs2_data),
    .io_br_eq(branch_cond_io_br_eq),
    .io_br_lt(branch_cond_io_br_lt),
    .io_br_ltu(branch_cond_io_br_ltu)
  );
  BranchJumpCalculator branch_jump_calculator (
    .io_imm_j_sext(branch_jump_calculator_io_imm_j_sext),
    .io_imm_b_sext(branch_jump_calculator_io_imm_b_sext),
    .io_exe_pc(branch_jump_calculator_io_exe_pc),
    .io_alu_adder_out(branch_jump_calculator_io_alu_adder_out),
    .io_exception_target(branch_jump_calculator_io_exception_target),
    .io_ctl_pc_sel(branch_jump_calculator_io_ctl_pc_sel),
    .io_ctl_brjmp_sel(branch_jump_calculator_io_ctl_brjmp_sel),
    .io_take_pc(branch_jump_calculator_io_take_pc),
    .io_exe_jump_reg_target(branch_jump_calculator_io_exe_jump_reg_target),
    .io_take_pc_allbits(branch_jump_calculator_io_take_pc_allbits)
  );
  ID id (
    .io_instruction(id_io_instruction),
    .io_imm_u(id_io_imm_u),
    .io_imm_z(id_io_imm_z),
    .io_imm_i_sext(id_io_imm_i_sext),
    .io_imm_s_sext(id_io_imm_s_sext),
    .io_imm_b_sext(id_io_imm_b_sext),
    .io_imm_j_sext(id_io_imm_j_sext),
    .io_rs1_addr(id_io_rs1_addr),
    .io_rs2_addr(id_io_rs2_addr),
    .io_wb_addr(id_io_wb_addr)
  );
  RS rs (
    .io_rf_rs1_data(rs_io_rf_rs1_data),
    .io_rf_rs2_data(rs_io_rf_rs2_data),
    .io_wb_reg_alu(rs_io_wb_reg_alu),
    .io_wb_reg_wbaddr(rs_io_wb_reg_wbaddr),
    .io_exe_rs1_addr(rs_io_exe_rs1_addr),
    .io_exe_rs2_addr(rs_io_exe_rs2_addr),
    .io_wb_reg_ctrl_rf_wen(rs_io_wb_reg_ctrl_rf_wen),
    .io_wb_reg_ctrl_bypassable(rs_io_wb_reg_ctrl_bypassable),
    .io_exe_rs1_data(rs_io_exe_rs1_data),
    .io_exe_rs2_data(rs_io_exe_rs2_data)
  );
  Operands operands (
    .io_exe_rs1_data(operands_io_exe_rs1_data),
    .io_exe_rs2_data(operands_io_exe_rs2_data),
    .io_ctl_op1_sel(operands_io_ctl_op1_sel),
    .io_ctl_op2_sel(operands_io_ctl_op2_sel),
    .io_imm_z(operands_io_imm_z),
    .io_imm_u(operands_io_imm_u),
    .io_imm_i_sext(operands_io_imm_i_sext),
    .io_imm_s_sext(operands_io_imm_s_sext),
    .io_exe_pc(operands_io_exe_pc),
    .io_exe_alu_op1(operands_io_exe_alu_op1),
    .io_exe_alu_op2(operands_io_exe_alu_op2)
  );
  RegisterFile regfile (
    .clock(regfile_clock),
    .io_rs1_addr(regfile_io_rs1_addr),
    .io_rs1_data(regfile_io_rs1_data),
    .io_rs2_addr(regfile_io_rs2_addr),
    .io_rs2_data(regfile_io_rs2_data),
    .io_test_addr(regfile_io_test_addr),
    .io_test_data(regfile_io_test_data),
    .io_waddr(regfile_io_waddr),
    .io_wdata(regfile_io_wdata),
    .io_wen(regfile_io_wen)
  );
  Memory_1 dmem (
    .clock(dmem_clock),
    .io_read_type(dmem_io_read_type),
    .io_raddr(dmem_io_raddr),
    .io_rdata(dmem_io_rdata),
    .io_write_type(dmem_io_write_type),
    .io_wdata(dmem_io_wdata),
    .io_waddr(dmem_io_waddr),
    .io_wen(dmem_io_wen),
    .io_valid(dmem_io_valid)
  );
  CSRFile csr (
    .clock(csr_clock),
    .reset(csr_reset),
    .io_rw_cmd(csr_io_rw_cmd),
    .io_rw_rdata(csr_io_rw_rdata),
    .io_rw_wdata(csr_io_rw_wdata),
    .io_eret(csr_io_eret),
    .io_decode_csr(csr_io_decode_csr),
    .io_status_debug(csr_io_status_debug),
    .io_status_prv(csr_io_status_prv),
    .io_status_sd(csr_io_status_sd),
    .io_status_zero1(csr_io_status_zero1),
    .io_status_tsr(csr_io_status_tsr),
    .io_status_tw(csr_io_status_tw),
    .io_status_tvm(csr_io_status_tvm),
    .io_status_mxr(csr_io_status_mxr),
    .io_status_sum(csr_io_status_sum),
    .io_status_mprv(csr_io_status_mprv),
    .io_status_xs(csr_io_status_xs),
    .io_status_fs(csr_io_status_fs),
    .io_status_mpp(csr_io_status_mpp),
    .io_status_hpp(csr_io_status_hpp),
    .io_status_spp(csr_io_status_spp),
    .io_status_mpie(csr_io_status_mpie),
    .io_status_hpie(csr_io_status_hpie),
    .io_status_spie(csr_io_status_spie),
    .io_status_upie(csr_io_status_upie),
    .io_status_mie(csr_io_status_mie),
    .io_status_hie(csr_io_status_hie),
    .io_status_sie(csr_io_status_sie),
    .io_status_uie(csr_io_status_uie),
    .io_evec(csr_io_evec),
    .io_exception(csr_io_exception),
    .io_retire(csr_io_retire),
    .io_pc(csr_io_pc)
  );
  assign _T_67 = wb_hazard_stall == 1'h0;
  assign exe_pc = {22'h0,io_imem_resp_bits_pc};
  assign _T_74 = wb_reg_wbaddr == id_io_rs1_addr;
  assign _T_76 = id_io_rs1_addr != 5'h0;
  assign _T_77 = _T_74 & _T_76;
  assign _T_78 = _T_77 & wb_reg_ctrl_rf_wen;
  assign _T_80 = wb_reg_ctrl_bypassable == 1'h0;
  assign _T_81 = _T_78 & _T_80;
  assign _T_82 = wb_reg_wbaddr == id_io_rs2_addr;
  assign _T_84 = id_io_rs2_addr != 5'h0;
  assign _T_85 = _T_82 & _T_84;
  assign _T_86 = _T_85 & wb_reg_ctrl_rf_wen;
  assign _T_89 = _T_86 & _T_80;
  assign _T_90 = _T_81 | _T_89;
  assign _T_91 = _T_90 & io_imem_resp_valid;
  assign _T_95 = io_ctl_dmem_fcn & _T_67;
  assign _T_97 = alu_io_out[11:0];
  assign _GEN_1 = rs_io_exe_rs2_data;
  assign _T_100 = wb_hazard_stall | io_ctl_exe_kill;
  assign _GEN_4 = _T_100 ? 1'h0 : io_ctl_rf_wen;
  assign _GEN_5 = _T_100 ? 3'h0 : io_ctl_csr_cmd;
  assign _GEN_6 = _T_100 ? 1'h0 : io_ctl_dmem_val;
  assign _GEN_7 = _T_100 ? 1'h0 : io_ctl_exception;
  assign _T_104 = io_imem_resp_bits_inst[31:20];
  assign _T_107 = io_imem_resp_valid & _T_67;
  assign _T_109 = exe_pc - 32'h4;
  assign _T_110 = $unsigned(_T_109);
  assign _T_111 = _T_110[31:0];
  assign _T_172 = wb_reg_ctrl_wb_sel == 2'h0;
  assign _T_173 = wb_reg_ctrl_wb_sel == 2'h1;
  assign _T_174 = wb_reg_ctrl_wb_sel == 2'h2;
  assign _T_175 = wb_reg_ctrl_wb_sel == 2'h3;
  assign _T_176 = _T_175 ? csr_io_rw_rdata : wb_reg_alu;
  assign _T_177 = _T_174 ? exe_pc : _T_176;
  assign _T_178 = _T_173 ? dmem_io_rdata : _T_177;
  assign _T_179 = _T_172 ? wb_reg_alu : _T_178;
  assign _GEN_8 = reset ? 1'h0 : _GEN_4;
  assign _GEN_9 = reset ? 3'h0 : _GEN_5;
  assign _GEN_10 = reset ? 1'h0 : _GEN_6;
  assign _GEN_11 = reset ? 1'h0 : _GEN_7;
  assign io_imem_req_bits_pc = branch_jump_calculator_io_take_pc;
  assign io_imem_resp_ready = _T_67;
  assign io_dat_br_eq = branch_cond_io_br_eq;
  assign io_dat_br_lt = branch_cond_io_br_lt;
  assign io_dat_br_ltu = branch_cond_io_br_ltu;
  assign io_dat_csr_eret = csr_io_eret;
  assign io_test_imm_i_sext = id_io_imm_i_sext;
  assign io_test_imm_s_sext = id_io_imm_s_sext;
  assign io_test_imm_b_sext = id_io_imm_b_sext;
  assign io_test_imm_j_sext = id_io_imm_j_sext;
  assign io_test_imm_u = id_io_imm_u;
  assign io_test_rf_rs1_data = regfile_io_rs1_data;
  assign io_test_rf_rs2_data = regfile_io_rs2_data;
  assign io_test_exe_rs1_data = rs_io_exe_rs1_data;
  assign io_test_exe_rs2_data = rs_io_exe_rs2_data;
  assign io_test_alu_out = alu_io_out;
  assign io_test_alu_adder_out = alu_io_adder_out;
  assign io_test_alu_op1 = operands_io_exe_alu_op1;
  assign io_test_alu_op2 = operands_io_exe_alu_op2;
  assign io_test_exe_valid = io_imem_resp_valid;
  assign io_test_exe_pc = exe_pc;
  assign io_test_exe_inst = io_imem_resp_bits_inst;
  assign io_test_take_pc = branch_jump_calculator_io_take_pc;
  assign io_test_take_pc_allbits = branch_jump_calculator_io_take_pc_allbits;
  assign io_test_exe_jump_reg_target = branch_jump_calculator_io_exe_jump_reg_target;
  assign io_test_dmem_rdata = dmem_io_rdata;
  assign io_test_wb_reg_valid = wb_reg_valid;
  assign io_test_wb_reg_ctrl_exe_kill = wb_reg_ctrl_exe_kill;
  assign io_test_wb_reg_ctrl_pc_sel = wb_reg_ctrl_pc_sel;
  assign io_test_wb_reg_ctrl_brjmp_sel = wb_reg_ctrl_brjmp_sel;
  assign io_test_wb_reg_ctrl_op1_sel = wb_reg_ctrl_op1_sel;
  assign io_test_wb_reg_ctrl_op2_sel = wb_reg_ctrl_op2_sel;
  assign io_test_wb_reg_ctrl_alu_fun = wb_reg_ctrl_alu_fun;
  assign io_test_wb_reg_ctrl_wb_sel = wb_reg_ctrl_wb_sel;
  assign io_test_wb_reg_ctrl_rf_wen = wb_reg_ctrl_rf_wen;
  assign io_test_wb_reg_ctrl_bypassable = wb_reg_ctrl_bypassable;
  assign io_test_wb_reg_ctrl_csr_cmd = wb_reg_ctrl_csr_cmd;
  assign io_test_wb_reg_ctrl_dmem_val = wb_reg_ctrl_dmem_val;
  assign io_test_wb_reg_ctrl_dmem_fcn = wb_reg_ctrl_dmem_fcn;
  assign io_test_wb_reg_ctrl_dmem_typ = wb_reg_ctrl_dmem_typ;
  assign io_test_wb_reg_ctrl_exception = wb_reg_ctrl_exception;
  assign io_test_wb_reg_alu = wb_reg_alu;
  assign io_test_wb_reg_csr_addr = wb_reg_csr_addr[10:0];
  assign io_test_wb_reg_wbaddr = wb_reg_wbaddr;
  assign io_test_wb_hazard_stall = wb_hazard_stall;
  assign io_test_resp_ready = _T_67;
  assign io_regfile_test_data = regfile_io_test_data;
  assign alu_io_fn = io_ctl_alu_fun;
  assign alu_io_in1 = operands_io_exe_alu_op1;
  assign alu_io_in2 = operands_io_exe_alu_op2;
  assign branch_cond_io_exe_rs1_data = rs_io_exe_rs1_data;
  assign branch_cond_io_exe_rs2_data = rs_io_exe_rs2_data;
  assign branch_jump_calculator_io_imm_j_sext = id_io_imm_j_sext;
  assign branch_jump_calculator_io_imm_b_sext = id_io_imm_b_sext;
  assign branch_jump_calculator_io_exe_pc = exe_pc;
  assign branch_jump_calculator_io_alu_adder_out = alu_io_adder_out;
  assign branch_jump_calculator_io_exception_target = exception_target;
  assign branch_jump_calculator_io_ctl_pc_sel = io_ctl_pc_sel;
  assign branch_jump_calculator_io_ctl_brjmp_sel = io_ctl_brjmp_sel;
  assign id_io_instruction = io_imem_resp_bits_inst;
  assign rs_io_rf_rs1_data = regfile_io_rs1_data;
  assign rs_io_rf_rs2_data = regfile_io_rs2_data;
  assign rs_io_wb_reg_alu = wb_reg_alu;
  assign rs_io_wb_reg_wbaddr = wb_reg_wbaddr;
  assign rs_io_exe_rs1_addr = id_io_rs1_addr;
  assign rs_io_exe_rs2_addr = id_io_rs2_addr;
  assign rs_io_wb_reg_ctrl_rf_wen = wb_reg_ctrl_rf_wen;
  assign rs_io_wb_reg_ctrl_bypassable = wb_reg_ctrl_bypassable;
  assign operands_io_exe_rs1_data = rs_io_exe_rs1_data;
  assign operands_io_exe_rs2_data = rs_io_exe_rs2_data;
  assign operands_io_ctl_op1_sel = io_ctl_op1_sel;
  assign operands_io_ctl_op2_sel = io_ctl_op2_sel;
  assign operands_io_imm_z = id_io_imm_z;
  assign operands_io_imm_u = id_io_imm_u;
  assign operands_io_imm_i_sext = id_io_imm_i_sext;
  assign operands_io_imm_s_sext = id_io_imm_s_sext;
  assign operands_io_exe_pc = exe_pc;
  assign regfile_io_rs1_addr = id_io_rs1_addr;
  assign regfile_io_rs2_addr = id_io_rs2_addr;
  assign regfile_io_test_addr = io_regfile_test_addr;
  assign regfile_io_waddr = wb_reg_wbaddr;
  assign regfile_io_wdata = wb_wbdata;
  assign regfile_io_wen = wb_reg_ctrl_rf_wen;
  assign regfile_clock = clock;
  assign wb_hazard_stall = _T_91;
  assign exception_target = csr_io_evec;
  assign wb_wbdata = _T_179;
  assign dmem_io_read_type = wb_reg_ctrl_dmem_typ;
  assign dmem_io_raddr = wb_reg_dmem_raddr;
  assign dmem_io_write_type = io_ctl_dmem_typ;
  assign dmem_io_wdata = _GEN_1;
  assign dmem_io_waddr = _T_97;
  assign dmem_io_wen = _T_95;
  assign dmem_io_valid = io_ctl_dmem_val;
  assign dmem_clock = clock;
  assign csr_io_rw_cmd = wb_reg_ctrl_csr_cmd;
  assign csr_io_rw_wdata = wb_reg_alu;
  assign csr_io_decode_csr = wb_reg_csr_addr;
  assign csr_io_exception = wb_reg_ctrl_exception;
  assign csr_io_retire = wb_reg_valid;
  assign csr_io_pc = _T_111;
  assign csr_clock = clock;
  assign csr_reset = reset;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  wb_reg_valid = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  wb_reg_ctrl_exe_kill = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  wb_reg_ctrl_pc_sel = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  wb_reg_ctrl_brjmp_sel = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  wb_reg_ctrl_op1_sel = _RAND_4[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  wb_reg_ctrl_op2_sel = _RAND_5[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  wb_reg_ctrl_alu_fun = _RAND_6[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  wb_reg_ctrl_wb_sel = _RAND_7[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  wb_reg_ctrl_rf_wen = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{$random}};
  wb_reg_ctrl_bypassable = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{$random}};
  wb_reg_ctrl_csr_cmd = _RAND_10[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{$random}};
  wb_reg_ctrl_dmem_val = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{$random}};
  wb_reg_ctrl_dmem_fcn = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{$random}};
  wb_reg_ctrl_dmem_typ = _RAND_13[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{$random}};
  wb_reg_ctrl_exception = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{$random}};
  wb_reg_alu = _RAND_15[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{$random}};
  wb_reg_csr_addr = _RAND_16[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{$random}};
  wb_reg_wbaddr = _RAND_17[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{$random}};
  wb_reg_dmem_raddr = _RAND_18[11:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      wb_reg_valid <= 1'h0;
    end else begin
      wb_reg_valid <= _T_107;
    end
    wb_reg_ctrl_exe_kill <= io_ctl_exe_kill;
    wb_reg_ctrl_pc_sel <= io_ctl_pc_sel;
    wb_reg_ctrl_brjmp_sel <= io_ctl_brjmp_sel;
    wb_reg_ctrl_op1_sel <= io_ctl_op1_sel;
    wb_reg_ctrl_op2_sel <= io_ctl_op2_sel;
    wb_reg_ctrl_alu_fun <= io_ctl_alu_fun;
    wb_reg_ctrl_wb_sel <= io_ctl_wb_sel;
    if (reset) begin
      wb_reg_ctrl_rf_wen <= 1'h0;
    end else begin
      if (_T_100) begin
        wb_reg_ctrl_rf_wen <= 1'h0;
      end else begin
        wb_reg_ctrl_rf_wen <= io_ctl_rf_wen;
      end
    end
    wb_reg_ctrl_bypassable <= io_ctl_bypassable;
    if (reset) begin
      wb_reg_ctrl_csr_cmd <= 3'h0;
    end else begin
      if (_T_100) begin
        wb_reg_ctrl_csr_cmd <= 3'h0;
      end else begin
        wb_reg_ctrl_csr_cmd <= io_ctl_csr_cmd;
      end
    end
    if (reset) begin
      wb_reg_ctrl_dmem_val <= 1'h0;
    end else begin
      if (_T_100) begin
        wb_reg_ctrl_dmem_val <= 1'h0;
      end else begin
        wb_reg_ctrl_dmem_val <= io_ctl_dmem_val;
      end
    end
    wb_reg_ctrl_dmem_fcn <= io_ctl_dmem_fcn;
    wb_reg_ctrl_dmem_typ <= io_ctl_dmem_typ;
    if (reset) begin
      wb_reg_ctrl_exception <= 1'h0;
    end else begin
      if (_T_100) begin
        wb_reg_ctrl_exception <= 1'h0;
      end else begin
        wb_reg_ctrl_exception <= io_ctl_exception;
      end
    end
    wb_reg_alu <= alu_io_out;
    wb_reg_csr_addr <= _T_104;
    wb_reg_wbaddr <= id_io_wb_addr;
    wb_reg_dmem_raddr <= _T_97;
  end
endmodule
module Core(
  input         clock,
  input         reset,
  input         io_load_enable,
  input         io_load_wen,
  input  [9:0]  io_load_addr,
  input  [31:0] io_load_instr,
  output [31:0] io_load_rdata,
  output [9:0]  io_test_frontend_test_if_pc_next,
  output [9:0]  io_test_frontend_test_if_reg_pc,
  output        io_test_frontend_test_if_reg_valid,
  output [31:0] io_test_frontend_test_if_inst,
  output [31:0] io_test_frontend_test_exe_reg_inst,
  output [9:0]  io_test_frontend_test_exe_reg_pc,
  output        io_test_frontend_test_exe_reg_valid,
  output        io_test_frontend_test_resp_ready,
  output        io_test_frontend_test_req_valid,
  output [9:0]  io_test_frontend_test_req_bits_pc,
  output        io_test_cpath_test_decoder_output_is_valid,
  output [3:0]  io_test_cpath_test_decoder_output_branch_type,
  output        io_test_cpath_test_decoder_output_is_jump,
  output [1:0]  io_test_cpath_test_decoder_output_op1_select,
  output [1:0]  io_test_cpath_test_decoder_output_op2_select,
  output [3:0]  io_test_cpath_test_decoder_output_alu_function,
  output [1:0]  io_test_cpath_test_decoder_output_wb_select,
  output        io_test_cpath_test_decoder_output_rf_write_enable,
  output        io_test_cpath_test_decoder_output_bypassable,
  output        io_test_cpath_test_decoder_output_mem_enable,
  output        io_test_cpath_test_decoder_output_mem_command,
  output [2:0]  io_test_cpath_test_decoder_output_mask_type,
  output [2:0]  io_test_cpath_test_decoder_output_csr_cmd,
  output [2:0]  io_test_cpath_test_decoder_output_mem,
  output        io_test_cpath_test_take_evec,
  output        io_test_cpath_test_req_valid,
  output        io_test_cpath_test_resp_valid,
  output [2:0]  io_test_cpath_test_ctrl_pc_sel,
  output [31:0] io_test_dpath_test_imm_i_sext,
  output [31:0] io_test_dpath_test_imm_s_sext,
  output [31:0] io_test_dpath_test_imm_b_sext,
  output [31:0] io_test_dpath_test_imm_j_sext,
  output [31:0] io_test_dpath_test_imm_u,
  output [31:0] io_test_dpath_test_rf_rs1_data,
  output [31:0] io_test_dpath_test_rf_rs2_data,
  output [31:0] io_test_dpath_test_exe_rs1_data,
  output [31:0] io_test_dpath_test_exe_rs2_data,
  output [31:0] io_test_dpath_test_alu_out,
  output [31:0] io_test_dpath_test_alu_adder_out,
  output [31:0] io_test_dpath_test_alu_op1,
  output [31:0] io_test_dpath_test_alu_op2,
  output        io_test_dpath_test_exe_valid,
  output [31:0] io_test_dpath_test_exe_pc,
  output [31:0] io_test_dpath_test_exe_inst,
  output [9:0]  io_test_dpath_test_take_pc,
  output [31:0] io_test_dpath_test_take_pc_allbits,
  output [31:0] io_test_dpath_test_exe_jump_reg_target,
  output [31:0] io_test_dpath_test_dmem_rdata,
  output        io_test_dpath_test_wb_reg_valid,
  output        io_test_dpath_test_wb_reg_ctrl_exe_kill,
  output [2:0]  io_test_dpath_test_wb_reg_ctrl_pc_sel,
  output        io_test_dpath_test_wb_reg_ctrl_brjmp_sel,
  output [1:0]  io_test_dpath_test_wb_reg_ctrl_op1_sel,
  output [1:0]  io_test_dpath_test_wb_reg_ctrl_op2_sel,
  output [3:0]  io_test_dpath_test_wb_reg_ctrl_alu_fun,
  output [1:0]  io_test_dpath_test_wb_reg_ctrl_wb_sel,
  output        io_test_dpath_test_wb_reg_ctrl_rf_wen,
  output        io_test_dpath_test_wb_reg_ctrl_bypassable,
  output [2:0]  io_test_dpath_test_wb_reg_ctrl_csr_cmd,
  output        io_test_dpath_test_wb_reg_ctrl_dmem_val,
  output        io_test_dpath_test_wb_reg_ctrl_dmem_fcn,
  output [2:0]  io_test_dpath_test_wb_reg_ctrl_dmem_typ,
  output        io_test_dpath_test_wb_reg_ctrl_exception,
  output [31:0] io_test_dpath_test_wb_reg_ctrl_exc_cause,
  output [31:0] io_test_dpath_test_wb_reg_alu,
  output [10:0] io_test_dpath_test_wb_reg_csr_addr,
  output [4:0]  io_test_dpath_test_wb_reg_wbaddr,
  output        io_test_dpath_test_wb_hazard_stall,
  output        io_test_dpath_test_resp_ready,
  input  [4:0]  io_regfile_test_addr,
  output [31:0] io_regfile_test_data
);
  wire  frontend_clock;
  wire  frontend_reset;
  wire  frontend_io_cpu_req_valid;
  wire [9:0] frontend_io_cpu_req_bits_pc;
  wire  frontend_io_cpu_resp_ready;
  wire  frontend_io_cpu_resp_valid;
  wire [9:0] frontend_io_cpu_resp_bits_pc;
  wire [31:0] frontend_io_cpu_resp_bits_inst;
  wire  frontend_io_load_enable;
  wire  frontend_io_load_wen;
  wire [9:0] frontend_io_load_addr;
  wire [31:0] frontend_io_load_instr;
  wire [31:0] frontend_io_load_rdata;
  wire [9:0] frontend_io_test_if_pc_next;
  wire [9:0] frontend_io_test_if_reg_pc;
  wire  frontend_io_test_if_reg_valid;
  wire [31:0] frontend_io_test_if_inst;
  wire [31:0] frontend_io_test_exe_reg_inst;
  wire [9:0] frontend_io_test_exe_reg_pc;
  wire  frontend_io_test_exe_reg_valid;
  wire  frontend_io_test_resp_ready;
  wire  frontend_io_test_req_valid;
  wire [9:0] frontend_io_test_req_bits_pc;
  wire  cpath_clock;
  wire  cpath_io_imem_req_valid;
  wire  cpath_io_imem_resp_valid;
  wire [31:0] cpath_io_imem_resp_bits_inst;
  wire  cpath_io_dat_br_eq;
  wire  cpath_io_dat_br_lt;
  wire  cpath_io_dat_br_ltu;
  wire  cpath_io_dat_csr_eret;
  wire  cpath_io_ctl_exe_kill;
  wire [2:0] cpath_io_ctl_pc_sel;
  wire  cpath_io_ctl_brjmp_sel;
  wire [1:0] cpath_io_ctl_op1_sel;
  wire [1:0] cpath_io_ctl_op2_sel;
  wire [3:0] cpath_io_ctl_alu_fun;
  wire [1:0] cpath_io_ctl_wb_sel;
  wire  cpath_io_ctl_rf_wen;
  wire  cpath_io_ctl_bypassable;
  wire [2:0] cpath_io_ctl_csr_cmd;
  wire  cpath_io_ctl_dmem_val;
  wire  cpath_io_ctl_dmem_fcn;
  wire [2:0] cpath_io_ctl_dmem_typ;
  wire  cpath_io_ctl_exception;
  wire  cpath_io_test_decoder_output_is_valid;
  wire [3:0] cpath_io_test_decoder_output_branch_type;
  wire  cpath_io_test_decoder_output_is_jump;
  wire [1:0] cpath_io_test_decoder_output_op1_select;
  wire [1:0] cpath_io_test_decoder_output_op2_select;
  wire [3:0] cpath_io_test_decoder_output_alu_function;
  wire [1:0] cpath_io_test_decoder_output_wb_select;
  wire  cpath_io_test_decoder_output_rf_write_enable;
  wire  cpath_io_test_decoder_output_bypassable;
  wire  cpath_io_test_decoder_output_mem_enable;
  wire  cpath_io_test_decoder_output_mem_command;
  wire [2:0] cpath_io_test_decoder_output_mask_type;
  wire [2:0] cpath_io_test_decoder_output_csr_cmd;
  wire [2:0] cpath_io_test_decoder_output_mem;
  wire  cpath_io_test_take_evec;
  wire  cpath_io_test_req_valid;
  wire  cpath_io_test_resp_valid;
  wire [2:0] cpath_io_test_ctrl_pc_sel;
  wire  dpath_clock;
  wire  dpath_reset;
  wire [9:0] dpath_io_imem_req_bits_pc;
  wire  dpath_io_imem_resp_ready;
  wire  dpath_io_imem_resp_valid;
  wire [9:0] dpath_io_imem_resp_bits_pc;
  wire [31:0] dpath_io_imem_resp_bits_inst;
  wire  dpath_io_ctl_exe_kill;
  wire [2:0] dpath_io_ctl_pc_sel;
  wire  dpath_io_ctl_brjmp_sel;
  wire [1:0] dpath_io_ctl_op1_sel;
  wire [1:0] dpath_io_ctl_op2_sel;
  wire [3:0] dpath_io_ctl_alu_fun;
  wire [1:0] dpath_io_ctl_wb_sel;
  wire  dpath_io_ctl_rf_wen;
  wire  dpath_io_ctl_bypassable;
  wire [2:0] dpath_io_ctl_csr_cmd;
  wire  dpath_io_ctl_dmem_val;
  wire  dpath_io_ctl_dmem_fcn;
  wire [2:0] dpath_io_ctl_dmem_typ;
  wire  dpath_io_ctl_exception;
  wire  dpath_io_dat_br_eq;
  wire  dpath_io_dat_br_lt;
  wire  dpath_io_dat_br_ltu;
  wire  dpath_io_dat_csr_eret;
  wire [31:0] dpath_io_test_imm_i_sext;
  wire [31:0] dpath_io_test_imm_s_sext;
  wire [31:0] dpath_io_test_imm_b_sext;
  wire [31:0] dpath_io_test_imm_j_sext;
  wire [31:0] dpath_io_test_imm_u;
  wire [31:0] dpath_io_test_rf_rs1_data;
  wire [31:0] dpath_io_test_rf_rs2_data;
  wire [31:0] dpath_io_test_exe_rs1_data;
  wire [31:0] dpath_io_test_exe_rs2_data;
  wire [31:0] dpath_io_test_alu_out;
  wire [31:0] dpath_io_test_alu_adder_out;
  wire [31:0] dpath_io_test_alu_op1;
  wire [31:0] dpath_io_test_alu_op2;
  wire  dpath_io_test_exe_valid;
  wire [31:0] dpath_io_test_exe_pc;
  wire [31:0] dpath_io_test_exe_inst;
  wire [9:0] dpath_io_test_take_pc;
  wire [31:0] dpath_io_test_take_pc_allbits;
  wire [31:0] dpath_io_test_exe_jump_reg_target;
  wire [31:0] dpath_io_test_dmem_rdata;
  wire  dpath_io_test_wb_reg_valid;
  wire  dpath_io_test_wb_reg_ctrl_exe_kill;
  wire [2:0] dpath_io_test_wb_reg_ctrl_pc_sel;
  wire  dpath_io_test_wb_reg_ctrl_brjmp_sel;
  wire [1:0] dpath_io_test_wb_reg_ctrl_op1_sel;
  wire [1:0] dpath_io_test_wb_reg_ctrl_op2_sel;
  wire [3:0] dpath_io_test_wb_reg_ctrl_alu_fun;
  wire [1:0] dpath_io_test_wb_reg_ctrl_wb_sel;
  wire  dpath_io_test_wb_reg_ctrl_rf_wen;
  wire  dpath_io_test_wb_reg_ctrl_bypassable;
  wire [2:0] dpath_io_test_wb_reg_ctrl_csr_cmd;
  wire  dpath_io_test_wb_reg_ctrl_dmem_val;
  wire  dpath_io_test_wb_reg_ctrl_dmem_fcn;
  wire [2:0] dpath_io_test_wb_reg_ctrl_dmem_typ;
  wire  dpath_io_test_wb_reg_ctrl_exception;
  wire [31:0] dpath_io_test_wb_reg_alu;
  wire [10:0] dpath_io_test_wb_reg_csr_addr;
  wire [4:0] dpath_io_test_wb_reg_wbaddr;
  wire  dpath_io_test_wb_hazard_stall;
  wire  dpath_io_test_resp_ready;
  wire [4:0] dpath_io_regfile_test_addr;
  wire [31:0] dpath_io_regfile_test_data;
  Frontend frontend (
    .clock(frontend_clock),
    .reset(frontend_reset),
    .io_cpu_req_valid(frontend_io_cpu_req_valid),
    .io_cpu_req_bits_pc(frontend_io_cpu_req_bits_pc),
    .io_cpu_resp_ready(frontend_io_cpu_resp_ready),
    .io_cpu_resp_valid(frontend_io_cpu_resp_valid),
    .io_cpu_resp_bits_pc(frontend_io_cpu_resp_bits_pc),
    .io_cpu_resp_bits_inst(frontend_io_cpu_resp_bits_inst),
    .io_load_enable(frontend_io_load_enable),
    .io_load_wen(frontend_io_load_wen),
    .io_load_addr(frontend_io_load_addr),
    .io_load_instr(frontend_io_load_instr),
    .io_load_rdata(frontend_io_load_rdata),
    .io_test_if_pc_next(frontend_io_test_if_pc_next),
    .io_test_if_reg_pc(frontend_io_test_if_reg_pc),
    .io_test_if_reg_valid(frontend_io_test_if_reg_valid),
    .io_test_if_inst(frontend_io_test_if_inst),
    .io_test_exe_reg_inst(frontend_io_test_exe_reg_inst),
    .io_test_exe_reg_pc(frontend_io_test_exe_reg_pc),
    .io_test_exe_reg_valid(frontend_io_test_exe_reg_valid),
    .io_test_resp_ready(frontend_io_test_resp_ready),
    .io_test_req_valid(frontend_io_test_req_valid),
    .io_test_req_bits_pc(frontend_io_test_req_bits_pc)
  );
  CtlPath cpath (
    .clock(cpath_clock),
    .io_imem_req_valid(cpath_io_imem_req_valid),
    .io_imem_resp_valid(cpath_io_imem_resp_valid),
    .io_imem_resp_bits_inst(cpath_io_imem_resp_bits_inst),
    .io_dat_br_eq(cpath_io_dat_br_eq),
    .io_dat_br_lt(cpath_io_dat_br_lt),
    .io_dat_br_ltu(cpath_io_dat_br_ltu),
    .io_dat_csr_eret(cpath_io_dat_csr_eret),
    .io_ctl_exe_kill(cpath_io_ctl_exe_kill),
    .io_ctl_pc_sel(cpath_io_ctl_pc_sel),
    .io_ctl_brjmp_sel(cpath_io_ctl_brjmp_sel),
    .io_ctl_op1_sel(cpath_io_ctl_op1_sel),
    .io_ctl_op2_sel(cpath_io_ctl_op2_sel),
    .io_ctl_alu_fun(cpath_io_ctl_alu_fun),
    .io_ctl_wb_sel(cpath_io_ctl_wb_sel),
    .io_ctl_rf_wen(cpath_io_ctl_rf_wen),
    .io_ctl_bypassable(cpath_io_ctl_bypassable),
    .io_ctl_csr_cmd(cpath_io_ctl_csr_cmd),
    .io_ctl_dmem_val(cpath_io_ctl_dmem_val),
    .io_ctl_dmem_fcn(cpath_io_ctl_dmem_fcn),
    .io_ctl_dmem_typ(cpath_io_ctl_dmem_typ),
    .io_ctl_exception(cpath_io_ctl_exception),
    .io_test_decoder_output_is_valid(cpath_io_test_decoder_output_is_valid),
    .io_test_decoder_output_branch_type(cpath_io_test_decoder_output_branch_type),
    .io_test_decoder_output_is_jump(cpath_io_test_decoder_output_is_jump),
    .io_test_decoder_output_op1_select(cpath_io_test_decoder_output_op1_select),
    .io_test_decoder_output_op2_select(cpath_io_test_decoder_output_op2_select),
    .io_test_decoder_output_alu_function(cpath_io_test_decoder_output_alu_function),
    .io_test_decoder_output_wb_select(cpath_io_test_decoder_output_wb_select),
    .io_test_decoder_output_rf_write_enable(cpath_io_test_decoder_output_rf_write_enable),
    .io_test_decoder_output_bypassable(cpath_io_test_decoder_output_bypassable),
    .io_test_decoder_output_mem_enable(cpath_io_test_decoder_output_mem_enable),
    .io_test_decoder_output_mem_command(cpath_io_test_decoder_output_mem_command),
    .io_test_decoder_output_mask_type(cpath_io_test_decoder_output_mask_type),
    .io_test_decoder_output_csr_cmd(cpath_io_test_decoder_output_csr_cmd),
    .io_test_decoder_output_mem(cpath_io_test_decoder_output_mem),
    .io_test_take_evec(cpath_io_test_take_evec),
    .io_test_req_valid(cpath_io_test_req_valid),
    .io_test_resp_valid(cpath_io_test_resp_valid),
    .io_test_ctrl_pc_sel(cpath_io_test_ctrl_pc_sel)
  );
  DatPath dpath (
    .clock(dpath_clock),
    .reset(dpath_reset),
    .io_imem_req_bits_pc(dpath_io_imem_req_bits_pc),
    .io_imem_resp_ready(dpath_io_imem_resp_ready),
    .io_imem_resp_valid(dpath_io_imem_resp_valid),
    .io_imem_resp_bits_pc(dpath_io_imem_resp_bits_pc),
    .io_imem_resp_bits_inst(dpath_io_imem_resp_bits_inst),
    .io_ctl_exe_kill(dpath_io_ctl_exe_kill),
    .io_ctl_pc_sel(dpath_io_ctl_pc_sel),
    .io_ctl_brjmp_sel(dpath_io_ctl_brjmp_sel),
    .io_ctl_op1_sel(dpath_io_ctl_op1_sel),
    .io_ctl_op2_sel(dpath_io_ctl_op2_sel),
    .io_ctl_alu_fun(dpath_io_ctl_alu_fun),
    .io_ctl_wb_sel(dpath_io_ctl_wb_sel),
    .io_ctl_rf_wen(dpath_io_ctl_rf_wen),
    .io_ctl_bypassable(dpath_io_ctl_bypassable),
    .io_ctl_csr_cmd(dpath_io_ctl_csr_cmd),
    .io_ctl_dmem_val(dpath_io_ctl_dmem_val),
    .io_ctl_dmem_fcn(dpath_io_ctl_dmem_fcn),
    .io_ctl_dmem_typ(dpath_io_ctl_dmem_typ),
    .io_ctl_exception(dpath_io_ctl_exception),
    .io_dat_br_eq(dpath_io_dat_br_eq),
    .io_dat_br_lt(dpath_io_dat_br_lt),
    .io_dat_br_ltu(dpath_io_dat_br_ltu),
    .io_dat_csr_eret(dpath_io_dat_csr_eret),
    .io_test_imm_i_sext(dpath_io_test_imm_i_sext),
    .io_test_imm_s_sext(dpath_io_test_imm_s_sext),
    .io_test_imm_b_sext(dpath_io_test_imm_b_sext),
    .io_test_imm_j_sext(dpath_io_test_imm_j_sext),
    .io_test_imm_u(dpath_io_test_imm_u),
    .io_test_rf_rs1_data(dpath_io_test_rf_rs1_data),
    .io_test_rf_rs2_data(dpath_io_test_rf_rs2_data),
    .io_test_exe_rs1_data(dpath_io_test_exe_rs1_data),
    .io_test_exe_rs2_data(dpath_io_test_exe_rs2_data),
    .io_test_alu_out(dpath_io_test_alu_out),
    .io_test_alu_adder_out(dpath_io_test_alu_adder_out),
    .io_test_alu_op1(dpath_io_test_alu_op1),
    .io_test_alu_op2(dpath_io_test_alu_op2),
    .io_test_exe_valid(dpath_io_test_exe_valid),
    .io_test_exe_pc(dpath_io_test_exe_pc),
    .io_test_exe_inst(dpath_io_test_exe_inst),
    .io_test_take_pc(dpath_io_test_take_pc),
    .io_test_take_pc_allbits(dpath_io_test_take_pc_allbits),
    .io_test_exe_jump_reg_target(dpath_io_test_exe_jump_reg_target),
    .io_test_dmem_rdata(dpath_io_test_dmem_rdata),
    .io_test_wb_reg_valid(dpath_io_test_wb_reg_valid),
    .io_test_wb_reg_ctrl_exe_kill(dpath_io_test_wb_reg_ctrl_exe_kill),
    .io_test_wb_reg_ctrl_pc_sel(dpath_io_test_wb_reg_ctrl_pc_sel),
    .io_test_wb_reg_ctrl_brjmp_sel(dpath_io_test_wb_reg_ctrl_brjmp_sel),
    .io_test_wb_reg_ctrl_op1_sel(dpath_io_test_wb_reg_ctrl_op1_sel),
    .io_test_wb_reg_ctrl_op2_sel(dpath_io_test_wb_reg_ctrl_op2_sel),
    .io_test_wb_reg_ctrl_alu_fun(dpath_io_test_wb_reg_ctrl_alu_fun),
    .io_test_wb_reg_ctrl_wb_sel(dpath_io_test_wb_reg_ctrl_wb_sel),
    .io_test_wb_reg_ctrl_rf_wen(dpath_io_test_wb_reg_ctrl_rf_wen),
    .io_test_wb_reg_ctrl_bypassable(dpath_io_test_wb_reg_ctrl_bypassable),
    .io_test_wb_reg_ctrl_csr_cmd(dpath_io_test_wb_reg_ctrl_csr_cmd),
    .io_test_wb_reg_ctrl_dmem_val(dpath_io_test_wb_reg_ctrl_dmem_val),
    .io_test_wb_reg_ctrl_dmem_fcn(dpath_io_test_wb_reg_ctrl_dmem_fcn),
    .io_test_wb_reg_ctrl_dmem_typ(dpath_io_test_wb_reg_ctrl_dmem_typ),
    .io_test_wb_reg_ctrl_exception(dpath_io_test_wb_reg_ctrl_exception),
    .io_test_wb_reg_alu(dpath_io_test_wb_reg_alu),
    .io_test_wb_reg_csr_addr(dpath_io_test_wb_reg_csr_addr),
    .io_test_wb_reg_wbaddr(dpath_io_test_wb_reg_wbaddr),
    .io_test_wb_hazard_stall(dpath_io_test_wb_hazard_stall),
    .io_test_resp_ready(dpath_io_test_resp_ready),
    .io_regfile_test_addr(dpath_io_regfile_test_addr),
    .io_regfile_test_data(dpath_io_regfile_test_data)
  );
  assign io_load_rdata = frontend_io_load_rdata;
  assign io_test_frontend_test_if_pc_next = frontend_io_test_if_pc_next;
  assign io_test_frontend_test_if_reg_pc = frontend_io_test_if_reg_pc;
  assign io_test_frontend_test_if_reg_valid = frontend_io_test_if_reg_valid;
  assign io_test_frontend_test_if_inst = frontend_io_test_if_inst;
  assign io_test_frontend_test_exe_reg_inst = frontend_io_test_exe_reg_inst;
  assign io_test_frontend_test_exe_reg_pc = frontend_io_test_exe_reg_pc;
  assign io_test_frontend_test_exe_reg_valid = frontend_io_test_exe_reg_valid;
  assign io_test_frontend_test_resp_ready = frontend_io_test_resp_ready;
  assign io_test_frontend_test_req_valid = frontend_io_test_req_valid;
  assign io_test_frontend_test_req_bits_pc = frontend_io_test_req_bits_pc;
  assign io_test_cpath_test_decoder_output_is_valid = cpath_io_test_decoder_output_is_valid;
  assign io_test_cpath_test_decoder_output_branch_type = cpath_io_test_decoder_output_branch_type;
  assign io_test_cpath_test_decoder_output_is_jump = cpath_io_test_decoder_output_is_jump;
  assign io_test_cpath_test_decoder_output_op1_select = cpath_io_test_decoder_output_op1_select;
  assign io_test_cpath_test_decoder_output_op2_select = cpath_io_test_decoder_output_op2_select;
  assign io_test_cpath_test_decoder_output_alu_function = cpath_io_test_decoder_output_alu_function;
  assign io_test_cpath_test_decoder_output_wb_select = cpath_io_test_decoder_output_wb_select;
  assign io_test_cpath_test_decoder_output_rf_write_enable = cpath_io_test_decoder_output_rf_write_enable;
  assign io_test_cpath_test_decoder_output_bypassable = cpath_io_test_decoder_output_bypassable;
  assign io_test_cpath_test_decoder_output_mem_enable = cpath_io_test_decoder_output_mem_enable;
  assign io_test_cpath_test_decoder_output_mem_command = cpath_io_test_decoder_output_mem_command;
  assign io_test_cpath_test_decoder_output_mask_type = cpath_io_test_decoder_output_mask_type;
  assign io_test_cpath_test_decoder_output_csr_cmd = cpath_io_test_decoder_output_csr_cmd;
  assign io_test_cpath_test_decoder_output_mem = cpath_io_test_decoder_output_mem;
  assign io_test_cpath_test_take_evec = cpath_io_test_take_evec;
  assign io_test_cpath_test_req_valid = cpath_io_test_req_valid;
  assign io_test_cpath_test_resp_valid = cpath_io_test_resp_valid;
  assign io_test_cpath_test_ctrl_pc_sel = cpath_io_test_ctrl_pc_sel;
  assign io_test_dpath_test_imm_i_sext = dpath_io_test_imm_i_sext;
  assign io_test_dpath_test_imm_s_sext = dpath_io_test_imm_s_sext;
  assign io_test_dpath_test_imm_b_sext = dpath_io_test_imm_b_sext;
  assign io_test_dpath_test_imm_j_sext = dpath_io_test_imm_j_sext;
  assign io_test_dpath_test_imm_u = dpath_io_test_imm_u;
  assign io_test_dpath_test_rf_rs1_data = dpath_io_test_rf_rs1_data;
  assign io_test_dpath_test_rf_rs2_data = dpath_io_test_rf_rs2_data;
  assign io_test_dpath_test_exe_rs1_data = dpath_io_test_exe_rs1_data;
  assign io_test_dpath_test_exe_rs2_data = dpath_io_test_exe_rs2_data;
  assign io_test_dpath_test_alu_out = dpath_io_test_alu_out;
  assign io_test_dpath_test_alu_adder_out = dpath_io_test_alu_adder_out;
  assign io_test_dpath_test_alu_op1 = dpath_io_test_alu_op1;
  assign io_test_dpath_test_alu_op2 = dpath_io_test_alu_op2;
  assign io_test_dpath_test_exe_valid = dpath_io_test_exe_valid;
  assign io_test_dpath_test_exe_pc = dpath_io_test_exe_pc;
  assign io_test_dpath_test_exe_inst = dpath_io_test_exe_inst;
  assign io_test_dpath_test_take_pc = dpath_io_test_take_pc;
  assign io_test_dpath_test_take_pc_allbits = dpath_io_test_take_pc_allbits;
  assign io_test_dpath_test_exe_jump_reg_target = dpath_io_test_exe_jump_reg_target;
  assign io_test_dpath_test_dmem_rdata = dpath_io_test_dmem_rdata;
  assign io_test_dpath_test_wb_reg_valid = dpath_io_test_wb_reg_valid;
  assign io_test_dpath_test_wb_reg_ctrl_exe_kill = dpath_io_test_wb_reg_ctrl_exe_kill;
  assign io_test_dpath_test_wb_reg_ctrl_pc_sel = dpath_io_test_wb_reg_ctrl_pc_sel;
  assign io_test_dpath_test_wb_reg_ctrl_brjmp_sel = dpath_io_test_wb_reg_ctrl_brjmp_sel;
  assign io_test_dpath_test_wb_reg_ctrl_op1_sel = dpath_io_test_wb_reg_ctrl_op1_sel;
  assign io_test_dpath_test_wb_reg_ctrl_op2_sel = dpath_io_test_wb_reg_ctrl_op2_sel;
  assign io_test_dpath_test_wb_reg_ctrl_alu_fun = dpath_io_test_wb_reg_ctrl_alu_fun;
  assign io_test_dpath_test_wb_reg_ctrl_wb_sel = dpath_io_test_wb_reg_ctrl_wb_sel;
  assign io_test_dpath_test_wb_reg_ctrl_rf_wen = dpath_io_test_wb_reg_ctrl_rf_wen;
  assign io_test_dpath_test_wb_reg_ctrl_bypassable = dpath_io_test_wb_reg_ctrl_bypassable;
  assign io_test_dpath_test_wb_reg_ctrl_csr_cmd = dpath_io_test_wb_reg_ctrl_csr_cmd;
  assign io_test_dpath_test_wb_reg_ctrl_dmem_val = dpath_io_test_wb_reg_ctrl_dmem_val;
  assign io_test_dpath_test_wb_reg_ctrl_dmem_fcn = dpath_io_test_wb_reg_ctrl_dmem_fcn;
  assign io_test_dpath_test_wb_reg_ctrl_dmem_typ = dpath_io_test_wb_reg_ctrl_dmem_typ;
  assign io_test_dpath_test_wb_reg_ctrl_exception = dpath_io_test_wb_reg_ctrl_exception;
  assign io_test_dpath_test_wb_reg_ctrl_exc_cause = 32'h0;
  assign io_test_dpath_test_wb_reg_alu = dpath_io_test_wb_reg_alu;
  assign io_test_dpath_test_wb_reg_csr_addr = dpath_io_test_wb_reg_csr_addr;
  assign io_test_dpath_test_wb_reg_wbaddr = dpath_io_test_wb_reg_wbaddr;
  assign io_test_dpath_test_wb_hazard_stall = dpath_io_test_wb_hazard_stall;
  assign io_test_dpath_test_resp_ready = dpath_io_test_resp_ready;
  assign io_regfile_test_data = dpath_io_regfile_test_data;
  assign frontend_io_cpu_req_valid = cpath_io_imem_req_valid;
  assign frontend_io_cpu_req_bits_pc = dpath_io_imem_req_bits_pc;
  assign frontend_io_cpu_resp_ready = dpath_io_imem_resp_ready;
  assign frontend_io_load_enable = io_load_enable;
  assign frontend_io_load_wen = io_load_wen;
  assign frontend_io_load_addr = io_load_addr;
  assign frontend_io_load_instr = io_load_instr;
  assign frontend_clock = clock;
  assign frontend_reset = reset;
  assign cpath_io_imem_resp_valid = frontend_io_cpu_resp_valid;
  assign cpath_io_imem_resp_bits_inst = frontend_io_cpu_resp_bits_inst;
  assign cpath_io_dat_br_eq = dpath_io_dat_br_eq;
  assign cpath_io_dat_br_lt = dpath_io_dat_br_lt;
  assign cpath_io_dat_br_ltu = dpath_io_dat_br_ltu;
  assign cpath_io_dat_csr_eret = dpath_io_dat_csr_eret;
  assign cpath_clock = clock;
  assign dpath_io_imem_resp_valid = frontend_io_cpu_resp_valid;
  assign dpath_io_imem_resp_bits_pc = frontend_io_cpu_resp_bits_pc;
  assign dpath_io_imem_resp_bits_inst = frontend_io_cpu_resp_bits_inst;
  assign dpath_io_ctl_exe_kill = cpath_io_ctl_exe_kill;
  assign dpath_io_ctl_pc_sel = cpath_io_ctl_pc_sel;
  assign dpath_io_ctl_brjmp_sel = cpath_io_ctl_brjmp_sel;
  assign dpath_io_ctl_op1_sel = cpath_io_ctl_op1_sel;
  assign dpath_io_ctl_op2_sel = cpath_io_ctl_op2_sel;
  assign dpath_io_ctl_alu_fun = cpath_io_ctl_alu_fun;
  assign dpath_io_ctl_wb_sel = cpath_io_ctl_wb_sel;
  assign dpath_io_ctl_rf_wen = cpath_io_ctl_rf_wen;
  assign dpath_io_ctl_bypassable = cpath_io_ctl_bypassable;
  assign dpath_io_ctl_csr_cmd = cpath_io_ctl_csr_cmd;
  assign dpath_io_ctl_dmem_val = cpath_io_ctl_dmem_val;
  assign dpath_io_ctl_dmem_fcn = cpath_io_ctl_dmem_fcn;
  assign dpath_io_ctl_dmem_typ = cpath_io_ctl_dmem_typ;
  assign dpath_io_ctl_exception = cpath_io_ctl_exception;
  assign dpath_io_regfile_test_addr = io_regfile_test_addr;
  assign dpath_clock = clock;
  assign dpath_reset = reset;
endmodule
