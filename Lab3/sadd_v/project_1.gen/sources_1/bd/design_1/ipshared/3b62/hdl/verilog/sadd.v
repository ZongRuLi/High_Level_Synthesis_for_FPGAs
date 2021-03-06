// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="sadd_sadd,hls_ip_2020_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.552000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=181,HLS_SYN_LUT=288,HLS_VERSION=2020_2}" *)

module sadd (
        ap_clk,
        ap_rst_n,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        INPUT1_TDATA,
        INPUT1_TVALID,
        INPUT1_TREADY,
        INPUT1_TKEEP,
        INPUT1_TSTRB,
        INPUT1_TLAST,
        INPUT2_TDATA,
        INPUT2_TVALID,
        INPUT2_TREADY,
        INPUT2_TKEEP,
        INPUT2_TSTRB,
        INPUT2_TLAST,
        OUTPUT_r_TDATA,
        OUTPUT_r_TVALID,
        OUTPUT_r_TREADY,
        OUTPUT_r_TKEEP,
        OUTPUT_r_TSTRB,
        OUTPUT_r_TLAST,
        s_axi_CTRL_AWVALID,
        s_axi_CTRL_AWREADY,
        s_axi_CTRL_AWADDR,
        s_axi_CTRL_WVALID,
        s_axi_CTRL_WREADY,
        s_axi_CTRL_WDATA,
        s_axi_CTRL_WSTRB,
        s_axi_CTRL_ARVALID,
        s_axi_CTRL_ARREADY,
        s_axi_CTRL_ARADDR,
        s_axi_CTRL_RVALID,
        s_axi_CTRL_RREADY,
        s_axi_CTRL_RDATA,
        s_axi_CTRL_RRESP,
        s_axi_CTRL_BVALID,
        s_axi_CTRL_BREADY,
        s_axi_CTRL_BRESP
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state5 = 3'd4;
parameter    C_S_AXI_CTRL_DATA_WIDTH = 32;
parameter    C_S_AXI_CTRL_ADDR_WIDTH = 5;
parameter    C_S_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_CTRL_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] INPUT1_TDATA;
input   INPUT1_TVALID;
output   INPUT1_TREADY;
input  [3:0] INPUT1_TKEEP;
input  [3:0] INPUT1_TSTRB;
input  [0:0] INPUT1_TLAST;
input  [31:0] INPUT2_TDATA;
input   INPUT2_TVALID;
output   INPUT2_TREADY;
input  [3:0] INPUT2_TKEEP;
input  [3:0] INPUT2_TSTRB;
input  [0:0] INPUT2_TLAST;
output  [31:0] OUTPUT_r_TDATA;
output   OUTPUT_r_TVALID;
input   OUTPUT_r_TREADY;
output  [3:0] OUTPUT_r_TKEEP;
output  [3:0] OUTPUT_r_TSTRB;
output  [0:0] OUTPUT_r_TLAST;
input   s_axi_CTRL_AWVALID;
output   s_axi_CTRL_AWREADY;
input  [C_S_AXI_CTRL_ADDR_WIDTH - 1:0] s_axi_CTRL_AWADDR;
input   s_axi_CTRL_WVALID;
output   s_axi_CTRL_WREADY;
input  [C_S_AXI_CTRL_DATA_WIDTH - 1:0] s_axi_CTRL_WDATA;
input  [C_S_AXI_CTRL_WSTRB_WIDTH - 1:0] s_axi_CTRL_WSTRB;
input   s_axi_CTRL_ARVALID;
output   s_axi_CTRL_ARREADY;
input  [C_S_AXI_CTRL_ADDR_WIDTH - 1:0] s_axi_CTRL_ARADDR;
output   s_axi_CTRL_RVALID;
input   s_axi_CTRL_RREADY;
output  [C_S_AXI_CTRL_DATA_WIDTH - 1:0] s_axi_CTRL_RDATA;
output  [1:0] s_axi_CTRL_RRESP;
output   s_axi_CTRL_BVALID;
input   s_axi_CTRL_BREADY;
output  [1:0] s_axi_CTRL_BRESP;

reg ap_done;
reg ap_idle;
reg ap_ready;

 reg    ap_rst_n_inv;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] length_r;
reg    INPUT1_TDATA_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0;
wire   [0:0] icmp_ln14_fu_133_p2;
reg    INPUT2_TDATA_blk_n;
reg    OUTPUT_r_TDATA_blk_n;
reg    ap_enable_reg_pp0_iter1;
reg   [0:0] icmp_ln14_reg_174;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] icmp_ln14_reg_174_pp0_iter1_reg;
reg   [31:0] i_reg_116;
reg   [31:0] length_read_reg_164;
wire   [31:0] i_1_fu_127_p2;
reg    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_state3_io;
reg    ap_block_state4_pp0_stage0_iter2;
reg    ap_block_state4_io;
reg    ap_block_pp0_stage0_11001;
reg   [3:0] tmp_i_keep_reg_178;
reg   [3:0] tmp_i_strb_reg_183;
reg   [0:0] tmp_i_last_reg_188;
wire   [31:0] cur1_data_V_1_fu_158_p2;
reg   [31:0] cur1_data_V_1_reg_193;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_block_pp0_stage0_01001;
wire    ap_CS_fsm_state5;
wire    regslice_both_OUTPUT_V_data_V_U_apdone_blk;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    regslice_both_INPUT1_V_data_V_U_apdone_blk;
wire   [31:0] INPUT1_TDATA_int_regslice;
wire    INPUT1_TVALID_int_regslice;
reg    INPUT1_TREADY_int_regslice;
wire    regslice_both_INPUT1_V_data_V_U_ack_in;
wire    regslice_both_INPUT1_V_keep_V_U_apdone_blk;
wire   [3:0] INPUT1_TKEEP_int_regslice;
wire    regslice_both_INPUT1_V_keep_V_U_vld_out;
wire    regslice_both_INPUT1_V_keep_V_U_ack_in;
wire    regslice_both_INPUT1_V_strb_V_U_apdone_blk;
wire   [3:0] INPUT1_TSTRB_int_regslice;
wire    regslice_both_INPUT1_V_strb_V_U_vld_out;
wire    regslice_both_INPUT1_V_strb_V_U_ack_in;
wire    regslice_both_INPUT1_V_last_V_U_apdone_blk;
wire   [0:0] INPUT1_TLAST_int_regslice;
wire    regslice_both_INPUT1_V_last_V_U_vld_out;
wire    regslice_both_INPUT1_V_last_V_U_ack_in;
wire    regslice_both_INPUT2_V_data_V_U_apdone_blk;
wire   [31:0] INPUT2_TDATA_int_regslice;
wire    INPUT2_TVALID_int_regslice;
reg    INPUT2_TREADY_int_regslice;
wire    regslice_both_INPUT2_V_data_V_U_ack_in;
wire    regslice_both_INPUT2_V_keep_V_U_apdone_blk;
wire   [3:0] INPUT2_TKEEP_int_regslice;
wire    regslice_both_INPUT2_V_keep_V_U_vld_out;
wire    regslice_both_INPUT2_V_keep_V_U_ack_in;
wire    regslice_both_INPUT2_V_strb_V_U_apdone_blk;
wire   [3:0] INPUT2_TSTRB_int_regslice;
wire    regslice_both_INPUT2_V_strb_V_U_vld_out;
wire    regslice_both_INPUT2_V_strb_V_U_ack_in;
wire    regslice_both_INPUT2_V_last_V_U_apdone_blk;
wire   [0:0] INPUT2_TLAST_int_regslice;
wire    regslice_both_INPUT2_V_last_V_U_vld_out;
wire    regslice_both_INPUT2_V_last_V_U_ack_in;
reg    OUTPUT_r_TVALID_int_regslice;
wire    OUTPUT_r_TREADY_int_regslice;
wire    regslice_both_OUTPUT_V_data_V_U_vld_out;
wire    regslice_both_OUTPUT_V_keep_V_U_apdone_blk;
wire    regslice_both_OUTPUT_V_keep_V_U_ack_in_dummy;
wire    regslice_both_OUTPUT_V_keep_V_U_vld_out;
wire    regslice_both_OUTPUT_V_strb_V_U_apdone_blk;
wire    regslice_both_OUTPUT_V_strb_V_U_ack_in_dummy;
wire    regslice_both_OUTPUT_V_strb_V_U_vld_out;
wire    regslice_both_OUTPUT_V_last_V_U_apdone_blk;
wire    regslice_both_OUTPUT_V_last_V_U_ack_in_dummy;
wire    regslice_both_OUTPUT_V_last_V_U_vld_out;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

sadd_CTRL_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_CTRL_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_CTRL_DATA_WIDTH ))
CTRL_s_axi_U(
    .AWVALID(s_axi_CTRL_AWVALID),
    .AWREADY(s_axi_CTRL_AWREADY),
    .AWADDR(s_axi_CTRL_AWADDR),
    .WVALID(s_axi_CTRL_WVALID),
    .WREADY(s_axi_CTRL_WREADY),
    .WDATA(s_axi_CTRL_WDATA),
    .WSTRB(s_axi_CTRL_WSTRB),
    .ARVALID(s_axi_CTRL_ARVALID),
    .ARREADY(s_axi_CTRL_ARREADY),
    .ARADDR(s_axi_CTRL_ARADDR),
    .RVALID(s_axi_CTRL_RVALID),
    .RREADY(s_axi_CTRL_RREADY),
    .RDATA(s_axi_CTRL_RDATA),
    .RRESP(s_axi_CTRL_RRESP),
    .BVALID(s_axi_CTRL_BVALID),
    .BREADY(s_axi_CTRL_BREADY),
    .BRESP(s_axi_CTRL_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .length_r(length_r)
);

sadd_regslice_both #(
    .DataWidth( 32 ))
regslice_both_INPUT1_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(INPUT1_TDATA),
    .vld_in(INPUT1_TVALID),
    .ack_in(regslice_both_INPUT1_V_data_V_U_ack_in),
    .data_out(INPUT1_TDATA_int_regslice),
    .vld_out(INPUT1_TVALID_int_regslice),
    .ack_out(INPUT1_TREADY_int_regslice),
    .apdone_blk(regslice_both_INPUT1_V_data_V_U_apdone_blk)
);

sadd_regslice_both #(
    .DataWidth( 4 ))
regslice_both_INPUT1_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(INPUT1_TKEEP),
    .vld_in(INPUT1_TVALID),
    .ack_in(regslice_both_INPUT1_V_keep_V_U_ack_in),
    .data_out(INPUT1_TKEEP_int_regslice),
    .vld_out(regslice_both_INPUT1_V_keep_V_U_vld_out),
    .ack_out(INPUT1_TREADY_int_regslice),
    .apdone_blk(regslice_both_INPUT1_V_keep_V_U_apdone_blk)
);

sadd_regslice_both #(
    .DataWidth( 4 ))
regslice_both_INPUT1_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(INPUT1_TSTRB),
    .vld_in(INPUT1_TVALID),
    .ack_in(regslice_both_INPUT1_V_strb_V_U_ack_in),
    .data_out(INPUT1_TSTRB_int_regslice),
    .vld_out(regslice_both_INPUT1_V_strb_V_U_vld_out),
    .ack_out(INPUT1_TREADY_int_regslice),
    .apdone_blk(regslice_both_INPUT1_V_strb_V_U_apdone_blk)
);

sadd_regslice_both #(
    .DataWidth( 1 ))
regslice_both_INPUT1_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(INPUT1_TLAST),
    .vld_in(INPUT1_TVALID),
    .ack_in(regslice_both_INPUT1_V_last_V_U_ack_in),
    .data_out(INPUT1_TLAST_int_regslice),
    .vld_out(regslice_both_INPUT1_V_last_V_U_vld_out),
    .ack_out(INPUT1_TREADY_int_regslice),
    .apdone_blk(regslice_both_INPUT1_V_last_V_U_apdone_blk)
);

sadd_regslice_both #(
    .DataWidth( 32 ))
regslice_both_INPUT2_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(INPUT2_TDATA),
    .vld_in(INPUT2_TVALID),
    .ack_in(regslice_both_INPUT2_V_data_V_U_ack_in),
    .data_out(INPUT2_TDATA_int_regslice),
    .vld_out(INPUT2_TVALID_int_regslice),
    .ack_out(INPUT2_TREADY_int_regslice),
    .apdone_blk(regslice_both_INPUT2_V_data_V_U_apdone_blk)
);

sadd_regslice_both #(
    .DataWidth( 4 ))
regslice_both_INPUT2_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(INPUT2_TKEEP),
    .vld_in(INPUT2_TVALID),
    .ack_in(regslice_both_INPUT2_V_keep_V_U_ack_in),
    .data_out(INPUT2_TKEEP_int_regslice),
    .vld_out(regslice_both_INPUT2_V_keep_V_U_vld_out),
    .ack_out(INPUT2_TREADY_int_regslice),
    .apdone_blk(regslice_both_INPUT2_V_keep_V_U_apdone_blk)
);

sadd_regslice_both #(
    .DataWidth( 4 ))
regslice_both_INPUT2_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(INPUT2_TSTRB),
    .vld_in(INPUT2_TVALID),
    .ack_in(regslice_both_INPUT2_V_strb_V_U_ack_in),
    .data_out(INPUT2_TSTRB_int_regslice),
    .vld_out(regslice_both_INPUT2_V_strb_V_U_vld_out),
    .ack_out(INPUT2_TREADY_int_regslice),
    .apdone_blk(regslice_both_INPUT2_V_strb_V_U_apdone_blk)
);

sadd_regslice_both #(
    .DataWidth( 1 ))
regslice_both_INPUT2_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(INPUT2_TLAST),
    .vld_in(INPUT2_TVALID),
    .ack_in(regslice_both_INPUT2_V_last_V_U_ack_in),
    .data_out(INPUT2_TLAST_int_regslice),
    .vld_out(regslice_both_INPUT2_V_last_V_U_vld_out),
    .ack_out(INPUT2_TREADY_int_regslice),
    .apdone_blk(regslice_both_INPUT2_V_last_V_U_apdone_blk)
);

sadd_regslice_both #(
    .DataWidth( 32 ))
regslice_both_OUTPUT_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(cur1_data_V_1_reg_193),
    .vld_in(OUTPUT_r_TVALID_int_regslice),
    .ack_in(OUTPUT_r_TREADY_int_regslice),
    .data_out(OUTPUT_r_TDATA),
    .vld_out(regslice_both_OUTPUT_V_data_V_U_vld_out),
    .ack_out(OUTPUT_r_TREADY),
    .apdone_blk(regslice_both_OUTPUT_V_data_V_U_apdone_blk)
);

sadd_regslice_both #(
    .DataWidth( 4 ))
regslice_both_OUTPUT_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(tmp_i_keep_reg_178),
    .vld_in(OUTPUT_r_TVALID_int_regslice),
    .ack_in(regslice_both_OUTPUT_V_keep_V_U_ack_in_dummy),
    .data_out(OUTPUT_r_TKEEP),
    .vld_out(regslice_both_OUTPUT_V_keep_V_U_vld_out),
    .ack_out(OUTPUT_r_TREADY),
    .apdone_blk(regslice_both_OUTPUT_V_keep_V_U_apdone_blk)
);

sadd_regslice_both #(
    .DataWidth( 4 ))
regslice_both_OUTPUT_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(tmp_i_strb_reg_183),
    .vld_in(OUTPUT_r_TVALID_int_regslice),
    .ack_in(regslice_both_OUTPUT_V_strb_V_U_ack_in_dummy),
    .data_out(OUTPUT_r_TSTRB),
    .vld_out(regslice_both_OUTPUT_V_strb_V_U_vld_out),
    .ack_out(OUTPUT_r_TREADY),
    .apdone_blk(regslice_both_OUTPUT_V_strb_V_U_apdone_blk)
);

sadd_regslice_both #(
    .DataWidth( 1 ))
regslice_both_OUTPUT_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(tmp_i_last_reg_188),
    .vld_in(OUTPUT_r_TVALID_int_regslice),
    .ack_in(regslice_both_OUTPUT_V_last_V_U_ack_in_dummy),
    .data_out(OUTPUT_r_TLAST),
    .vld_out(regslice_both_OUTPUT_V_last_V_U_vld_out),
    .ack_out(OUTPUT_r_TREADY),
    .apdone_blk(regslice_both_OUTPUT_V_last_V_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln14_fu_133_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_reg_116 <= i_1_fu_127_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_116 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln14_fu_133_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cur1_data_V_1_reg_193 <= cur1_data_V_1_fu_158_p2;
        tmp_i_keep_reg_178 <= INPUT1_TKEEP_int_regslice;
        tmp_i_last_reg_188 <= INPUT1_TLAST_int_regslice;
        tmp_i_strb_reg_183 <= INPUT1_TSTRB_int_regslice;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln14_reg_174 <= icmp_ln14_fu_133_p2;
        icmp_ln14_reg_174_pp0_iter1_reg <= icmp_ln14_reg_174;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        length_read_reg_164 <= length_r;
    end
end

always @ (*) begin
    if (((icmp_ln14_fu_133_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        INPUT1_TDATA_blk_n = INPUT1_TVALID_int_regslice;
    end else begin
        INPUT1_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln14_fu_133_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        INPUT1_TREADY_int_regslice = 1'b1;
    end else begin
        INPUT1_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln14_fu_133_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        INPUT2_TDATA_blk_n = INPUT2_TVALID_int_regslice;
    end else begin
        INPUT2_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln14_fu_133_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        INPUT2_TREADY_int_regslice = 1'b1;
    end else begin
        INPUT2_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln14_reg_174_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((icmp_ln14_reg_174 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        OUTPUT_r_TDATA_blk_n = OUTPUT_r_TREADY_int_regslice;
    end else begin
        OUTPUT_r_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln14_reg_174 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        OUTPUT_r_TVALID_int_regslice = 1'b1;
    end else begin
        OUTPUT_r_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln14_fu_133_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if (((regslice_both_OUTPUT_V_data_V_U_apdone_blk == 1'b0) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((regslice_both_OUTPUT_V_data_V_U_apdone_blk == 1'b0) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter1 == 1'b0) & (icmp_ln14_fu_133_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)) & ~((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((ap_enable_reg_pp0_iter1 == 1'b0) & (icmp_ln14_fu_133_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((regslice_both_OUTPUT_V_data_V_U_apdone_blk == 1'b0) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign INPUT1_TREADY = regslice_both_INPUT1_V_data_V_U_ack_in;

assign INPUT2_TREADY = regslice_both_INPUT2_V_data_V_U_ack_in;

assign OUTPUT_r_TVALID = regslice_both_OUTPUT_V_data_V_U_vld_out;

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((icmp_ln14_reg_174_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == OUTPUT_r_TREADY_int_regslice)) | ((icmp_ln14_reg_174 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == OUTPUT_r_TREADY_int_regslice)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (((icmp_ln14_fu_133_p2 == 1'd0) & (1'b0 == INPUT2_TVALID_int_regslice)) | ((icmp_ln14_fu_133_p2 == 1'd0) & (1'b0 == INPUT1_TVALID_int_regslice)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter2 == 1'b1) & ((1'b1 == ap_block_state4_io) | ((icmp_ln14_reg_174_pp0_iter1_reg == 1'd0) & (1'b0 == OUTPUT_r_TREADY_int_regslice)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state3_io) | ((icmp_ln14_reg_174 == 1'd0) & (1'b0 == OUTPUT_r_TREADY_int_regslice)))) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (((icmp_ln14_fu_133_p2 == 1'd0) & (1'b0 == INPUT2_TVALID_int_regslice)) | ((icmp_ln14_fu_133_p2 == 1'd0) & (1'b0 == INPUT1_TVALID_int_regslice)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter2 == 1'b1) & ((1'b1 == ap_block_state4_io) | ((icmp_ln14_reg_174_pp0_iter1_reg == 1'd0) & (1'b0 == OUTPUT_r_TREADY_int_regslice)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state3_io) | ((icmp_ln14_reg_174 == 1'd0) & (1'b0 == OUTPUT_r_TREADY_int_regslice)))) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (((icmp_ln14_fu_133_p2 == 1'd0) & (1'b0 == INPUT2_TVALID_int_regslice)) | ((icmp_ln14_fu_133_p2 == 1'd0) & (1'b0 == INPUT1_TVALID_int_regslice)))));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter0 = (((icmp_ln14_fu_133_p2 == 1'd0) & (1'b0 == INPUT2_TVALID_int_regslice)) | ((icmp_ln14_fu_133_p2 == 1'd0) & (1'b0 == INPUT1_TVALID_int_regslice)));
end

always @ (*) begin
    ap_block_state3_io = ((icmp_ln14_reg_174 == 1'd0) & (1'b0 == OUTPUT_r_TREADY_int_regslice));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((icmp_ln14_reg_174 == 1'd0) & (1'b0 == OUTPUT_r_TREADY_int_regslice));
end

always @ (*) begin
    ap_block_state4_io = ((icmp_ln14_reg_174_pp0_iter1_reg == 1'd0) & (1'b0 == OUTPUT_r_TREADY_int_regslice));
end

always @ (*) begin
    ap_block_state4_pp0_stage0_iter2 = ((icmp_ln14_reg_174_pp0_iter1_reg == 1'd0) & (1'b0 == OUTPUT_r_TREADY_int_regslice));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign cur1_data_V_1_fu_158_p2 = (INPUT2_TDATA_int_regslice + INPUT1_TDATA_int_regslice);

assign i_1_fu_127_p2 = (i_reg_116 + 32'd1);

assign icmp_ln14_fu_133_p2 = ((i_reg_116 == length_read_reg_164) ? 1'b1 : 1'b0);

endmodule //sadd
