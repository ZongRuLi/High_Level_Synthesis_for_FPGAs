-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sat Sep 18 21:57:54 2021
-- Host        : DESKTOP-X300 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_mul_0_0_stub.vhdl
-- Design      : design_1_mul_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_axi_mul_io_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_mul_io_AWVALID : in STD_LOGIC;
    s_axi_mul_io_AWREADY : out STD_LOGIC;
    s_axi_mul_io_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_mul_io_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_mul_io_WVALID : in STD_LOGIC;
    s_axi_mul_io_WREADY : out STD_LOGIC;
    s_axi_mul_io_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mul_io_BVALID : out STD_LOGIC;
    s_axi_mul_io_BREADY : in STD_LOGIC;
    s_axi_mul_io_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_mul_io_ARVALID : in STD_LOGIC;
    s_axi_mul_io_ARREADY : out STD_LOGIC;
    s_axi_mul_io_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_mul_io_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mul_io_RVALID : out STD_LOGIC;
    s_axi_mul_io_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_mul_io_AWADDR[5:0],s_axi_mul_io_AWVALID,s_axi_mul_io_AWREADY,s_axi_mul_io_WDATA[31:0],s_axi_mul_io_WSTRB[3:0],s_axi_mul_io_WVALID,s_axi_mul_io_WREADY,s_axi_mul_io_BRESP[1:0],s_axi_mul_io_BVALID,s_axi_mul_io_BREADY,s_axi_mul_io_ARADDR[5:0],s_axi_mul_io_ARVALID,s_axi_mul_io_ARREADY,s_axi_mul_io_RDATA[31:0],s_axi_mul_io_RRESP[1:0],s_axi_mul_io_RVALID,s_axi_mul_io_RREADY,ap_clk,ap_rst_n,interrupt";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "mul,Vivado 2020.2";
begin
end;
