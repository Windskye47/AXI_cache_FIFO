-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Fri Dec 10 09:50:48 2021
-- Host        : DESKTOP-73JDS9H running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               f:/OneDrive/VivadoPrj/myAXI4LiteMasterV1/myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1/AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1_sim_netlist.vhdl
-- Design      : AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku040-ffva1156-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1_AXI4LiteMaster_singleRW_useFIFO is
  port (
    fwft_fifo_read_rd_en : out STD_LOGIC;
    single_burst_wr_finish : out STD_LOGIC;
    error_flag : out STD_LOGIC;
    m_axi_bready_reg_0 : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    fwft_fifo_read_empty : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_aresetn : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1_AXI4LiteMaster_singleRW_useFIFO : entity is "AXI4LiteMaster_singleRW_useFIFO";
end AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1_AXI4LiteMaster_singleRW_useFIFO;

architecture STRUCTURE of AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1_AXI4LiteMaster_singleRW_useFIFO is
  signal bnext : STD_LOGIC;
  signal burst_write_active : STD_LOGIC;
  signal burst_write_active_i_1_n_0 : STD_LOGIC;
  signal burst_write_active_r1 : STD_LOGIC;
  signal \^m_axi_awvalid\ : STD_LOGIC;
  signal m_axi_awvalid_i_1_n_0 : STD_LOGIC;
  signal m_axi_bready_i_1_n_0 : STD_LOGIC;
  signal \^m_axi_bready_reg_0\ : STD_LOGIC;
  signal \^m_axi_wvalid\ : STD_LOGIC;
  signal m_axi_wvalid_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \^single_burst_wr_finish\ : STD_LOGIC;
  signal write_resp_error0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of burst_write_active_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of fwft_fifo_read_rd_en_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of m_axi_bready_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of write_resp_error_i_1 : label is "soft_lutpair1";
begin
  m_axi_awvalid <= \^m_axi_awvalid\;
  m_axi_bready_reg_0 <= \^m_axi_bready_reg_0\;
  m_axi_wvalid <= \^m_axi_wvalid\;
  single_burst_wr_finish <= \^single_burst_wr_finish\;
burst_write_active_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01F1"
    )
        port map (
      I0 => fwft_fifo_read_empty,
      I1 => burst_write_active_r1,
      I2 => burst_write_active,
      I3 => \^single_burst_wr_finish\,
      O => burst_write_active_i_1_n_0
    );
burst_write_active_r1_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => burst_write_active,
      Q => burst_write_active_r1,
      R => '0'
    );
burst_write_active_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => burst_write_active_i_1_n_0,
      Q => burst_write_active,
      R => p_0_in
    );
fwft_fifo_read_rd_en_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^single_burst_wr_finish\,
      I1 => fwft_fifo_read_empty,
      O => fwft_fifo_read_rd_en
    );
m_axi_awvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FF0101"
    )
        port map (
      I0 => fwft_fifo_read_empty,
      I1 => burst_write_active_r1,
      I2 => burst_write_active,
      I3 => m_axi_awready,
      I4 => \^m_axi_awvalid\,
      O => m_axi_awvalid_i_1_n_0
    );
m_axi_awvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => m_axi_awvalid_i_1_n_0,
      Q => \^m_axi_awvalid\,
      R => p_0_in
    );
m_axi_bready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F8"
    )
        port map (
      I0 => m_axi_wready,
      I1 => \^m_axi_wvalid\,
      I2 => \^m_axi_bready_reg_0\,
      I3 => m_axi_bvalid,
      O => m_axi_bready_i_1_n_0
    );
m_axi_bready_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => m_axi_bready_i_1_n_0,
      Q => \^m_axi_bready_reg_0\,
      R => p_0_in
    );
m_axi_wvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FF0101"
    )
        port map (
      I0 => fwft_fifo_read_empty,
      I1 => burst_write_active_r1,
      I2 => burst_write_active,
      I3 => m_axi_wready,
      I4 => \^m_axi_wvalid\,
      O => m_axi_wvalid_i_1_n_0
    );
m_axi_wvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => m_axi_wvalid_i_1_n_0,
      Q => \^m_axi_wvalid\,
      R => p_0_in
    );
single_burst_wr_finish_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axi_aresetn,
      O => p_0_in
    );
single_burst_wr_finish_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axi_bvalid,
      I1 => \^m_axi_bready_reg_0\,
      O => bnext
    );
single_burst_wr_finish_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => bnext,
      Q => \^single_burst_wr_finish\,
      R => p_0_in
    );
write_resp_error_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^m_axi_bready_reg_0\,
      I1 => m_axi_bvalid,
      I2 => m_axi_bresp(0),
      O => write_resp_error0
    );
write_resp_error_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => write_resp_error0,
      Q => error_flag,
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1_AXI4LiteMaster_singleRW_useFIFO_wrapper is
  port (
    fwft_fifo_read_rd_en : out STD_LOGIC;
    single_burst_wr_finish : out STD_LOGIC;
    error_flag : out STD_LOGIC;
    m_axi_bready_reg : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    fwft_fifo_read_empty : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_aresetn : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1_AXI4LiteMaster_singleRW_useFIFO_wrapper : entity is "AXI4LiteMaster_singleRW_useFIFO_wrapper";
end AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1_AXI4LiteMaster_singleRW_useFIFO_wrapper;

architecture STRUCTURE of AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1_AXI4LiteMaster_singleRW_useFIFO_wrapper is
begin
u_AXI4LiteMaster_singleRW_useFIFO: entity work.AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1_AXI4LiteMaster_singleRW_useFIFO
     port map (
      error_flag => error_flag,
      fwft_fifo_read_empty => fwft_fifo_read_empty,
      fwft_fifo_read_rd_en => fwft_fifo_read_rd_en,
      m_axi_aclk => m_axi_aclk,
      m_axi_aresetn => m_axi_aresetn,
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bready_reg_0 => m_axi_bready_reg,
      m_axi_bresp(0) => m_axi_bresp(0),
      m_axi_bvalid => m_axi_bvalid,
      m_axi_wready => m_axi_wready,
      m_axi_wvalid => m_axi_wvalid,
      single_burst_wr_finish => single_burst_wr_finish
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1 : entity is "AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1,AXI4LiteMaster_singleRW_useFIFO_wrapper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1 : entity is "AXI4LiteMaster_singleRW_useFIFO_wrapper,Vivado 2021.2";
end AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1;

architecture STRUCTURE of AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^error_flag\ : STD_LOGIC;
  signal \^fwft_fifo_read_dout\ : STD_LOGIC_VECTOR ( 44 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m_axi_aclk : signal is "xilinx.com:signal:clock:1.0 m_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m_axi_aclk : signal is "XIL_INTERFACENAME m_axi_aclk, ASSOCIATED_BUSIF m_axi, ASSOCIATED_RESET m_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN AXI4Lite_singleRW_sys_m_axi_aclk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 m_axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of m_axi_aresetn : signal is "XIL_INTERFACENAME m_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 m_axi ARREADY";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi ARVALID";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 m_axi AWREADY";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi AWVALID";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 m_axi BREADY";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi BVALID";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 m_axi RREADY";
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME m_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 13, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN AXI4Lite_singleRW_sys_m_axi_aclk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi RVALID";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 m_axi WREADY";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi WVALID";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 m_axi ARADDR";
  attribute X_INTERFACE_INFO of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 m_axi ARPROT";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 m_axi AWADDR";
  attribute X_INTERFACE_INFO of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 m_axi AWPROT";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 m_axi BRESP";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 m_axi RDATA";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 m_axi RRESP";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 m_axi WDATA";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 m_axi WSTRB";
begin
  \^fwft_fifo_read_dout\(44 downto 0) <= fwft_fifo_read_dout(44 downto 0);
  error_flag <= \^error_flag\;
  m_axi_araddr(12 downto 0) <= \^fwft_fifo_read_dout\(44 downto 32);
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arvalid <= \<const0>\;
  m_axi_awaddr(12 downto 0) <= \^fwft_fifo_read_dout\(44 downto 32);
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_rready <= \<const0>\;
  m_axi_wdata(31 downto 0) <= \^fwft_fifo_read_dout\(31 downto 0);
  m_axi_wstrb(3) <= \<const1>\;
  m_axi_wstrb(2) <= \<const1>\;
  m_axi_wstrb(1) <= \<const1>\;
  m_axi_wstrb(0) <= \<const1>\;
  rdata_notequal_wdata_error <= \<const0>\;
  read_resp_error <= \<const0>\;
  write_resp_error <= \^error_flag\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1_AXI4LiteMaster_singleRW_useFIFO_wrapper
     port map (
      error_flag => \^error_flag\,
      fwft_fifo_read_empty => fwft_fifo_read_empty,
      fwft_fifo_read_rd_en => fwft_fifo_read_rd_en,
      m_axi_aclk => m_axi_aclk,
      m_axi_aresetn => m_axi_aresetn,
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bready_reg => m_axi_bready,
      m_axi_bresp(0) => m_axi_bresp(1),
      m_axi_bvalid => m_axi_bvalid,
      m_axi_wready => m_axi_wready,
      m_axi_wvalid => m_axi_wvalid,
      single_burst_wr_finish => single_burst_wr_finish
    );
end STRUCTURE;
