-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Fri Dec 10 09:50:48 2021
-- Host        : DESKTOP-73JDS9H running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               f:/OneDrive/VivadoPrj/myAXI4LiteMasterV1/myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1/AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1_stub.vhdl
-- Design      : AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku040-ffva1156-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1 is
  Port ( 
    single_burst_wr_finish : out STD_LOGIC;
    error_flag : out STD_LOGIC;
    write_resp_error : out STD_LOGIC;
    read_resp_error : out STD_LOGIC;
    rdata_notequal_wdata_error : out STD_LOGIC;
    fwft_fifo_read_empty : in STD_LOGIC;
    fwft_fifo_read_dout : in STD_LOGIC_VECTOR ( 44 downto 0 );
    fwft_fifo_read_rd_en : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC
  );

end AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1;

architecture stub of AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "single_burst_wr_finish,error_flag,write_resp_error,read_resp_error,rdata_notequal_wdata_error,fwft_fifo_read_empty,fwft_fifo_read_dout[44:0],fwft_fifo_read_rd_en,m_axi_awaddr[12:0],m_axi_awprot[2:0],m_axi_awvalid,m_axi_awready,m_axi_wdata[31:0],m_axi_wstrb[3:0],m_axi_wvalid,m_axi_wready,m_axi_bresp[1:0],m_axi_bvalid,m_axi_bready,m_axi_araddr[12:0],m_axi_arprot[2:0],m_axi_arvalid,m_axi_arready,m_axi_rdata[31:0],m_axi_rresp[1:0],m_axi_rvalid,m_axi_rready,m_axi_aclk,m_axi_aresetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "AXI4LiteMaster_singleRW_useFIFO_wrapper,Vivado 2021.2";
begin
end;
