// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dft_dft_Pipeline_4 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_output_re_r_AWVALID,
        m_axi_output_re_r_AWREADY,
        m_axi_output_re_r_AWADDR,
        m_axi_output_re_r_AWID,
        m_axi_output_re_r_AWLEN,
        m_axi_output_re_r_AWSIZE,
        m_axi_output_re_r_AWBURST,
        m_axi_output_re_r_AWLOCK,
        m_axi_output_re_r_AWCACHE,
        m_axi_output_re_r_AWPROT,
        m_axi_output_re_r_AWQOS,
        m_axi_output_re_r_AWREGION,
        m_axi_output_re_r_AWUSER,
        m_axi_output_re_r_WVALID,
        m_axi_output_re_r_WREADY,
        m_axi_output_re_r_WDATA,
        m_axi_output_re_r_WSTRB,
        m_axi_output_re_r_WLAST,
        m_axi_output_re_r_WID,
        m_axi_output_re_r_WUSER,
        m_axi_output_re_r_ARVALID,
        m_axi_output_re_r_ARREADY,
        m_axi_output_re_r_ARADDR,
        m_axi_output_re_r_ARID,
        m_axi_output_re_r_ARLEN,
        m_axi_output_re_r_ARSIZE,
        m_axi_output_re_r_ARBURST,
        m_axi_output_re_r_ARLOCK,
        m_axi_output_re_r_ARCACHE,
        m_axi_output_re_r_ARPROT,
        m_axi_output_re_r_ARQOS,
        m_axi_output_re_r_ARREGION,
        m_axi_output_re_r_ARUSER,
        m_axi_output_re_r_RVALID,
        m_axi_output_re_r_RREADY,
        m_axi_output_re_r_RDATA,
        m_axi_output_re_r_RLAST,
        m_axi_output_re_r_RID,
        m_axi_output_re_r_RUSER,
        m_axi_output_re_r_RRESP,
        m_axi_output_re_r_BVALID,
        m_axi_output_re_r_BREADY,
        m_axi_output_re_r_BRESP,
        m_axi_output_re_r_BID,
        m_axi_output_re_r_BUSER,
        sext_ln66,
        re_buff_address0,
        re_buff_ce0,
        re_buff_q0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_output_re_r_AWVALID;
input   m_axi_output_re_r_AWREADY;
output  [63:0] m_axi_output_re_r_AWADDR;
output  [0:0] m_axi_output_re_r_AWID;
output  [31:0] m_axi_output_re_r_AWLEN;
output  [2:0] m_axi_output_re_r_AWSIZE;
output  [1:0] m_axi_output_re_r_AWBURST;
output  [1:0] m_axi_output_re_r_AWLOCK;
output  [3:0] m_axi_output_re_r_AWCACHE;
output  [2:0] m_axi_output_re_r_AWPROT;
output  [3:0] m_axi_output_re_r_AWQOS;
output  [3:0] m_axi_output_re_r_AWREGION;
output  [0:0] m_axi_output_re_r_AWUSER;
output   m_axi_output_re_r_WVALID;
input   m_axi_output_re_r_WREADY;
output  [31:0] m_axi_output_re_r_WDATA;
output  [3:0] m_axi_output_re_r_WSTRB;
output   m_axi_output_re_r_WLAST;
output  [0:0] m_axi_output_re_r_WID;
output  [0:0] m_axi_output_re_r_WUSER;
output   m_axi_output_re_r_ARVALID;
input   m_axi_output_re_r_ARREADY;
output  [63:0] m_axi_output_re_r_ARADDR;
output  [0:0] m_axi_output_re_r_ARID;
output  [31:0] m_axi_output_re_r_ARLEN;
output  [2:0] m_axi_output_re_r_ARSIZE;
output  [1:0] m_axi_output_re_r_ARBURST;
output  [1:0] m_axi_output_re_r_ARLOCK;
output  [3:0] m_axi_output_re_r_ARCACHE;
output  [2:0] m_axi_output_re_r_ARPROT;
output  [3:0] m_axi_output_re_r_ARQOS;
output  [3:0] m_axi_output_re_r_ARREGION;
output  [0:0] m_axi_output_re_r_ARUSER;
input   m_axi_output_re_r_RVALID;
output   m_axi_output_re_r_RREADY;
input  [31:0] m_axi_output_re_r_RDATA;
input   m_axi_output_re_r_RLAST;
input  [0:0] m_axi_output_re_r_RID;
input  [0:0] m_axi_output_re_r_RUSER;
input  [1:0] m_axi_output_re_r_RRESP;
input   m_axi_output_re_r_BVALID;
output   m_axi_output_re_r_BREADY;
input  [1:0] m_axi_output_re_r_BRESP;
input  [0:0] m_axi_output_re_r_BID;
input  [0:0] m_axi_output_re_r_BUSER;
input  [61:0] sext_ln66;
output  [9:0] re_buff_address0;
output   re_buff_ce0;
input  [31:0] re_buff_q0;

reg ap_idle;
reg m_axi_output_re_r_WVALID;
reg re_buff_ce0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] exitcond176_fu_91_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    output_re_r_blk_n_W;
wire    ap_block_pp0_stage0;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] exitcond176_reg_134;
reg   [31:0] re_buff_load_reg_148;
reg    ap_condition_exit_pp0_iter1_stage0;
wire   [63:0] loop_index10_cast_fu_103_p1;
wire    ap_block_pp0_stage0_01001;
reg   [10:0] loop_index10_fu_48;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_loop_index10_load;
wire   [10:0] empty_25_fu_97_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
end

dft_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((exitcond176_fu_91_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            loop_index10_fu_48 <= empty_25_fu_97_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            loop_index10_fu_48 <= 11'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        exitcond176_reg_134 <= exitcond176_fu_91_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond176_reg_134 == 1'd0))) begin
        re_buff_load_reg_148 <= re_buff_q0;
    end
end

always @ (*) begin
    if (((exitcond176_fu_91_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond176_reg_134 == 1'd1))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_loop_index10_load = 11'd0;
    end else begin
        ap_sig_allocacmp_loop_index10_load = loop_index10_fu_48;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        m_axi_output_re_r_WVALID = 1'b1;
    end else begin
        m_axi_output_re_r_WVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        output_re_r_blk_n_W = m_axi_output_re_r_WREADY;
    end else begin
        output_re_r_blk_n_W = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        re_buff_ce0 = 1'b1;
    end else begin
        re_buff_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((m_axi_output_re_r_WREADY == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((m_axi_output_re_r_WREADY == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign empty_25_fu_97_p2 = (ap_sig_allocacmp_loop_index10_load + 11'd1);

assign exitcond176_fu_91_p2 = ((ap_sig_allocacmp_loop_index10_load == 11'd1024) ? 1'b1 : 1'b0);

assign loop_index10_cast_fu_103_p1 = ap_sig_allocacmp_loop_index10_load;

assign m_axi_output_re_r_ARADDR = 64'd0;

assign m_axi_output_re_r_ARBURST = 2'd0;

assign m_axi_output_re_r_ARCACHE = 4'd0;

assign m_axi_output_re_r_ARID = 1'd0;

assign m_axi_output_re_r_ARLEN = 32'd0;

assign m_axi_output_re_r_ARLOCK = 2'd0;

assign m_axi_output_re_r_ARPROT = 3'd0;

assign m_axi_output_re_r_ARQOS = 4'd0;

assign m_axi_output_re_r_ARREGION = 4'd0;

assign m_axi_output_re_r_ARSIZE = 3'd0;

assign m_axi_output_re_r_ARUSER = 1'd0;

assign m_axi_output_re_r_ARVALID = 1'b0;

assign m_axi_output_re_r_AWADDR = 64'd0;

assign m_axi_output_re_r_AWBURST = 2'd0;

assign m_axi_output_re_r_AWCACHE = 4'd0;

assign m_axi_output_re_r_AWID = 1'd0;

assign m_axi_output_re_r_AWLEN = 32'd0;

assign m_axi_output_re_r_AWLOCK = 2'd0;

assign m_axi_output_re_r_AWPROT = 3'd0;

assign m_axi_output_re_r_AWQOS = 4'd0;

assign m_axi_output_re_r_AWREGION = 4'd0;

assign m_axi_output_re_r_AWSIZE = 3'd0;

assign m_axi_output_re_r_AWUSER = 1'd0;

assign m_axi_output_re_r_AWVALID = 1'b0;

assign m_axi_output_re_r_BREADY = 1'b0;

assign m_axi_output_re_r_RREADY = 1'b0;

assign m_axi_output_re_r_WDATA = re_buff_load_reg_148;

assign m_axi_output_re_r_WID = 1'd0;

assign m_axi_output_re_r_WLAST = 1'b0;

assign m_axi_output_re_r_WSTRB = 4'd15;

assign m_axi_output_re_r_WUSER = 1'd0;

assign re_buff_address0 = loop_index10_cast_fu_103_p1;

endmodule //dft_dft_Pipeline_4
