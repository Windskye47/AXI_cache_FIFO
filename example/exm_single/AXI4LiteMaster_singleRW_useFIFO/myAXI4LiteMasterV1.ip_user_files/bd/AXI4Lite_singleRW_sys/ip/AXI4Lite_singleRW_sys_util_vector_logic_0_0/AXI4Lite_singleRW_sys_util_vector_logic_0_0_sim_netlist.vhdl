-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Thu Dec  9 19:42:25 2021
-- Host        : Dakang running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               f:/Onedrive/VivadoPrj/myAXI4LiteMasterV1/myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_util_vector_logic_0_0/AXI4Lite_singleRW_sys_util_vector_logic_0_0_sim_netlist.vhdl
-- Design      : AXI4Lite_singleRW_sys_util_vector_logic_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku040-ffva1156-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI4Lite_singleRW_sys_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of AXI4Lite_singleRW_sys_util_vector_logic_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of AXI4Lite_singleRW_sys_util_vector_logic_0_0 : entity is "AXI4Lite_singleRW_sys_util_vector_logic_0_0,util_vector_logic_v2_0_1_util_vector_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of AXI4Lite_singleRW_sys_util_vector_logic_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of AXI4Lite_singleRW_sys_util_vector_logic_0_0 : entity is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2021.2";
end AXI4Lite_singleRW_sys_util_vector_logic_0_0;

architecture STRUCTURE of AXI4Lite_singleRW_sys_util_vector_logic_0_0 is
begin
\Res[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Op1(0),
      O => Res(0)
    );
end STRUCTURE;
