// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Dec  9 21:01:17 2021
// Host        : Dakang running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/Onedrive/VivadoPrj/myAXI4LiteMasterV1/myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_blk_mem_gen_0_0/AXI4Lite_singleRW_sys_blk_mem_gen_0_0_sim_netlist.v
// Design      : AXI4Lite_singleRW_sys_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku040-ffva1156-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "AXI4Lite_singleRW_sys_blk_mem_gen_0_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module AXI4Lite_singleRW_sys_blk_mem_gen_0_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 4096, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [31:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire rsta;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     0.5472 mW" *) 
  (* C_FAMILY = "kintexu" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "kintexu" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  AXI4Lite_singleRW_sys_blk_mem_gen_0_0_blk_mem_gen_v8_4_5 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[11:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oESHD2Q5NORrmTVTCApB+YFZJwjA1ezq7U6VZh96by+ofPCvSFp06AIoCLvB4BhPvxfob6kIkBpR
xVCOLM7HsDk7nO1JVWiYIJ6okoWTA8hAlPj3sdGuMwRlZNSBKn/c6F+CW5Jl37TEGotkhycSB3Bg
B/uu1THUZwIG87RPahE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RovEhaqHrFqzjckk+DIWG8LQeqg2Y/nACQDyXKKtSav7YHlgpKmgHZnsxwwNpqrqVRGyjTecSQ+e
6Mr/Pi9au3AgJVPL6VOgwNVE0yj2LpA4LPyWzxLN3+DiSDmsaCBNCBlVQi2MRKUabou8nLaXldbL
+7pv4pYhQdcyjDzuC2dx3HmzADqstdEiyXeU3ktJ29CDLDmGwDWdmsrl90s4YQSfBV2nj4/Vut3L
p/8dzphf1htPaNMujMxxgp3z4JzUEDJJokDL+gNutEEHiaWpI3URIA5v22vJu+NPD+eEraSioHfL
DPKAajZTwK5FHnonu4O2D0co8GWqWW5cUqZz9A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jBQ6Th9yy7jtKQD1h235YLT6qO6XiBaBKGJrV1Z8H9M9ePJ9R/fA8E1okt4LyBvoWjR7tmCbIg7A
0/vuKOogkLtDE/BtTlp4z1iurO8rQrAcdZy/e+7GATawyJxFY7kZhnXASu9zB8TiOBELSlapkpxe
WuAzXLde9FBMBkq4RSc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eucSNV2Zbm4zYc2tIGRlGmlVM8+WHY1NHe9drZdgDhGPOHz8PTqHapfnZ1kWuTLtPBLSMvcXNScn
UTvpULofBV6qD7WHLPg7UJcjpZVDL69lk88chgqrlc/RqaJXKNVv+Ubku53ZLU20uZK71bNymjSM
855RVWw5lvTHTCNC2MYIS94Fmrzuq8i0+tFh5qBKkHK2BC+fD7xVyyfuh4mZR2yr/hRs/emoI79E
IKoJnLiglVp6RXTsXFzZW4pIthbjWSuZlOQvoYkS2RMj8a0r9lyariphRQunoudc0bLO4Phk578c
40gusaaS/MI7idMT7k1Di96kvu5mHi23loRcZQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E/syLaRG2Ss/xTTkuAkOKXzm53+rCptYO2DkVukWhvlLmEB2daHCPrXt4gKeuG+0hIGWedSwCiLJ
7KNtEAiTumJ/j+3p7s3oXN9ftCSRolXoACsCclEAmwYjVM0ubCXUx6JNFOGt0yDl2Jsd5+W10mSJ
bYEKvRKi7koXM/eYJqbhTrtsrHDwRJEY0JVUPh8EOkLLqaIKbnjb6ENEY6qZOamp5PaWsSS30gJM
N6fB8D1AmGKnFbfY+d5TexS55Z92aYcAHNX2XwHsKnm45az1vHeZ0rTEU/oONIaSZfikRni1iDBg
x2GOue6sLiwxTEHaVkTJsOVR4mx0VsfFxavwRg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dSHHpkQiOEzzKs4D71WVyDXLpkKuR9h9h3pBLtnCq2bXiwE/eQHmk5HeQb+qREg0Yv193OukqaQz
RZyuF5GQcqOpqFHMxO62HQ2pdjdpMT5CC7gHvmgiw9qBkJJrXpihIHER4X7OF2iNUfeqxJ8eiSz3
C0V20NlIwKG7Mxg8MVj++xmb32KMUqL7ptikkym20vVdhecVMNvpPoXp8uvaGT7991enWP9HGKUC
9kLY2DEYwRGE71UJJLGWo4n49R50ExFRj91xWnYfvp7uJsMNwnBp5l3GTZiMELX2RkRVSPOHr7l1
n2p5Vq7Uee2drny1IxZ/4c0hYY6y3QWSEqpESw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HUtfqZ9dh5oZTOAt9a0ebo+wQbzg3izFQ0kVqZN81S4cBjQEF53WUiVlTKBDVjvLNUby4Se9WZjj
j86TQzuGJxLPDTohmbytErsg5JrlXHbHGwR4zGNGTbBs12X7PkxtS8wVCp+7b1rX6pOGOPqm6FoG
g6rZY/bTzVfGYF2CAOhjJUqUOXEAKnZRehspRyiBI28/ZZPSAUD/abKprW8PWCxMx2zPWztZz4No
R96jgvHezNzB1Ta8W7uRBFTMp+XVSToxTp2jzSXJZ0V5xJl+gdVjAMmf6+te2vqrK2wDWdMxk3Sf
iyLI4d0s25vCybcY2fZWacq5iO9pSlSaOQWgCA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
vYYu2Kvhv3RZi0pFbjRTQ/BBwfilCrGpkMls+Dz6HBGTZvSaC/anWgymoDS0XnoSENGG3Pz3EBF0
19OqLbyna95IHFe2bA7f8RgU9SEUffZ8eXGigfOjAWpZCN07Q77RkhGUKal7okWe3Q6xHtZy83l2
kW8ma3kOYL7GzQjtpbP3lINHLMqpGEo0dzbOHiJ5r6W5U6DsILGsoLQOXcw+MwrevvNRB0KkSklj
QnL8K2AK8PIsJGM6F8dj5KwRYhSBYNb1opuVpiJWlbHgADoeM+dhiRxBLmnaDE8PWs1ReY6uMzzH
SvvO6UEyxQtvS/Smm/uogr1eUFedUaBHPMEXnYlTAv/SKrh942GeknsqfrjGkZxWTN2NEnvpRUwT
fS0pyd/Err0s94b0srmcTYyxZfJGRUct2T8MCphZFaScAlhn655pxW9RaHMfcvDJUHpW8Qa+KhRt
9CWYScPIH6YNDByLQbhKL5BTpAYMNYPF2W7vM2ZzDob2NB7m6GGeKRr3

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QSNmIeTT4pBji+CTjknWXN6sH9Wff8+t8KF+AC3fIoIw08jtLtShcB9ZGeEKG02RGCO4lNIUf5YB
2TVYk6EJ5XyCav12qDhc60n56UVrnpfo7drorY0NmOypuxECgO43h6SDWp9W7px3r4CJnQ4+X2Mj
943GdP30WfL5kbWHZJC1Dz9cBIqRa1EbNXvvAqBvRPS2+aXBXAPOC4rNVZGeIUspn/33IW3yJLSp
Jm5GIct87ZuSoz8+DXhUvsTj4hq8lgirVhfz1qhHm8SfODcE91FGUPw3vbpGWXsBX73t2zxFC1Hz
/6m4YqQJVxd+H5iGE4kbHxHyHnH7FIerqc8Phw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UhfxKxECbuHK/o9ZExa2zP/MIPmFXuDNZwgpiawuBmPeRI1nJsYB7vzbBGMPKny4yIHLT8mHrQRc
fs05atkjIAbLea4+WNoCdCeg7/0PzuodM1ol3it6BHQ6Yzq4mnZbzlk8Xtwmk8ACAbzOr2SYxYWX
ueuUlimUSRusIe4+NiPvzbfHMAOVPjdmSY7zaSyeJuhdAR+fUGeHy5B23Xe2X6cDPeJ75IqcBeul
ox3dTXi3L8r/s1bTKX3FhxRyPZuh/xCWuEajsF2fEYdwWHKtLX6IQniLBJ5ZnVSS8D7IYPsvV4t0
9rWJqto5O1n3rAM44OvKvc9pOYXJupuv7g3gWg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fmo66vhS7nigYtLDMjdj7hgUnDG/fnO+cIaY/3qHrcwT7u/paj5enLuWHovegu9O9WRq3pPNnjuN
6vZRpuCgz5p4VAV7dVg9fuzg99BAjThp1Q/+HIPfdQ2LM14ZpTh4FXxthHGkTyS5PJArvZ3/UMpW
zwfdYd5+k2/emJ4/nuqoJHQG8k+O5EjSprLTvNZ/wrE1cT/fW/Lu2pxI4msHqVVYAXz7sJ13cQ+C
7tKxCV8vTyf0rpStdE+kZXg+jrc7vFKuPJO0U9axMsC0nXyeYx2jzfAHptGWKvfQaPg/Eo9mgLyN
qSJfFS6aIycuxNmg7L82WK401aWhnUn7GNrudg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 32912)
`pragma protect data_block
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
vz1u0HBKzFJBFv9MQhYsHrIDSXyDGcs=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
