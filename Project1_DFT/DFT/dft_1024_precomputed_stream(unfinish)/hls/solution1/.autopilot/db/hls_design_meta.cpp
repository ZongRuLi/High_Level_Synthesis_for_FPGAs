#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("real_sample_TDATA", 32, hls_in, 0, "axis", "in_data", 1),
	Port_Property("real_sample_TVALID", 1, hls_in, 3, "axis", "in_vld", 1),
	Port_Property("real_sample_TREADY", 1, hls_out, 3, "axis", "in_acc", 1),
	Port_Property("real_sample_TKEEP", 4, hls_in, 1, "axis", "in_data", 1),
	Port_Property("real_sample_TSTRB", 4, hls_in, 2, "axis", "in_data", 1),
	Port_Property("real_sample_TLAST", 1, hls_in, 3, "axis", "in_data", 1),
	Port_Property("imag_sample_TDATA", 32, hls_in, 4, "axis", "in_data", 1),
	Port_Property("imag_sample_TVALID", 1, hls_in, 7, "axis", "in_vld", 1),
	Port_Property("imag_sample_TREADY", 1, hls_out, 7, "axis", "in_acc", 1),
	Port_Property("imag_sample_TKEEP", 4, hls_in, 5, "axis", "in_data", 1),
	Port_Property("imag_sample_TSTRB", 4, hls_in, 6, "axis", "in_data", 1),
	Port_Property("imag_sample_TLAST", 1, hls_in, 7, "axis", "in_data", 1),
	Port_Property("real_op_TDATA", 32, hls_out, 8, "axis", "out_data", 1),
	Port_Property("real_op_TVALID", 1, hls_out, 11, "axis", "out_vld", 1),
	Port_Property("real_op_TREADY", 1, hls_in, 11, "axis", "out_acc", 1),
	Port_Property("real_op_TKEEP", 4, hls_out, 9, "axis", "out_data", 1),
	Port_Property("real_op_TSTRB", 4, hls_out, 10, "axis", "out_data", 1),
	Port_Property("real_op_TLAST", 1, hls_out, 11, "axis", "out_data", 1),
	Port_Property("imag_op_TDATA", 32, hls_out, 12, "axis", "out_data", 1),
	Port_Property("imag_op_TVALID", 1, hls_out, 15, "axis", "out_vld", 1),
	Port_Property("imag_op_TREADY", 1, hls_in, 15, "axis", "out_acc", 1),
	Port_Property("imag_op_TKEEP", 4, hls_out, 13, "axis", "out_data", 1),
	Port_Property("imag_op_TSTRB", 4, hls_out, 14, "axis", "out_data", 1),
	Port_Property("imag_op_TLAST", 1, hls_out, 15, "axis", "out_data", 1),
	Port_Property("s_axi_CTRL_AWVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_AWREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CTRL_AWADDR", 4, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_WVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_WREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CTRL_WDATA", 32, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_WSTRB", 4, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_ARVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_ARREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CTRL_ARADDR", 4, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_RVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CTRL_RREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_RDATA", 32, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CTRL_RRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("interrupt", 1, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "dft";
