// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.1 (lin64) Build 5266912 Sun Dec 15 09:03:31 MST 2024
// Date        : Tue Apr  1 19:29:34 2025
// Host        : laptop-homann-25.eis.tu-bs.de running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/jhomann/Projects/OpenFLINT/repos/public/OpenFI4ASIC/runtime/vivado/OpenFI4ASICSystem/OpenFI4ASICSystem.gen/sources_1/bd/design_1/ip/design_1_clk_gate_top_0_0/design_1_clk_gate_top_0_0_sim_netlist.v
// Design      : design_1_clk_gate_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_clk_gate_top_0_0,clk_gate_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "clk_gate_top,Vivado 2024.2.1" *) 
(* NotValidForBitStream *)
module design_1_clk_gate_top_0_0
   (clk_o,
    clk_enabled_o,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWPROT,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARPROT,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY);
  output clk_o;
  output clk_enabled_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input S_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXI_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [5:0]S_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [5:0]S_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_RREADY;

  wire \<const0> ;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [5:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [0:0]\^S_AXI_RDATA ;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire clk_enabled_o;
  wire clk_o;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RDATA[31] = \<const0> ;
  assign S_AXI_RDATA[30] = \<const0> ;
  assign S_AXI_RDATA[29] = \<const0> ;
  assign S_AXI_RDATA[28] = \<const0> ;
  assign S_AXI_RDATA[27] = \<const0> ;
  assign S_AXI_RDATA[26] = \<const0> ;
  assign S_AXI_RDATA[25] = \<const0> ;
  assign S_AXI_RDATA[24] = \<const0> ;
  assign S_AXI_RDATA[23] = \<const0> ;
  assign S_AXI_RDATA[22] = \<const0> ;
  assign S_AXI_RDATA[21] = \<const0> ;
  assign S_AXI_RDATA[20] = \<const0> ;
  assign S_AXI_RDATA[19] = \<const0> ;
  assign S_AXI_RDATA[18] = \<const0> ;
  assign S_AXI_RDATA[17] = \<const0> ;
  assign S_AXI_RDATA[16] = \<const0> ;
  assign S_AXI_RDATA[15] = \<const0> ;
  assign S_AXI_RDATA[14] = \<const0> ;
  assign S_AXI_RDATA[13] = \<const0> ;
  assign S_AXI_RDATA[12] = \<const0> ;
  assign S_AXI_RDATA[11] = \<const0> ;
  assign S_AXI_RDATA[10] = \<const0> ;
  assign S_AXI_RDATA[9] = \<const0> ;
  assign S_AXI_RDATA[8] = \<const0> ;
  assign S_AXI_RDATA[7] = \<const0> ;
  assign S_AXI_RDATA[6] = \<const0> ;
  assign S_AXI_RDATA[5] = \<const0> ;
  assign S_AXI_RDATA[4] = \<const0> ;
  assign S_AXI_RDATA[3] = \<const0> ;
  assign S_AXI_RDATA[2] = \<const0> ;
  assign S_AXI_RDATA[1] = \<const0> ;
  assign S_AXI_RDATA[0] = \^S_AXI_RDATA [0];
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_clk_gate_top_0_0_clk_gate_top inst
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(\^S_AXI_RDATA ),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .clk_enabled_o(clk_enabled_o),
        .clk_o(clk_o),
        .read_fsm_state_ff_reg(S_AXI_RVALID));
endmodule

(* ORIG_REF_NAME = "clk_gate" *) 
module design_1_clk_gate_top_0_0_clk_gate
   (clk_o,
    count_ff_reg,
    CO,
    S_AXI_ACLK,
    clk_enabled_o,
    \count_ff_reg[63]_0 ,
    O,
    \count_ff_reg[7]_0 ,
    \count_ff_reg[11]_0 ,
    \count_ff_reg[15]_0 ,
    \count_ff_reg[19]_0 ,
    \count_ff_reg[23]_0 ,
    \count_ff_reg[27]_0 ,
    \count_ff_reg[31]_0 ,
    \count_ff_reg[35]_0 ,
    \count_ff_reg[39]_0 ,
    \count_ff_reg[43]_0 ,
    \count_ff_reg[47]_0 ,
    \count_ff_reg[51]_0 ,
    \count_ff_reg[55]_0 ,
    \count_ff_reg[59]_0 ,
    \count_ff_reg[63]_1 );
  output clk_o;
  output [63:0]count_ff_reg;
  output [0:0]CO;
  input S_AXI_ACLK;
  input clk_enabled_o;
  input \count_ff_reg[63]_0 ;
  input [3:0]O;
  input [3:0]\count_ff_reg[7]_0 ;
  input [3:0]\count_ff_reg[11]_0 ;
  input [3:0]\count_ff_reg[15]_0 ;
  input [3:0]\count_ff_reg[19]_0 ;
  input [3:0]\count_ff_reg[23]_0 ;
  input [3:0]\count_ff_reg[27]_0 ;
  input [3:0]\count_ff_reg[31]_0 ;
  input [3:0]\count_ff_reg[35]_0 ;
  input [3:0]\count_ff_reg[39]_0 ;
  input [3:0]\count_ff_reg[43]_0 ;
  input [3:0]\count_ff_reg[47]_0 ;
  input [3:0]\count_ff_reg[51]_0 ;
  input [3:0]\count_ff_reg[55]_0 ;
  input [3:0]\count_ff_reg[59]_0 ;
  input [3:0]\count_ff_reg[63]_1 ;

  wire [0:0]CO;
  wire [3:0]O;
  wire S_AXI_ACLK;
  wire clk_enabled_o;
  wire clk_o;
  wire count_ff2_carry__0_i_1_n_0;
  wire count_ff2_carry__0_i_2_n_0;
  wire count_ff2_carry__0_i_3_n_0;
  wire count_ff2_carry__0_i_4_n_0;
  wire count_ff2_carry__0_i_5_n_0;
  wire count_ff2_carry__0_i_6_n_0;
  wire count_ff2_carry__0_i_7_n_0;
  wire count_ff2_carry__0_i_8_n_0;
  wire count_ff2_carry__0_n_0;
  wire count_ff2_carry__0_n_1;
  wire count_ff2_carry__0_n_2;
  wire count_ff2_carry__0_n_3;
  wire count_ff2_carry__1_i_1_n_0;
  wire count_ff2_carry__1_i_2_n_0;
  wire count_ff2_carry__1_i_3_n_0;
  wire count_ff2_carry__1_i_4_n_0;
  wire count_ff2_carry__1_i_5_n_0;
  wire count_ff2_carry__1_i_6_n_0;
  wire count_ff2_carry__1_i_7_n_0;
  wire count_ff2_carry__1_i_8_n_0;
  wire count_ff2_carry__1_n_0;
  wire count_ff2_carry__1_n_1;
  wire count_ff2_carry__1_n_2;
  wire count_ff2_carry__1_n_3;
  wire count_ff2_carry__2_i_1_n_0;
  wire count_ff2_carry__2_i_2_n_0;
  wire count_ff2_carry__2_i_3_n_0;
  wire count_ff2_carry__2_i_4_n_0;
  wire count_ff2_carry__2_i_5_n_0;
  wire count_ff2_carry__2_i_6_n_0;
  wire count_ff2_carry__2_i_7_n_0;
  wire count_ff2_carry__2_i_8_n_0;
  wire count_ff2_carry__2_n_0;
  wire count_ff2_carry__2_n_1;
  wire count_ff2_carry__2_n_2;
  wire count_ff2_carry__2_n_3;
  wire count_ff2_carry__3_i_1_n_0;
  wire count_ff2_carry__3_i_2_n_0;
  wire count_ff2_carry__3_i_3_n_0;
  wire count_ff2_carry__3_i_4_n_0;
  wire count_ff2_carry__3_i_5_n_0;
  wire count_ff2_carry__3_i_6_n_0;
  wire count_ff2_carry__3_i_7_n_0;
  wire count_ff2_carry__3_i_8_n_0;
  wire count_ff2_carry__3_n_0;
  wire count_ff2_carry__3_n_1;
  wire count_ff2_carry__3_n_2;
  wire count_ff2_carry__3_n_3;
  wire count_ff2_carry__4_i_1_n_0;
  wire count_ff2_carry__4_i_2_n_0;
  wire count_ff2_carry__4_i_3_n_0;
  wire count_ff2_carry__4_i_4_n_0;
  wire count_ff2_carry__4_i_5_n_0;
  wire count_ff2_carry__4_i_6_n_0;
  wire count_ff2_carry__4_i_7_n_0;
  wire count_ff2_carry__4_i_8_n_0;
  wire count_ff2_carry__4_n_0;
  wire count_ff2_carry__4_n_1;
  wire count_ff2_carry__4_n_2;
  wire count_ff2_carry__4_n_3;
  wire count_ff2_carry__5_i_1_n_0;
  wire count_ff2_carry__5_i_2_n_0;
  wire count_ff2_carry__5_i_3_n_0;
  wire count_ff2_carry__5_i_4_n_0;
  wire count_ff2_carry__5_i_5_n_0;
  wire count_ff2_carry__5_i_6_n_0;
  wire count_ff2_carry__5_i_7_n_0;
  wire count_ff2_carry__5_i_8_n_0;
  wire count_ff2_carry__5_n_0;
  wire count_ff2_carry__5_n_1;
  wire count_ff2_carry__5_n_2;
  wire count_ff2_carry__5_n_3;
  wire count_ff2_carry__6_i_1_n_0;
  wire count_ff2_carry__6_i_2_n_0;
  wire count_ff2_carry__6_i_3_n_0;
  wire count_ff2_carry__6_i_4_n_0;
  wire count_ff2_carry__6_i_5_n_0;
  wire count_ff2_carry__6_i_6_n_0;
  wire count_ff2_carry__6_i_7_n_0;
  wire count_ff2_carry__6_i_8_n_0;
  wire count_ff2_carry__6_n_1;
  wire count_ff2_carry__6_n_2;
  wire count_ff2_carry__6_n_3;
  wire count_ff2_carry_i_1_n_0;
  wire count_ff2_carry_i_2_n_0;
  wire count_ff2_carry_i_3_n_0;
  wire count_ff2_carry_i_4_n_0;
  wire count_ff2_carry_i_5_n_0;
  wire count_ff2_carry_i_6_n_0;
  wire count_ff2_carry_i_7_n_0;
  wire count_ff2_carry_i_8_n_0;
  wire count_ff2_carry_n_0;
  wire count_ff2_carry_n_1;
  wire count_ff2_carry_n_2;
  wire count_ff2_carry_n_3;
  wire [63:0]count_ff_reg;
  wire [3:0]\count_ff_reg[11]_0 ;
  wire [3:0]\count_ff_reg[15]_0 ;
  wire [3:0]\count_ff_reg[19]_0 ;
  wire [3:0]\count_ff_reg[23]_0 ;
  wire [3:0]\count_ff_reg[27]_0 ;
  wire [3:0]\count_ff_reg[31]_0 ;
  wire [3:0]\count_ff_reg[35]_0 ;
  wire [3:0]\count_ff_reg[39]_0 ;
  wire [3:0]\count_ff_reg[43]_0 ;
  wire [3:0]\count_ff_reg[47]_0 ;
  wire [3:0]\count_ff_reg[51]_0 ;
  wire [3:0]\count_ff_reg[55]_0 ;
  wire [3:0]\count_ff_reg[59]_0 ;
  wire \count_ff_reg[63]_0 ;
  wire [3:0]\count_ff_reg[63]_1 ;
  wire [3:0]\count_ff_reg[7]_0 ;
  wire [3:0]NLW_count_ff2_carry_O_UNCONNECTED;
  wire [3:0]NLW_count_ff2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_count_ff2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_count_ff2_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_count_ff2_carry__3_O_UNCONNECTED;
  wire [3:0]NLW_count_ff2_carry__4_O_UNCONNECTED;
  wire [3:0]NLW_count_ff2_carry__5_O_UNCONNECTED;
  wire [3:0]NLW_count_ff2_carry__6_O_UNCONNECTED;

  (* XILINX_LEGACY_PRIM = "BUFGCE" *) 
  (* XILINX_TRANSFORM_PINMAP = "CE:CE0 I:I0 GND:S1,IGNORE0,CE1 VCC:S0,IGNORE1,I1" *) 
  (* box_type = "PRIMITIVE" *) 
  BUFGCTRL #(
    .INIT_OUT(0),
    .PRESELECT_I0("TRUE"),
    .PRESELECT_I1("FALSE"),
    .SIM_DEVICE("7SERIES")) 
    BUFGCE_inst
       (.CE0(clk_enabled_o),
        .CE1(1'b0),
        .I0(S_AXI_ACLK),
        .I1(1'b1),
        .IGNORE0(1'b0),
        .IGNORE1(1'b1),
        .O(clk_o),
        .S0(1'b1),
        .S1(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 count_ff2_carry
       (.CI(1'b0),
        .CO({count_ff2_carry_n_0,count_ff2_carry_n_1,count_ff2_carry_n_2,count_ff2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({count_ff2_carry_i_1_n_0,count_ff2_carry_i_2_n_0,count_ff2_carry_i_3_n_0,count_ff2_carry_i_4_n_0}),
        .O(NLW_count_ff2_carry_O_UNCONNECTED[3:0]),
        .S({count_ff2_carry_i_5_n_0,count_ff2_carry_i_6_n_0,count_ff2_carry_i_7_n_0,count_ff2_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 count_ff2_carry__0
       (.CI(count_ff2_carry_n_0),
        .CO({count_ff2_carry__0_n_0,count_ff2_carry__0_n_1,count_ff2_carry__0_n_2,count_ff2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({count_ff2_carry__0_i_1_n_0,count_ff2_carry__0_i_2_n_0,count_ff2_carry__0_i_3_n_0,count_ff2_carry__0_i_4_n_0}),
        .O(NLW_count_ff2_carry__0_O_UNCONNECTED[3:0]),
        .S({count_ff2_carry__0_i_5_n_0,count_ff2_carry__0_i_6_n_0,count_ff2_carry__0_i_7_n_0,count_ff2_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    count_ff2_carry__0_i_1
       (.I0(count_ff_reg[14]),
        .I1(count_ff_reg[15]),
        .O(count_ff2_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count_ff2_carry__0_i_2
       (.I0(count_ff_reg[12]),
        .I1(count_ff_reg[13]),
        .O(count_ff2_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count_ff2_carry__0_i_3
       (.I0(count_ff_reg[10]),
        .I1(count_ff_reg[11]),
        .O(count_ff2_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count_ff2_carry__0_i_4
       (.I0(count_ff_reg[8]),
        .I1(count_ff_reg[9]),
        .O(count_ff2_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_ff2_carry__0_i_5
       (.I0(count_ff_reg[14]),
        .I1(count_ff_reg[15]),
        .O(count_ff2_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_ff2_carry__0_i_6
       (.I0(count_ff_reg[12]),
        .I1(count_ff_reg[13]),
        .O(count_ff2_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_ff2_carry__0_i_7
       (.I0(count_ff_reg[10]),
        .I1(count_ff_reg[11]),
        .O(count_ff2_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_ff2_carry__0_i_8
       (.I0(count_ff_reg[8]),
        .I1(count_ff_reg[9]),
        .O(count_ff2_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 count_ff2_carry__1
       (.CI(count_ff2_carry__0_n_0),
        .CO({count_ff2_carry__1_n_0,count_ff2_carry__1_n_1,count_ff2_carry__1_n_2,count_ff2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({count_ff2_carry__1_i_1_n_0,count_ff2_carry__1_i_2_n_0,count_ff2_carry__1_i_3_n_0,count_ff2_carry__1_i_4_n_0}),
        .O(NLW_count_ff2_carry__1_O_UNCONNECTED[3:0]),
        .S({count_ff2_carry__1_i_5_n_0,count_ff2_carry__1_i_6_n_0,count_ff2_carry__1_i_7_n_0,count_ff2_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    count_ff2_carry__1_i_1
       (.I0(count_ff_reg[22]),
        .I1(count_ff_reg[23]),
        .O(count_ff2_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count_ff2_carry__1_i_2
       (.I0(count_ff_reg[20]),
        .I1(count_ff_reg[21]),
        .O(count_ff2_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count_ff2_carry__1_i_3
       (.I0(count_ff_reg[18]),
        .I1(count_ff_reg[19]),
        .O(count_ff2_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count_ff2_carry__1_i_4
       (.I0(count_ff_reg[16]),
        .I1(count_ff_reg[17]),
        .O(count_ff2_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_ff2_carry__1_i_5
       (.I0(count_ff_reg[22]),
        .I1(count_ff_reg[23]),
        .O(count_ff2_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_ff2_carry__1_i_6
       (.I0(count_ff_reg[20]),
        .I1(count_ff_reg[21]),
        .O(count_ff2_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_ff2_carry__1_i_7
       (.I0(count_ff_reg[18]),
        .I1(count_ff_reg[19]),
        .O(count_ff2_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_ff2_carry__1_i_8
       (.I0(count_ff_reg[16]),
        .I1(count_ff_reg[17]),
        .O(count_ff2_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 count_ff2_carry__2
       (.CI(count_ff2_carry__1_n_0),
        .CO({count_ff2_carry__2_n_0,count_ff2_carry__2_n_1,count_ff2_carry__2_n_2,count_ff2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({count_ff2_carry__2_i_1_n_0,count_ff2_carry__2_i_2_n_0,count_ff2_carry__2_i_3_n_0,count_ff2_carry__2_i_4_n_0}),
        .O(NLW_count_ff2_carry__2_O_UNCONNECTED[3:0]),
        .S({count_ff2_carry__2_i_5_n_0,count_ff2_carry__2_i_6_n_0,count_ff2_carry__2_i_7_n_0,count_ff2_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    count_ff2_carry__2_i_1
       (.I0(count_ff_reg[30]),
        .I1(count_ff_reg[31]),
        .O(count_ff2_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count_ff2_carry__2_i_2
       (.I0(count_ff_reg[28]),
        .I1(count_ff_reg[29]),
        .O(count_ff2_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count_ff2_carry__2_i_3
       (.I0(count_ff_reg[26]),
        .I1(count_ff_reg[27]),
        .O(count_ff2_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count_ff2_carry__2_i_4
       (.I0(count_ff_reg[24]),
        .I1(count_ff_reg[25]),
        .O(count_ff2_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_ff2_carry__2_i_5
       (.I0(count_ff_reg[30]),
        .I1(count_ff_reg[31]),
        .O(count_ff2_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_ff2_carry__2_i_6
       (.I0(count_ff_reg[28]),
        .I1(count_ff_reg[29]),
        .O(count_ff2_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_ff2_carry__2_i_7
       (.I0(count_ff_reg[26]),
        .I1(count_ff_reg[27]),
        .O(count_ff2_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_ff2_carry__2_i_8
       (.I0(count_ff_reg[24]),
        .I1(count_ff_reg[25]),
        .O(count_ff2_carry__2_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 count_ff2_carry__3
       (.CI(count_ff2_carry__2_n_0),
        .CO({count_ff2_carry__3_n_0,count_ff2_carry__3_n_1,count_ff2_carry__3_n_2,count_ff2_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({count_ff2_carry__3_i_1_n_0,count_ff2_carry__3_i_2_n_0,count_ff2_carry__3_i_3_n_0,count_ff2_carry__3_i_4_n_0}),
        .O(NLW_count_ff2_carry__3_O_UNCONNECTED[3:0]),
        .S({count_ff2_carry__3_i_5_n_0,count_ff2_carry__3_i_6_n_0,count_ff2_carry__3_i_7_n_0,count_ff2_carry__3_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    count_ff2_carry__3_i_1
       (.I0(count_ff_reg[38]),
        .I1(count_ff_reg[39]),
        .O(count_ff2_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count_ff2_carry__3_i_2
       (.I0(count_ff_reg[36]),
        .I1(count_ff_reg[37]),
        .O(count_ff2_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count_ff2_carry__3_i_3
       (.I0(count_ff_reg[34]),
        .I1(count_ff_reg[35]),
        .O(count_ff2_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count_ff2_carry__3_i_4
       (.I0(count_ff_reg[32]),
        .I1(count_ff_reg[33]),
        .O(count_ff2_carry__3_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_ff2_carry__3_i_5
       (.I0(count_ff_reg[38]),
        .I1(count_ff_reg[39]),
        .O(count_ff2_carry__3_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_ff2_carry__3_i_6
       (.I0(count_ff_reg[36]),
        .I1(count_ff_reg[37]),
        .O(count_ff2_carry__3_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_ff2_carry__3_i_7
       (.I0(count_ff_reg[34]),
        .I1(count_ff_reg[35]),
        .O(count_ff2_carry__3_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_ff2_carry__3_i_8
       (.I0(count_ff_reg[32]),
        .I1(count_ff_reg[33]),
        .O(count_ff2_carry__3_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 count_ff2_carry__4
       (.CI(count_ff2_carry__3_n_0),
        .CO({count_ff2_carry__4_n_0,count_ff2_carry__4_n_1,count_ff2_carry__4_n_2,count_ff2_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({count_ff2_carry__4_i_1_n_0,count_ff2_carry__4_i_2_n_0,count_ff2_carry__4_i_3_n_0,count_ff2_carry__4_i_4_n_0}),
        .O(NLW_count_ff2_carry__4_O_UNCONNECTED[3:0]),
        .S({count_ff2_carry__4_i_5_n_0,count_ff2_carry__4_i_6_n_0,count_ff2_carry__4_i_7_n_0,count_ff2_carry__4_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    count_ff2_carry__4_i_1
       (.I0(count_ff_reg[46]),
        .I1(count_ff_reg[47]),
        .O(count_ff2_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count_ff2_carry__4_i_2
       (.I0(count_ff_reg[44]),
        .I1(count_ff_reg[45]),
        .O(count_ff2_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count_ff2_carry__4_i_3
       (.I0(count_ff_reg[42]),
        .I1(count_ff_reg[43]),
        .O(count_ff2_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count_ff2_carry__4_i_4
       (.I0(count_ff_reg[40]),
        .I1(count_ff_reg[41]),
        .O(count_ff2_carry__4_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_ff2_carry__4_i_5
       (.I0(count_ff_reg[46]),
        .I1(count_ff_reg[47]),
        .O(count_ff2_carry__4_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_ff2_carry__4_i_6
       (.I0(count_ff_reg[44]),
        .I1(count_ff_reg[45]),
        .O(count_ff2_carry__4_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_ff2_carry__4_i_7
       (.I0(count_ff_reg[42]),
        .I1(count_ff_reg[43]),
        .O(count_ff2_carry__4_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_ff2_carry__4_i_8
       (.I0(count_ff_reg[40]),
        .I1(count_ff_reg[41]),
        .O(count_ff2_carry__4_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 count_ff2_carry__5
       (.CI(count_ff2_carry__4_n_0),
        .CO({count_ff2_carry__5_n_0,count_ff2_carry__5_n_1,count_ff2_carry__5_n_2,count_ff2_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({count_ff2_carry__5_i_1_n_0,count_ff2_carry__5_i_2_n_0,count_ff2_carry__5_i_3_n_0,count_ff2_carry__5_i_4_n_0}),
        .O(NLW_count_ff2_carry__5_O_UNCONNECTED[3:0]),
        .S({count_ff2_carry__5_i_5_n_0,count_ff2_carry__5_i_6_n_0,count_ff2_carry__5_i_7_n_0,count_ff2_carry__5_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    count_ff2_carry__5_i_1
       (.I0(count_ff_reg[54]),
        .I1(count_ff_reg[55]),
        .O(count_ff2_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count_ff2_carry__5_i_2
       (.I0(count_ff_reg[52]),
        .I1(count_ff_reg[53]),
        .O(count_ff2_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count_ff2_carry__5_i_3
       (.I0(count_ff_reg[50]),
        .I1(count_ff_reg[51]),
        .O(count_ff2_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count_ff2_carry__5_i_4
       (.I0(count_ff_reg[48]),
        .I1(count_ff_reg[49]),
        .O(count_ff2_carry__5_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_ff2_carry__5_i_5
       (.I0(count_ff_reg[54]),
        .I1(count_ff_reg[55]),
        .O(count_ff2_carry__5_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_ff2_carry__5_i_6
       (.I0(count_ff_reg[52]),
        .I1(count_ff_reg[53]),
        .O(count_ff2_carry__5_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_ff2_carry__5_i_7
       (.I0(count_ff_reg[50]),
        .I1(count_ff_reg[51]),
        .O(count_ff2_carry__5_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_ff2_carry__5_i_8
       (.I0(count_ff_reg[48]),
        .I1(count_ff_reg[49]),
        .O(count_ff2_carry__5_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 count_ff2_carry__6
       (.CI(count_ff2_carry__5_n_0),
        .CO({CO,count_ff2_carry__6_n_1,count_ff2_carry__6_n_2,count_ff2_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({count_ff2_carry__6_i_1_n_0,count_ff2_carry__6_i_2_n_0,count_ff2_carry__6_i_3_n_0,count_ff2_carry__6_i_4_n_0}),
        .O(NLW_count_ff2_carry__6_O_UNCONNECTED[3:0]),
        .S({count_ff2_carry__6_i_5_n_0,count_ff2_carry__6_i_6_n_0,count_ff2_carry__6_i_7_n_0,count_ff2_carry__6_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    count_ff2_carry__6_i_1
       (.I0(count_ff_reg[62]),
        .I1(count_ff_reg[63]),
        .O(count_ff2_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count_ff2_carry__6_i_2
       (.I0(count_ff_reg[60]),
        .I1(count_ff_reg[61]),
        .O(count_ff2_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count_ff2_carry__6_i_3
       (.I0(count_ff_reg[58]),
        .I1(count_ff_reg[59]),
        .O(count_ff2_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count_ff2_carry__6_i_4
       (.I0(count_ff_reg[56]),
        .I1(count_ff_reg[57]),
        .O(count_ff2_carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_ff2_carry__6_i_5
       (.I0(count_ff_reg[62]),
        .I1(count_ff_reg[63]),
        .O(count_ff2_carry__6_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_ff2_carry__6_i_6
       (.I0(count_ff_reg[60]),
        .I1(count_ff_reg[61]),
        .O(count_ff2_carry__6_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_ff2_carry__6_i_7
       (.I0(count_ff_reg[58]),
        .I1(count_ff_reg[59]),
        .O(count_ff2_carry__6_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_ff2_carry__6_i_8
       (.I0(count_ff_reg[56]),
        .I1(count_ff_reg[57]),
        .O(count_ff2_carry__6_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count_ff2_carry_i_1
       (.I0(count_ff_reg[6]),
        .I1(count_ff_reg[7]),
        .O(count_ff2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count_ff2_carry_i_2
       (.I0(count_ff_reg[4]),
        .I1(count_ff_reg[5]),
        .O(count_ff2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count_ff2_carry_i_3
       (.I0(count_ff_reg[2]),
        .I1(count_ff_reg[3]),
        .O(count_ff2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count_ff2_carry_i_4
       (.I0(count_ff_reg[0]),
        .I1(count_ff_reg[1]),
        .O(count_ff2_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_ff2_carry_i_5
       (.I0(count_ff_reg[6]),
        .I1(count_ff_reg[7]),
        .O(count_ff2_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_ff2_carry_i_6
       (.I0(count_ff_reg[4]),
        .I1(count_ff_reg[5]),
        .O(count_ff2_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_ff2_carry_i_7
       (.I0(count_ff_reg[2]),
        .I1(count_ff_reg[3]),
        .O(count_ff2_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_ff2_carry_i_8
       (.I0(count_ff_reg[0]),
        .I1(count_ff_reg[1]),
        .O(count_ff2_carry_i_8_n_0));
  FDRE \count_ff_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(O[0]),
        .Q(count_ff_reg[0]),
        .R(1'b0));
  FDRE \count_ff_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[11]_0 [2]),
        .Q(count_ff_reg[10]),
        .R(1'b0));
  FDRE \count_ff_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[11]_0 [3]),
        .Q(count_ff_reg[11]),
        .R(1'b0));
  FDRE \count_ff_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[15]_0 [0]),
        .Q(count_ff_reg[12]),
        .R(1'b0));
  FDRE \count_ff_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[15]_0 [1]),
        .Q(count_ff_reg[13]),
        .R(1'b0));
  FDRE \count_ff_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[15]_0 [2]),
        .Q(count_ff_reg[14]),
        .R(1'b0));
  FDRE \count_ff_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[15]_0 [3]),
        .Q(count_ff_reg[15]),
        .R(1'b0));
  FDRE \count_ff_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[19]_0 [0]),
        .Q(count_ff_reg[16]),
        .R(1'b0));
  FDRE \count_ff_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[19]_0 [1]),
        .Q(count_ff_reg[17]),
        .R(1'b0));
  FDRE \count_ff_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[19]_0 [2]),
        .Q(count_ff_reg[18]),
        .R(1'b0));
  FDRE \count_ff_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[19]_0 [3]),
        .Q(count_ff_reg[19]),
        .R(1'b0));
  FDRE \count_ff_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(O[1]),
        .Q(count_ff_reg[1]),
        .R(1'b0));
  FDRE \count_ff_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[23]_0 [0]),
        .Q(count_ff_reg[20]),
        .R(1'b0));
  FDRE \count_ff_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[23]_0 [1]),
        .Q(count_ff_reg[21]),
        .R(1'b0));
  FDRE \count_ff_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[23]_0 [2]),
        .Q(count_ff_reg[22]),
        .R(1'b0));
  FDRE \count_ff_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[23]_0 [3]),
        .Q(count_ff_reg[23]),
        .R(1'b0));
  FDRE \count_ff_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[27]_0 [0]),
        .Q(count_ff_reg[24]),
        .R(1'b0));
  FDRE \count_ff_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[27]_0 [1]),
        .Q(count_ff_reg[25]),
        .R(1'b0));
  FDRE \count_ff_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[27]_0 [2]),
        .Q(count_ff_reg[26]),
        .R(1'b0));
  FDRE \count_ff_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[27]_0 [3]),
        .Q(count_ff_reg[27]),
        .R(1'b0));
  FDRE \count_ff_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[31]_0 [0]),
        .Q(count_ff_reg[28]),
        .R(1'b0));
  FDRE \count_ff_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[31]_0 [1]),
        .Q(count_ff_reg[29]),
        .R(1'b0));
  FDRE \count_ff_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(O[2]),
        .Q(count_ff_reg[2]),
        .R(1'b0));
  FDRE \count_ff_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[31]_0 [2]),
        .Q(count_ff_reg[30]),
        .R(1'b0));
  FDRE \count_ff_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[31]_0 [3]),
        .Q(count_ff_reg[31]),
        .R(1'b0));
  FDRE \count_ff_reg[32] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[35]_0 [0]),
        .Q(count_ff_reg[32]),
        .R(1'b0));
  FDRE \count_ff_reg[33] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[35]_0 [1]),
        .Q(count_ff_reg[33]),
        .R(1'b0));
  FDRE \count_ff_reg[34] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[35]_0 [2]),
        .Q(count_ff_reg[34]),
        .R(1'b0));
  FDRE \count_ff_reg[35] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[35]_0 [3]),
        .Q(count_ff_reg[35]),
        .R(1'b0));
  FDRE \count_ff_reg[36] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[39]_0 [0]),
        .Q(count_ff_reg[36]),
        .R(1'b0));
  FDRE \count_ff_reg[37] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[39]_0 [1]),
        .Q(count_ff_reg[37]),
        .R(1'b0));
  FDRE \count_ff_reg[38] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[39]_0 [2]),
        .Q(count_ff_reg[38]),
        .R(1'b0));
  FDRE \count_ff_reg[39] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[39]_0 [3]),
        .Q(count_ff_reg[39]),
        .R(1'b0));
  FDRE \count_ff_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(O[3]),
        .Q(count_ff_reg[3]),
        .R(1'b0));
  FDRE \count_ff_reg[40] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[43]_0 [0]),
        .Q(count_ff_reg[40]),
        .R(1'b0));
  FDRE \count_ff_reg[41] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[43]_0 [1]),
        .Q(count_ff_reg[41]),
        .R(1'b0));
  FDRE \count_ff_reg[42] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[43]_0 [2]),
        .Q(count_ff_reg[42]),
        .R(1'b0));
  FDRE \count_ff_reg[43] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[43]_0 [3]),
        .Q(count_ff_reg[43]),
        .R(1'b0));
  FDRE \count_ff_reg[44] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[47]_0 [0]),
        .Q(count_ff_reg[44]),
        .R(1'b0));
  FDRE \count_ff_reg[45] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[47]_0 [1]),
        .Q(count_ff_reg[45]),
        .R(1'b0));
  FDRE \count_ff_reg[46] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[47]_0 [2]),
        .Q(count_ff_reg[46]),
        .R(1'b0));
  FDRE \count_ff_reg[47] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[47]_0 [3]),
        .Q(count_ff_reg[47]),
        .R(1'b0));
  FDRE \count_ff_reg[48] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[51]_0 [0]),
        .Q(count_ff_reg[48]),
        .R(1'b0));
  FDRE \count_ff_reg[49] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[51]_0 [1]),
        .Q(count_ff_reg[49]),
        .R(1'b0));
  FDRE \count_ff_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[7]_0 [0]),
        .Q(count_ff_reg[4]),
        .R(1'b0));
  FDRE \count_ff_reg[50] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[51]_0 [2]),
        .Q(count_ff_reg[50]),
        .R(1'b0));
  FDRE \count_ff_reg[51] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[51]_0 [3]),
        .Q(count_ff_reg[51]),
        .R(1'b0));
  FDRE \count_ff_reg[52] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[55]_0 [0]),
        .Q(count_ff_reg[52]),
        .R(1'b0));
  FDRE \count_ff_reg[53] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[55]_0 [1]),
        .Q(count_ff_reg[53]),
        .R(1'b0));
  FDRE \count_ff_reg[54] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[55]_0 [2]),
        .Q(count_ff_reg[54]),
        .R(1'b0));
  FDRE \count_ff_reg[55] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[55]_0 [3]),
        .Q(count_ff_reg[55]),
        .R(1'b0));
  FDRE \count_ff_reg[56] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[59]_0 [0]),
        .Q(count_ff_reg[56]),
        .R(1'b0));
  FDRE \count_ff_reg[57] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[59]_0 [1]),
        .Q(count_ff_reg[57]),
        .R(1'b0));
  FDRE \count_ff_reg[58] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[59]_0 [2]),
        .Q(count_ff_reg[58]),
        .R(1'b0));
  FDRE \count_ff_reg[59] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[59]_0 [3]),
        .Q(count_ff_reg[59]),
        .R(1'b0));
  FDRE \count_ff_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[7]_0 [1]),
        .Q(count_ff_reg[5]),
        .R(1'b0));
  FDRE \count_ff_reg[60] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[63]_1 [0]),
        .Q(count_ff_reg[60]),
        .R(1'b0));
  FDRE \count_ff_reg[61] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[63]_1 [1]),
        .Q(count_ff_reg[61]),
        .R(1'b0));
  FDRE \count_ff_reg[62] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[63]_1 [2]),
        .Q(count_ff_reg[62]),
        .R(1'b0));
  FDRE \count_ff_reg[63] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[63]_1 [3]),
        .Q(count_ff_reg[63]),
        .R(1'b0));
  FDRE \count_ff_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[7]_0 [2]),
        .Q(count_ff_reg[6]),
        .R(1'b0));
  FDRE \count_ff_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[7]_0 [3]),
        .Q(count_ff_reg[7]),
        .R(1'b0));
  FDRE \count_ff_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[11]_0 [0]),
        .Q(count_ff_reg[8]),
        .R(1'b0));
  FDRE \count_ff_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\count_ff_reg[63]_0 ),
        .D(\count_ff_reg[11]_0 [1]),
        .Q(count_ff_reg[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clk_gate_top" *) 
module design_1_clk_gate_top_0_0_clk_gate_top
   (S_AXI_RDATA,
    read_fsm_state_ff_reg,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    clk_o,
    clk_enabled_o,
    S_AXI_BVALID,
    S_AXI_ARREADY,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_BREADY,
    S_AXI_ACLK,
    S_AXI_AWADDR,
    S_AXI_WDATA,
    S_AXI_ARESETN,
    S_AXI_RREADY,
    S_AXI_ARVALID);
  output [0:0]S_AXI_RDATA;
  output read_fsm_state_ff_reg;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output clk_o;
  output clk_enabled_o;
  output S_AXI_BVALID;
  output S_AXI_ARREADY;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input S_AXI_BREADY;
  input S_AXI_ACLK;
  input [5:0]S_AXI_AWADDR;
  input [31:0]S_AXI_WDATA;
  input S_AXI_ARESETN;
  input S_AXI_RREADY;
  input S_AXI_ARVALID;

  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [5:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [0:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire clk_en;
  wire clk_enabled_o;
  wire clk_mode;
  wire clk_o;
  wire clk_router_inst_n_1;
  wire clk_router_inst_n_10;
  wire clk_router_inst_n_11;
  wire clk_router_inst_n_12;
  wire clk_router_inst_n_13;
  wire clk_router_inst_n_14;
  wire clk_router_inst_n_15;
  wire clk_router_inst_n_16;
  wire clk_router_inst_n_17;
  wire clk_router_inst_n_18;
  wire clk_router_inst_n_19;
  wire clk_router_inst_n_20;
  wire clk_router_inst_n_21;
  wire clk_router_inst_n_22;
  wire clk_router_inst_n_23;
  wire clk_router_inst_n_24;
  wire clk_router_inst_n_25;
  wire clk_router_inst_n_26;
  wire clk_router_inst_n_27;
  wire clk_router_inst_n_28;
  wire clk_router_inst_n_29;
  wire clk_router_inst_n_3;
  wire clk_router_inst_n_30;
  wire clk_router_inst_n_31;
  wire clk_router_inst_n_32;
  wire clk_router_inst_n_33;
  wire clk_router_inst_n_34;
  wire clk_router_inst_n_35;
  wire clk_router_inst_n_36;
  wire clk_router_inst_n_37;
  wire clk_router_inst_n_38;
  wire clk_router_inst_n_39;
  wire clk_router_inst_n_4;
  wire clk_router_inst_n_40;
  wire clk_router_inst_n_41;
  wire clk_router_inst_n_42;
  wire clk_router_inst_n_43;
  wire clk_router_inst_n_44;
  wire clk_router_inst_n_45;
  wire clk_router_inst_n_46;
  wire clk_router_inst_n_47;
  wire clk_router_inst_n_48;
  wire clk_router_inst_n_49;
  wire clk_router_inst_n_5;
  wire clk_router_inst_n_50;
  wire clk_router_inst_n_51;
  wire clk_router_inst_n_52;
  wire clk_router_inst_n_53;
  wire clk_router_inst_n_54;
  wire clk_router_inst_n_55;
  wire clk_router_inst_n_56;
  wire clk_router_inst_n_57;
  wire clk_router_inst_n_58;
  wire clk_router_inst_n_59;
  wire clk_router_inst_n_6;
  wire clk_router_inst_n_60;
  wire clk_router_inst_n_61;
  wire clk_router_inst_n_62;
  wire clk_router_inst_n_63;
  wire clk_router_inst_n_64;
  wire clk_router_inst_n_65;
  wire clk_router_inst_n_66;
  wire clk_router_inst_n_67;
  wire clk_router_inst_n_7;
  wire clk_router_inst_n_8;
  wire clk_router_inst_n_9;
  wire [63:0]count_ff_reg;
  wire counting;
  wire read_fsm_state_ff_reg;
  wire read_write_axi_inst_n_42;
  wire read_write_axi_inst_n_5;
  wire read_write_axi_inst_n_6;
  wire read_write_axi_inst_n_7;
  wire read_write_axi_inst_n_9;
  wire [31:0]write_data_ff;

  design_1_clk_gate_top_0_0_clk_gate clk_gate_inst
       (.CO(counting),
        .O({clk_router_inst_n_3,clk_router_inst_n_4,clk_router_inst_n_5,clk_router_inst_n_6}),
        .S_AXI_ACLK(S_AXI_ACLK),
        .clk_enabled_o(clk_enabled_o),
        .clk_o(clk_o),
        .count_ff_reg(count_ff_reg),
        .\count_ff_reg[11]_0 ({clk_router_inst_n_11,clk_router_inst_n_12,clk_router_inst_n_13,clk_router_inst_n_14}),
        .\count_ff_reg[15]_0 ({clk_router_inst_n_15,clk_router_inst_n_16,clk_router_inst_n_17,clk_router_inst_n_18}),
        .\count_ff_reg[19]_0 ({clk_router_inst_n_19,clk_router_inst_n_20,clk_router_inst_n_21,clk_router_inst_n_22}),
        .\count_ff_reg[23]_0 ({clk_router_inst_n_23,clk_router_inst_n_24,clk_router_inst_n_25,clk_router_inst_n_26}),
        .\count_ff_reg[27]_0 ({clk_router_inst_n_27,clk_router_inst_n_28,clk_router_inst_n_29,clk_router_inst_n_30}),
        .\count_ff_reg[31]_0 ({clk_router_inst_n_31,clk_router_inst_n_32,clk_router_inst_n_33,clk_router_inst_n_34}),
        .\count_ff_reg[35]_0 ({clk_router_inst_n_35,clk_router_inst_n_36,clk_router_inst_n_37,clk_router_inst_n_38}),
        .\count_ff_reg[39]_0 ({clk_router_inst_n_39,clk_router_inst_n_40,clk_router_inst_n_41,clk_router_inst_n_42}),
        .\count_ff_reg[43]_0 ({clk_router_inst_n_43,clk_router_inst_n_44,clk_router_inst_n_45,clk_router_inst_n_46}),
        .\count_ff_reg[47]_0 ({clk_router_inst_n_47,clk_router_inst_n_48,clk_router_inst_n_49,clk_router_inst_n_50}),
        .\count_ff_reg[51]_0 ({clk_router_inst_n_51,clk_router_inst_n_52,clk_router_inst_n_53,clk_router_inst_n_54}),
        .\count_ff_reg[55]_0 ({clk_router_inst_n_55,clk_router_inst_n_56,clk_router_inst_n_57,clk_router_inst_n_58}),
        .\count_ff_reg[59]_0 ({clk_router_inst_n_59,clk_router_inst_n_60,clk_router_inst_n_61,clk_router_inst_n_62}),
        .\count_ff_reg[63]_0 (clk_router_inst_n_67),
        .\count_ff_reg[63]_1 ({clk_router_inst_n_63,clk_router_inst_n_64,clk_router_inst_n_65,clk_router_inst_n_66}),
        .\count_ff_reg[7]_0 ({clk_router_inst_n_7,clk_router_inst_n_8,clk_router_inst_n_9,clk_router_inst_n_10}));
  design_1_clk_gate_top_0_0_clk_router clk_router_inst
       (.CO(counting),
        .E({read_write_axi_inst_n_5,read_write_axi_inst_n_6}),
        .O({clk_router_inst_n_3,clk_router_inst_n_4,clk_router_inst_n_5,clk_router_inst_n_6}),
        .Q(write_data_ff),
        .SR(clk_router_inst_n_1),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .\clk_count_ff_reg[11]_0 ({clk_router_inst_n_11,clk_router_inst_n_12,clk_router_inst_n_13,clk_router_inst_n_14}),
        .\clk_count_ff_reg[15]_0 ({clk_router_inst_n_15,clk_router_inst_n_16,clk_router_inst_n_17,clk_router_inst_n_18}),
        .\clk_count_ff_reg[19]_0 ({clk_router_inst_n_19,clk_router_inst_n_20,clk_router_inst_n_21,clk_router_inst_n_22}),
        .\clk_count_ff_reg[23]_0 ({clk_router_inst_n_23,clk_router_inst_n_24,clk_router_inst_n_25,clk_router_inst_n_26}),
        .\clk_count_ff_reg[27]_0 ({clk_router_inst_n_27,clk_router_inst_n_28,clk_router_inst_n_29,clk_router_inst_n_30}),
        .\clk_count_ff_reg[31]_0 ({clk_router_inst_n_31,clk_router_inst_n_32,clk_router_inst_n_33,clk_router_inst_n_34}),
        .\clk_count_ff_reg[35]_0 ({clk_router_inst_n_35,clk_router_inst_n_36,clk_router_inst_n_37,clk_router_inst_n_38}),
        .\clk_count_ff_reg[39]_0 ({clk_router_inst_n_39,clk_router_inst_n_40,clk_router_inst_n_41,clk_router_inst_n_42}),
        .\clk_count_ff_reg[43]_0 ({clk_router_inst_n_43,clk_router_inst_n_44,clk_router_inst_n_45,clk_router_inst_n_46}),
        .\clk_count_ff_reg[47]_0 ({clk_router_inst_n_47,clk_router_inst_n_48,clk_router_inst_n_49,clk_router_inst_n_50}),
        .\clk_count_ff_reg[51]_0 ({clk_router_inst_n_51,clk_router_inst_n_52,clk_router_inst_n_53,clk_router_inst_n_54}),
        .\clk_count_ff_reg[55]_0 ({clk_router_inst_n_55,clk_router_inst_n_56,clk_router_inst_n_57,clk_router_inst_n_58}),
        .\clk_count_ff_reg[59]_0 ({clk_router_inst_n_59,clk_router_inst_n_60,clk_router_inst_n_61,clk_router_inst_n_62}),
        .\clk_count_ff_reg[62]_0 ({clk_router_inst_n_63,clk_router_inst_n_64,clk_router_inst_n_65,clk_router_inst_n_66}),
        .\clk_count_ff_reg[7]_0 ({clk_router_inst_n_7,clk_router_inst_n_8,clk_router_inst_n_9,clk_router_inst_n_10}),
        .clk_en(clk_en),
        .clk_en_ff_reg_0(read_write_axi_inst_n_9),
        .clk_enabled_o(clk_enabled_o),
        .clk_mode(clk_mode),
        .clk_mode_ff_reg_0(read_write_axi_inst_n_42),
        .clk_w_count_ff_reg_0(clk_router_inst_n_67),
        .clk_w_count_ff_reg_1(read_write_axi_inst_n_7),
        .count_ff_reg(count_ff_reg));
  design_1_clk_gate_top_0_0_read_write_axi read_write_axi_inst
       (.CO(counting),
        .E({read_write_axi_inst_n_5,read_write_axi_inst_n_6}),
        .\FSM_sequential_write_fsm_state_ff_reg[0]_0 (read_write_axi_inst_n_7),
        .Q(write_data_ff),
        .SR(clk_router_inst_n_1),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .clk_en(clk_en),
        .clk_mode(clk_mode),
        .read_fsm_state_ff_reg_0(read_fsm_state_ff_reg),
        .\write_data_ff_reg[0]_0 (read_write_axi_inst_n_9),
        .\write_data_ff_reg[0]_1 (read_write_axi_inst_n_42));
endmodule

(* ORIG_REF_NAME = "clk_router" *) 
module design_1_clk_gate_top_0_0_clk_router
   (clk_en,
    SR,
    clk_mode,
    O,
    \clk_count_ff_reg[7]_0 ,
    \clk_count_ff_reg[11]_0 ,
    \clk_count_ff_reg[15]_0 ,
    \clk_count_ff_reg[19]_0 ,
    \clk_count_ff_reg[23]_0 ,
    \clk_count_ff_reg[27]_0 ,
    \clk_count_ff_reg[31]_0 ,
    \clk_count_ff_reg[35]_0 ,
    \clk_count_ff_reg[39]_0 ,
    \clk_count_ff_reg[43]_0 ,
    \clk_count_ff_reg[47]_0 ,
    \clk_count_ff_reg[51]_0 ,
    \clk_count_ff_reg[55]_0 ,
    \clk_count_ff_reg[59]_0 ,
    \clk_count_ff_reg[62]_0 ,
    clk_w_count_ff_reg_0,
    clk_enabled_o,
    clk_w_count_ff_reg_1,
    S_AXI_ACLK,
    clk_en_ff_reg_0,
    clk_mode_ff_reg_0,
    count_ff_reg,
    S_AXI_ARESETN,
    CO,
    E,
    Q);
  output clk_en;
  output [0:0]SR;
  output clk_mode;
  output [3:0]O;
  output [3:0]\clk_count_ff_reg[7]_0 ;
  output [3:0]\clk_count_ff_reg[11]_0 ;
  output [3:0]\clk_count_ff_reg[15]_0 ;
  output [3:0]\clk_count_ff_reg[19]_0 ;
  output [3:0]\clk_count_ff_reg[23]_0 ;
  output [3:0]\clk_count_ff_reg[27]_0 ;
  output [3:0]\clk_count_ff_reg[31]_0 ;
  output [3:0]\clk_count_ff_reg[35]_0 ;
  output [3:0]\clk_count_ff_reg[39]_0 ;
  output [3:0]\clk_count_ff_reg[43]_0 ;
  output [3:0]\clk_count_ff_reg[47]_0 ;
  output [3:0]\clk_count_ff_reg[51]_0 ;
  output [3:0]\clk_count_ff_reg[55]_0 ;
  output [3:0]\clk_count_ff_reg[59]_0 ;
  output [3:0]\clk_count_ff_reg[62]_0 ;
  output clk_w_count_ff_reg_0;
  output clk_enabled_o;
  input clk_w_count_ff_reg_1;
  input S_AXI_ACLK;
  input clk_en_ff_reg_0;
  input clk_mode_ff_reg_0;
  input [63:0]count_ff_reg;
  input S_AXI_ARESETN;
  input [0:0]CO;
  input [1:0]E;
  input [31:0]Q;

  wire [0:0]CO;
  wire [1:0]E;
  wire [3:0]O;
  wire [31:0]Q;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire [63:0]clk_count_ff;
  wire [3:0]\clk_count_ff_reg[11]_0 ;
  wire [3:0]\clk_count_ff_reg[15]_0 ;
  wire [3:0]\clk_count_ff_reg[19]_0 ;
  wire [3:0]\clk_count_ff_reg[23]_0 ;
  wire [3:0]\clk_count_ff_reg[27]_0 ;
  wire [3:0]\clk_count_ff_reg[31]_0 ;
  wire [3:0]\clk_count_ff_reg[35]_0 ;
  wire [3:0]\clk_count_ff_reg[39]_0 ;
  wire [3:0]\clk_count_ff_reg[43]_0 ;
  wire [3:0]\clk_count_ff_reg[47]_0 ;
  wire [3:0]\clk_count_ff_reg[51]_0 ;
  wire [3:0]\clk_count_ff_reg[55]_0 ;
  wire [3:0]\clk_count_ff_reg[59]_0 ;
  wire [3:0]\clk_count_ff_reg[62]_0 ;
  wire [3:0]\clk_count_ff_reg[7]_0 ;
  wire clk_en;
  wire clk_en_ff_reg_0;
  wire clk_enabled_o;
  wire clk_mode;
  wire clk_mode_ff_reg_0;
  wire clk_w_count;
  wire clk_w_count_ff_reg_0;
  wire clk_w_count_ff_reg_1;
  wire \count_ff[0]_i_10_n_0 ;
  wire \count_ff[0]_i_3_n_0 ;
  wire \count_ff[0]_i_4_n_0 ;
  wire \count_ff[0]_i_5_n_0 ;
  wire \count_ff[0]_i_6_n_0 ;
  wire \count_ff[0]_i_7_n_0 ;
  wire \count_ff[0]_i_8_n_0 ;
  wire \count_ff[0]_i_9_n_0 ;
  wire \count_ff[12]_i_2_n_0 ;
  wire \count_ff[12]_i_3_n_0 ;
  wire \count_ff[12]_i_4_n_0 ;
  wire \count_ff[12]_i_5_n_0 ;
  wire \count_ff[12]_i_6_n_0 ;
  wire \count_ff[12]_i_7_n_0 ;
  wire \count_ff[12]_i_8_n_0 ;
  wire \count_ff[12]_i_9_n_0 ;
  wire \count_ff[16]_i_2_n_0 ;
  wire \count_ff[16]_i_3_n_0 ;
  wire \count_ff[16]_i_4_n_0 ;
  wire \count_ff[16]_i_5_n_0 ;
  wire \count_ff[16]_i_6_n_0 ;
  wire \count_ff[16]_i_7_n_0 ;
  wire \count_ff[16]_i_8_n_0 ;
  wire \count_ff[16]_i_9_n_0 ;
  wire \count_ff[20]_i_2_n_0 ;
  wire \count_ff[20]_i_3_n_0 ;
  wire \count_ff[20]_i_4_n_0 ;
  wire \count_ff[20]_i_5_n_0 ;
  wire \count_ff[20]_i_6_n_0 ;
  wire \count_ff[20]_i_7_n_0 ;
  wire \count_ff[20]_i_8_n_0 ;
  wire \count_ff[20]_i_9_n_0 ;
  wire \count_ff[24]_i_2_n_0 ;
  wire \count_ff[24]_i_3_n_0 ;
  wire \count_ff[24]_i_4_n_0 ;
  wire \count_ff[24]_i_5_n_0 ;
  wire \count_ff[24]_i_6_n_0 ;
  wire \count_ff[24]_i_7_n_0 ;
  wire \count_ff[24]_i_8_n_0 ;
  wire \count_ff[24]_i_9_n_0 ;
  wire \count_ff[28]_i_2_n_0 ;
  wire \count_ff[28]_i_3_n_0 ;
  wire \count_ff[28]_i_4_n_0 ;
  wire \count_ff[28]_i_5_n_0 ;
  wire \count_ff[28]_i_6_n_0 ;
  wire \count_ff[28]_i_7_n_0 ;
  wire \count_ff[28]_i_8_n_0 ;
  wire \count_ff[28]_i_9_n_0 ;
  wire \count_ff[32]_i_2_n_0 ;
  wire \count_ff[32]_i_3_n_0 ;
  wire \count_ff[32]_i_4_n_0 ;
  wire \count_ff[32]_i_5_n_0 ;
  wire \count_ff[32]_i_6_n_0 ;
  wire \count_ff[32]_i_7_n_0 ;
  wire \count_ff[32]_i_8_n_0 ;
  wire \count_ff[32]_i_9_n_0 ;
  wire \count_ff[36]_i_2_n_0 ;
  wire \count_ff[36]_i_3_n_0 ;
  wire \count_ff[36]_i_4_n_0 ;
  wire \count_ff[36]_i_5_n_0 ;
  wire \count_ff[36]_i_6_n_0 ;
  wire \count_ff[36]_i_7_n_0 ;
  wire \count_ff[36]_i_8_n_0 ;
  wire \count_ff[36]_i_9_n_0 ;
  wire \count_ff[40]_i_2_n_0 ;
  wire \count_ff[40]_i_3_n_0 ;
  wire \count_ff[40]_i_4_n_0 ;
  wire \count_ff[40]_i_5_n_0 ;
  wire \count_ff[40]_i_6_n_0 ;
  wire \count_ff[40]_i_7_n_0 ;
  wire \count_ff[40]_i_8_n_0 ;
  wire \count_ff[40]_i_9_n_0 ;
  wire \count_ff[44]_i_2_n_0 ;
  wire \count_ff[44]_i_3_n_0 ;
  wire \count_ff[44]_i_4_n_0 ;
  wire \count_ff[44]_i_5_n_0 ;
  wire \count_ff[44]_i_6_n_0 ;
  wire \count_ff[44]_i_7_n_0 ;
  wire \count_ff[44]_i_8_n_0 ;
  wire \count_ff[44]_i_9_n_0 ;
  wire \count_ff[48]_i_2_n_0 ;
  wire \count_ff[48]_i_3_n_0 ;
  wire \count_ff[48]_i_4_n_0 ;
  wire \count_ff[48]_i_5_n_0 ;
  wire \count_ff[48]_i_6_n_0 ;
  wire \count_ff[48]_i_7_n_0 ;
  wire \count_ff[48]_i_8_n_0 ;
  wire \count_ff[48]_i_9_n_0 ;
  wire \count_ff[4]_i_2_n_0 ;
  wire \count_ff[4]_i_3_n_0 ;
  wire \count_ff[4]_i_4_n_0 ;
  wire \count_ff[4]_i_5_n_0 ;
  wire \count_ff[4]_i_6_n_0 ;
  wire \count_ff[4]_i_7_n_0 ;
  wire \count_ff[4]_i_8_n_0 ;
  wire \count_ff[4]_i_9_n_0 ;
  wire \count_ff[52]_i_2_n_0 ;
  wire \count_ff[52]_i_3_n_0 ;
  wire \count_ff[52]_i_4_n_0 ;
  wire \count_ff[52]_i_5_n_0 ;
  wire \count_ff[52]_i_6_n_0 ;
  wire \count_ff[52]_i_7_n_0 ;
  wire \count_ff[52]_i_8_n_0 ;
  wire \count_ff[52]_i_9_n_0 ;
  wire \count_ff[56]_i_2_n_0 ;
  wire \count_ff[56]_i_3_n_0 ;
  wire \count_ff[56]_i_4_n_0 ;
  wire \count_ff[56]_i_5_n_0 ;
  wire \count_ff[56]_i_6_n_0 ;
  wire \count_ff[56]_i_7_n_0 ;
  wire \count_ff[56]_i_8_n_0 ;
  wire \count_ff[56]_i_9_n_0 ;
  wire \count_ff[60]_i_2_n_0 ;
  wire \count_ff[60]_i_3_n_0 ;
  wire \count_ff[60]_i_4_n_0 ;
  wire \count_ff[60]_i_5_n_0 ;
  wire \count_ff[60]_i_6_n_0 ;
  wire \count_ff[60]_i_7_n_0 ;
  wire \count_ff[60]_i_8_n_0 ;
  wire \count_ff[8]_i_2_n_0 ;
  wire \count_ff[8]_i_3_n_0 ;
  wire \count_ff[8]_i_4_n_0 ;
  wire \count_ff[8]_i_5_n_0 ;
  wire \count_ff[8]_i_6_n_0 ;
  wire \count_ff[8]_i_7_n_0 ;
  wire \count_ff[8]_i_8_n_0 ;
  wire \count_ff[8]_i_9_n_0 ;
  wire [63:0]count_ff_reg;
  wire \count_ff_reg[0]_i_2_n_0 ;
  wire \count_ff_reg[0]_i_2_n_1 ;
  wire \count_ff_reg[0]_i_2_n_2 ;
  wire \count_ff_reg[0]_i_2_n_3 ;
  wire \count_ff_reg[12]_i_1_n_0 ;
  wire \count_ff_reg[12]_i_1_n_1 ;
  wire \count_ff_reg[12]_i_1_n_2 ;
  wire \count_ff_reg[12]_i_1_n_3 ;
  wire \count_ff_reg[16]_i_1_n_0 ;
  wire \count_ff_reg[16]_i_1_n_1 ;
  wire \count_ff_reg[16]_i_1_n_2 ;
  wire \count_ff_reg[16]_i_1_n_3 ;
  wire \count_ff_reg[20]_i_1_n_0 ;
  wire \count_ff_reg[20]_i_1_n_1 ;
  wire \count_ff_reg[20]_i_1_n_2 ;
  wire \count_ff_reg[20]_i_1_n_3 ;
  wire \count_ff_reg[24]_i_1_n_0 ;
  wire \count_ff_reg[24]_i_1_n_1 ;
  wire \count_ff_reg[24]_i_1_n_2 ;
  wire \count_ff_reg[24]_i_1_n_3 ;
  wire \count_ff_reg[28]_i_1_n_0 ;
  wire \count_ff_reg[28]_i_1_n_1 ;
  wire \count_ff_reg[28]_i_1_n_2 ;
  wire \count_ff_reg[28]_i_1_n_3 ;
  wire \count_ff_reg[32]_i_1_n_0 ;
  wire \count_ff_reg[32]_i_1_n_1 ;
  wire \count_ff_reg[32]_i_1_n_2 ;
  wire \count_ff_reg[32]_i_1_n_3 ;
  wire \count_ff_reg[36]_i_1_n_0 ;
  wire \count_ff_reg[36]_i_1_n_1 ;
  wire \count_ff_reg[36]_i_1_n_2 ;
  wire \count_ff_reg[36]_i_1_n_3 ;
  wire \count_ff_reg[40]_i_1_n_0 ;
  wire \count_ff_reg[40]_i_1_n_1 ;
  wire \count_ff_reg[40]_i_1_n_2 ;
  wire \count_ff_reg[40]_i_1_n_3 ;
  wire \count_ff_reg[44]_i_1_n_0 ;
  wire \count_ff_reg[44]_i_1_n_1 ;
  wire \count_ff_reg[44]_i_1_n_2 ;
  wire \count_ff_reg[44]_i_1_n_3 ;
  wire \count_ff_reg[48]_i_1_n_0 ;
  wire \count_ff_reg[48]_i_1_n_1 ;
  wire \count_ff_reg[48]_i_1_n_2 ;
  wire \count_ff_reg[48]_i_1_n_3 ;
  wire \count_ff_reg[4]_i_1_n_0 ;
  wire \count_ff_reg[4]_i_1_n_1 ;
  wire \count_ff_reg[4]_i_1_n_2 ;
  wire \count_ff_reg[4]_i_1_n_3 ;
  wire \count_ff_reg[52]_i_1_n_0 ;
  wire \count_ff_reg[52]_i_1_n_1 ;
  wire \count_ff_reg[52]_i_1_n_2 ;
  wire \count_ff_reg[52]_i_1_n_3 ;
  wire \count_ff_reg[56]_i_1_n_0 ;
  wire \count_ff_reg[56]_i_1_n_1 ;
  wire \count_ff_reg[56]_i_1_n_2 ;
  wire \count_ff_reg[56]_i_1_n_3 ;
  wire \count_ff_reg[60]_i_1_n_1 ;
  wire \count_ff_reg[60]_i_1_n_2 ;
  wire \count_ff_reg[60]_i_1_n_3 ;
  wire \count_ff_reg[8]_i_1_n_0 ;
  wire \count_ff_reg[8]_i_1_n_1 ;
  wire \count_ff_reg[8]_i_1_n_2 ;
  wire \count_ff_reg[8]_i_1_n_3 ;
  wire [3:3]\NLW_count_ff_reg[60]_i_1_CO_UNCONNECTED ;

  FDRE \clk_count_ff_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(E[0]),
        .D(Q[0]),
        .Q(clk_count_ff[0]),
        .R(SR));
  FDRE \clk_count_ff_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(E[0]),
        .D(Q[10]),
        .Q(clk_count_ff[10]),
        .R(SR));
  FDRE \clk_count_ff_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(E[0]),
        .D(Q[11]),
        .Q(clk_count_ff[11]),
        .R(SR));
  FDRE \clk_count_ff_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(E[0]),
        .D(Q[12]),
        .Q(clk_count_ff[12]),
        .R(SR));
  FDRE \clk_count_ff_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(E[0]),
        .D(Q[13]),
        .Q(clk_count_ff[13]),
        .R(SR));
  FDRE \clk_count_ff_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(E[0]),
        .D(Q[14]),
        .Q(clk_count_ff[14]),
        .R(SR));
  FDRE \clk_count_ff_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(E[0]),
        .D(Q[15]),
        .Q(clk_count_ff[15]),
        .R(SR));
  FDRE \clk_count_ff_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(E[0]),
        .D(Q[16]),
        .Q(clk_count_ff[16]),
        .R(SR));
  FDRE \clk_count_ff_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(E[0]),
        .D(Q[17]),
        .Q(clk_count_ff[17]),
        .R(SR));
  FDRE \clk_count_ff_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(E[0]),
        .D(Q[18]),
        .Q(clk_count_ff[18]),
        .R(SR));
  FDRE \clk_count_ff_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(E[0]),
        .D(Q[19]),
        .Q(clk_count_ff[19]),
        .R(SR));
  FDRE \clk_count_ff_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(E[0]),
        .D(Q[1]),
        .Q(clk_count_ff[1]),
        .R(SR));
  FDRE \clk_count_ff_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(E[0]),
        .D(Q[20]),
        .Q(clk_count_ff[20]),
        .R(SR));
  FDRE \clk_count_ff_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(E[0]),
        .D(Q[21]),
        .Q(clk_count_ff[21]),
        .R(SR));
  FDRE \clk_count_ff_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(E[0]),
        .D(Q[22]),
        .Q(clk_count_ff[22]),
        .R(SR));
  FDRE \clk_count_ff_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(E[0]),
        .D(Q[23]),
        .Q(clk_count_ff[23]),
        .R(SR));
  FDRE \clk_count_ff_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(E[0]),
        .D(Q[24]),
        .Q(clk_count_ff[24]),
        .R(SR));
  FDRE \clk_count_ff_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(E[0]),
        .D(Q[25]),
        .Q(clk_count_ff[25]),
        .R(SR));
  FDRE \clk_count_ff_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(E[0]),
        .D(Q[26]),
        .Q(clk_count_ff[26]),
        .R(SR));
  FDRE \clk_count_ff_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(E[0]),
        .D(Q[27]),
        .Q(clk_count_ff[27]),
        .R(SR));
  FDRE \clk_count_ff_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(E[0]),
        .D(Q[28]),
        .Q(clk_count_ff[28]),
        .R(SR));
  FDRE \clk_count_ff_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(E[0]),
        .D(Q[29]),
        .Q(clk_count_ff[29]),
        .R(SR));
  FDRE \clk_count_ff_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(E[0]),
        .D(Q[2]),
        .Q(clk_count_ff[2]),
        .R(SR));
  FDRE \clk_count_ff_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(E[0]),
        .D(Q[30]),
        .Q(clk_count_ff[30]),
        .R(SR));
  FDRE \clk_count_ff_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(E[0]),
        .D(Q[31]),
        .Q(clk_count_ff[31]),
        .R(SR));
  FDRE \clk_count_ff_reg[32] 
       (.C(S_AXI_ACLK),
        .CE(E[1]),
        .D(Q[0]),
        .Q(clk_count_ff[32]),
        .R(SR));
  FDRE \clk_count_ff_reg[33] 
       (.C(S_AXI_ACLK),
        .CE(E[1]),
        .D(Q[1]),
        .Q(clk_count_ff[33]),
        .R(SR));
  FDRE \clk_count_ff_reg[34] 
       (.C(S_AXI_ACLK),
        .CE(E[1]),
        .D(Q[2]),
        .Q(clk_count_ff[34]),
        .R(SR));
  FDRE \clk_count_ff_reg[35] 
       (.C(S_AXI_ACLK),
        .CE(E[1]),
        .D(Q[3]),
        .Q(clk_count_ff[35]),
        .R(SR));
  FDRE \clk_count_ff_reg[36] 
       (.C(S_AXI_ACLK),
        .CE(E[1]),
        .D(Q[4]),
        .Q(clk_count_ff[36]),
        .R(SR));
  FDRE \clk_count_ff_reg[37] 
       (.C(S_AXI_ACLK),
        .CE(E[1]),
        .D(Q[5]),
        .Q(clk_count_ff[37]),
        .R(SR));
  FDRE \clk_count_ff_reg[38] 
       (.C(S_AXI_ACLK),
        .CE(E[1]),
        .D(Q[6]),
        .Q(clk_count_ff[38]),
        .R(SR));
  FDRE \clk_count_ff_reg[39] 
       (.C(S_AXI_ACLK),
        .CE(E[1]),
        .D(Q[7]),
        .Q(clk_count_ff[39]),
        .R(SR));
  FDRE \clk_count_ff_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(E[0]),
        .D(Q[3]),
        .Q(clk_count_ff[3]),
        .R(SR));
  FDRE \clk_count_ff_reg[40] 
       (.C(S_AXI_ACLK),
        .CE(E[1]),
        .D(Q[8]),
        .Q(clk_count_ff[40]),
        .R(SR));
  FDRE \clk_count_ff_reg[41] 
       (.C(S_AXI_ACLK),
        .CE(E[1]),
        .D(Q[9]),
        .Q(clk_count_ff[41]),
        .R(SR));
  FDRE \clk_count_ff_reg[42] 
       (.C(S_AXI_ACLK),
        .CE(E[1]),
        .D(Q[10]),
        .Q(clk_count_ff[42]),
        .R(SR));
  FDRE \clk_count_ff_reg[43] 
       (.C(S_AXI_ACLK),
        .CE(E[1]),
        .D(Q[11]),
        .Q(clk_count_ff[43]),
        .R(SR));
  FDRE \clk_count_ff_reg[44] 
       (.C(S_AXI_ACLK),
        .CE(E[1]),
        .D(Q[12]),
        .Q(clk_count_ff[44]),
        .R(SR));
  FDRE \clk_count_ff_reg[45] 
       (.C(S_AXI_ACLK),
        .CE(E[1]),
        .D(Q[13]),
        .Q(clk_count_ff[45]),
        .R(SR));
  FDRE \clk_count_ff_reg[46] 
       (.C(S_AXI_ACLK),
        .CE(E[1]),
        .D(Q[14]),
        .Q(clk_count_ff[46]),
        .R(SR));
  FDRE \clk_count_ff_reg[47] 
       (.C(S_AXI_ACLK),
        .CE(E[1]),
        .D(Q[15]),
        .Q(clk_count_ff[47]),
        .R(SR));
  FDRE \clk_count_ff_reg[48] 
       (.C(S_AXI_ACLK),
        .CE(E[1]),
        .D(Q[16]),
        .Q(clk_count_ff[48]),
        .R(SR));
  FDRE \clk_count_ff_reg[49] 
       (.C(S_AXI_ACLK),
        .CE(E[1]),
        .D(Q[17]),
        .Q(clk_count_ff[49]),
        .R(SR));
  FDRE \clk_count_ff_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(E[0]),
        .D(Q[4]),
        .Q(clk_count_ff[4]),
        .R(SR));
  FDRE \clk_count_ff_reg[50] 
       (.C(S_AXI_ACLK),
        .CE(E[1]),
        .D(Q[18]),
        .Q(clk_count_ff[50]),
        .R(SR));
  FDRE \clk_count_ff_reg[51] 
       (.C(S_AXI_ACLK),
        .CE(E[1]),
        .D(Q[19]),
        .Q(clk_count_ff[51]),
        .R(SR));
  FDRE \clk_count_ff_reg[52] 
       (.C(S_AXI_ACLK),
        .CE(E[1]),
        .D(Q[20]),
        .Q(clk_count_ff[52]),
        .R(SR));
  FDRE \clk_count_ff_reg[53] 
       (.C(S_AXI_ACLK),
        .CE(E[1]),
        .D(Q[21]),
        .Q(clk_count_ff[53]),
        .R(SR));
  FDRE \clk_count_ff_reg[54] 
       (.C(S_AXI_ACLK),
        .CE(E[1]),
        .D(Q[22]),
        .Q(clk_count_ff[54]),
        .R(SR));
  FDRE \clk_count_ff_reg[55] 
       (.C(S_AXI_ACLK),
        .CE(E[1]),
        .D(Q[23]),
        .Q(clk_count_ff[55]),
        .R(SR));
  FDRE \clk_count_ff_reg[56] 
       (.C(S_AXI_ACLK),
        .CE(E[1]),
        .D(Q[24]),
        .Q(clk_count_ff[56]),
        .R(SR));
  FDRE \clk_count_ff_reg[57] 
       (.C(S_AXI_ACLK),
        .CE(E[1]),
        .D(Q[25]),
        .Q(clk_count_ff[57]),
        .R(SR));
  FDRE \clk_count_ff_reg[58] 
       (.C(S_AXI_ACLK),
        .CE(E[1]),
        .D(Q[26]),
        .Q(clk_count_ff[58]),
        .R(SR));
  FDRE \clk_count_ff_reg[59] 
       (.C(S_AXI_ACLK),
        .CE(E[1]),
        .D(Q[27]),
        .Q(clk_count_ff[59]),
        .R(SR));
  FDRE \clk_count_ff_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(E[0]),
        .D(Q[5]),
        .Q(clk_count_ff[5]),
        .R(SR));
  FDRE \clk_count_ff_reg[60] 
       (.C(S_AXI_ACLK),
        .CE(E[1]),
        .D(Q[28]),
        .Q(clk_count_ff[60]),
        .R(SR));
  FDRE \clk_count_ff_reg[61] 
       (.C(S_AXI_ACLK),
        .CE(E[1]),
        .D(Q[29]),
        .Q(clk_count_ff[61]),
        .R(SR));
  FDRE \clk_count_ff_reg[62] 
       (.C(S_AXI_ACLK),
        .CE(E[1]),
        .D(Q[30]),
        .Q(clk_count_ff[62]),
        .R(SR));
  FDRE \clk_count_ff_reg[63] 
       (.C(S_AXI_ACLK),
        .CE(E[1]),
        .D(Q[31]),
        .Q(clk_count_ff[63]),
        .R(SR));
  FDRE \clk_count_ff_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(E[0]),
        .D(Q[6]),
        .Q(clk_count_ff[6]),
        .R(SR));
  FDRE \clk_count_ff_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(E[0]),
        .D(Q[7]),
        .Q(clk_count_ff[7]),
        .R(SR));
  FDRE \clk_count_ff_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(E[0]),
        .D(Q[8]),
        .Q(clk_count_ff[8]),
        .R(SR));
  FDRE \clk_count_ff_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(E[0]),
        .D(Q[9]),
        .Q(clk_count_ff[9]),
        .R(SR));
  FDRE clk_en_ff_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(clk_en_ff_reg_0),
        .Q(clk_en),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    clk_enabled_o_INST_0
       (.I0(CO),
        .I1(clk_mode),
        .I2(clk_en),
        .O(clk_enabled_o));
  FDRE clk_mode_ff_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(clk_mode_ff_reg_0),
        .Q(clk_mode),
        .R(SR));
  FDRE clk_w_count_ff_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(clk_w_count_ff_reg_1),
        .Q(clk_w_count),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \count_ff[0]_i_1 
       (.I0(clk_w_count),
        .I1(clk_mode),
        .I2(clk_en),
        .I3(CO),
        .O(clk_w_count_ff_reg_0));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[0]_i_10 
       (.I0(count_ff_reg[0]),
        .I1(clk_count_ff[0]),
        .I2(clk_w_count),
        .O(\count_ff[0]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[0]_i_3 
       (.I0(clk_count_ff[3]),
        .I1(clk_w_count),
        .I2(count_ff_reg[3]),
        .O(\count_ff[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[0]_i_4 
       (.I0(clk_count_ff[2]),
        .I1(clk_w_count),
        .I2(count_ff_reg[2]),
        .O(\count_ff[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[0]_i_5 
       (.I0(clk_count_ff[1]),
        .I1(clk_w_count),
        .I2(count_ff_reg[1]),
        .O(\count_ff[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[0]_i_6 
       (.I0(clk_count_ff[0]),
        .I1(clk_w_count),
        .I2(count_ff_reg[0]),
        .O(\count_ff[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[0]_i_7 
       (.I0(count_ff_reg[3]),
        .I1(clk_count_ff[3]),
        .I2(clk_w_count),
        .O(\count_ff[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[0]_i_8 
       (.I0(count_ff_reg[2]),
        .I1(clk_count_ff[2]),
        .I2(clk_w_count),
        .O(\count_ff[0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[0]_i_9 
       (.I0(count_ff_reg[1]),
        .I1(clk_count_ff[1]),
        .I2(clk_w_count),
        .O(\count_ff[0]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[12]_i_2 
       (.I0(clk_count_ff[15]),
        .I1(clk_w_count),
        .I2(count_ff_reg[15]),
        .O(\count_ff[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[12]_i_3 
       (.I0(clk_count_ff[14]),
        .I1(clk_w_count),
        .I2(count_ff_reg[14]),
        .O(\count_ff[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[12]_i_4 
       (.I0(clk_count_ff[13]),
        .I1(clk_w_count),
        .I2(count_ff_reg[13]),
        .O(\count_ff[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[12]_i_5 
       (.I0(clk_count_ff[12]),
        .I1(clk_w_count),
        .I2(count_ff_reg[12]),
        .O(\count_ff[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[12]_i_6 
       (.I0(count_ff_reg[15]),
        .I1(clk_count_ff[15]),
        .I2(clk_w_count),
        .O(\count_ff[12]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[12]_i_7 
       (.I0(count_ff_reg[14]),
        .I1(clk_count_ff[14]),
        .I2(clk_w_count),
        .O(\count_ff[12]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[12]_i_8 
       (.I0(count_ff_reg[13]),
        .I1(clk_count_ff[13]),
        .I2(clk_w_count),
        .O(\count_ff[12]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[12]_i_9 
       (.I0(count_ff_reg[12]),
        .I1(clk_count_ff[12]),
        .I2(clk_w_count),
        .O(\count_ff[12]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[16]_i_2 
       (.I0(clk_count_ff[19]),
        .I1(clk_w_count),
        .I2(count_ff_reg[19]),
        .O(\count_ff[16]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[16]_i_3 
       (.I0(clk_count_ff[18]),
        .I1(clk_w_count),
        .I2(count_ff_reg[18]),
        .O(\count_ff[16]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[16]_i_4 
       (.I0(clk_count_ff[17]),
        .I1(clk_w_count),
        .I2(count_ff_reg[17]),
        .O(\count_ff[16]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[16]_i_5 
       (.I0(clk_count_ff[16]),
        .I1(clk_w_count),
        .I2(count_ff_reg[16]),
        .O(\count_ff[16]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[16]_i_6 
       (.I0(count_ff_reg[19]),
        .I1(clk_count_ff[19]),
        .I2(clk_w_count),
        .O(\count_ff[16]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[16]_i_7 
       (.I0(count_ff_reg[18]),
        .I1(clk_count_ff[18]),
        .I2(clk_w_count),
        .O(\count_ff[16]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[16]_i_8 
       (.I0(count_ff_reg[17]),
        .I1(clk_count_ff[17]),
        .I2(clk_w_count),
        .O(\count_ff[16]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[16]_i_9 
       (.I0(count_ff_reg[16]),
        .I1(clk_count_ff[16]),
        .I2(clk_w_count),
        .O(\count_ff[16]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[20]_i_2 
       (.I0(clk_count_ff[23]),
        .I1(clk_w_count),
        .I2(count_ff_reg[23]),
        .O(\count_ff[20]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[20]_i_3 
       (.I0(clk_count_ff[22]),
        .I1(clk_w_count),
        .I2(count_ff_reg[22]),
        .O(\count_ff[20]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[20]_i_4 
       (.I0(clk_count_ff[21]),
        .I1(clk_w_count),
        .I2(count_ff_reg[21]),
        .O(\count_ff[20]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[20]_i_5 
       (.I0(clk_count_ff[20]),
        .I1(clk_w_count),
        .I2(count_ff_reg[20]),
        .O(\count_ff[20]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[20]_i_6 
       (.I0(count_ff_reg[23]),
        .I1(clk_count_ff[23]),
        .I2(clk_w_count),
        .O(\count_ff[20]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[20]_i_7 
       (.I0(count_ff_reg[22]),
        .I1(clk_count_ff[22]),
        .I2(clk_w_count),
        .O(\count_ff[20]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[20]_i_8 
       (.I0(count_ff_reg[21]),
        .I1(clk_count_ff[21]),
        .I2(clk_w_count),
        .O(\count_ff[20]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[20]_i_9 
       (.I0(count_ff_reg[20]),
        .I1(clk_count_ff[20]),
        .I2(clk_w_count),
        .O(\count_ff[20]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[24]_i_2 
       (.I0(clk_count_ff[27]),
        .I1(clk_w_count),
        .I2(count_ff_reg[27]),
        .O(\count_ff[24]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[24]_i_3 
       (.I0(clk_count_ff[26]),
        .I1(clk_w_count),
        .I2(count_ff_reg[26]),
        .O(\count_ff[24]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[24]_i_4 
       (.I0(clk_count_ff[25]),
        .I1(clk_w_count),
        .I2(count_ff_reg[25]),
        .O(\count_ff[24]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[24]_i_5 
       (.I0(clk_count_ff[24]),
        .I1(clk_w_count),
        .I2(count_ff_reg[24]),
        .O(\count_ff[24]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[24]_i_6 
       (.I0(count_ff_reg[27]),
        .I1(clk_count_ff[27]),
        .I2(clk_w_count),
        .O(\count_ff[24]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[24]_i_7 
       (.I0(count_ff_reg[26]),
        .I1(clk_count_ff[26]),
        .I2(clk_w_count),
        .O(\count_ff[24]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[24]_i_8 
       (.I0(count_ff_reg[25]),
        .I1(clk_count_ff[25]),
        .I2(clk_w_count),
        .O(\count_ff[24]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[24]_i_9 
       (.I0(count_ff_reg[24]),
        .I1(clk_count_ff[24]),
        .I2(clk_w_count),
        .O(\count_ff[24]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[28]_i_2 
       (.I0(clk_count_ff[31]),
        .I1(clk_w_count),
        .I2(count_ff_reg[31]),
        .O(\count_ff[28]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[28]_i_3 
       (.I0(clk_count_ff[30]),
        .I1(clk_w_count),
        .I2(count_ff_reg[30]),
        .O(\count_ff[28]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[28]_i_4 
       (.I0(clk_count_ff[29]),
        .I1(clk_w_count),
        .I2(count_ff_reg[29]),
        .O(\count_ff[28]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[28]_i_5 
       (.I0(clk_count_ff[28]),
        .I1(clk_w_count),
        .I2(count_ff_reg[28]),
        .O(\count_ff[28]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[28]_i_6 
       (.I0(count_ff_reg[31]),
        .I1(clk_count_ff[31]),
        .I2(clk_w_count),
        .O(\count_ff[28]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[28]_i_7 
       (.I0(count_ff_reg[30]),
        .I1(clk_count_ff[30]),
        .I2(clk_w_count),
        .O(\count_ff[28]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[28]_i_8 
       (.I0(count_ff_reg[29]),
        .I1(clk_count_ff[29]),
        .I2(clk_w_count),
        .O(\count_ff[28]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[28]_i_9 
       (.I0(count_ff_reg[28]),
        .I1(clk_count_ff[28]),
        .I2(clk_w_count),
        .O(\count_ff[28]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[32]_i_2 
       (.I0(clk_count_ff[35]),
        .I1(clk_w_count),
        .I2(count_ff_reg[35]),
        .O(\count_ff[32]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[32]_i_3 
       (.I0(clk_count_ff[34]),
        .I1(clk_w_count),
        .I2(count_ff_reg[34]),
        .O(\count_ff[32]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[32]_i_4 
       (.I0(clk_count_ff[33]),
        .I1(clk_w_count),
        .I2(count_ff_reg[33]),
        .O(\count_ff[32]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[32]_i_5 
       (.I0(clk_count_ff[32]),
        .I1(clk_w_count),
        .I2(count_ff_reg[32]),
        .O(\count_ff[32]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[32]_i_6 
       (.I0(count_ff_reg[35]),
        .I1(clk_count_ff[35]),
        .I2(clk_w_count),
        .O(\count_ff[32]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[32]_i_7 
       (.I0(count_ff_reg[34]),
        .I1(clk_count_ff[34]),
        .I2(clk_w_count),
        .O(\count_ff[32]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[32]_i_8 
       (.I0(count_ff_reg[33]),
        .I1(clk_count_ff[33]),
        .I2(clk_w_count),
        .O(\count_ff[32]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[32]_i_9 
       (.I0(count_ff_reg[32]),
        .I1(clk_count_ff[32]),
        .I2(clk_w_count),
        .O(\count_ff[32]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[36]_i_2 
       (.I0(clk_count_ff[39]),
        .I1(clk_w_count),
        .I2(count_ff_reg[39]),
        .O(\count_ff[36]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[36]_i_3 
       (.I0(clk_count_ff[38]),
        .I1(clk_w_count),
        .I2(count_ff_reg[38]),
        .O(\count_ff[36]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[36]_i_4 
       (.I0(clk_count_ff[37]),
        .I1(clk_w_count),
        .I2(count_ff_reg[37]),
        .O(\count_ff[36]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[36]_i_5 
       (.I0(clk_count_ff[36]),
        .I1(clk_w_count),
        .I2(count_ff_reg[36]),
        .O(\count_ff[36]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[36]_i_6 
       (.I0(count_ff_reg[39]),
        .I1(clk_count_ff[39]),
        .I2(clk_w_count),
        .O(\count_ff[36]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[36]_i_7 
       (.I0(count_ff_reg[38]),
        .I1(clk_count_ff[38]),
        .I2(clk_w_count),
        .O(\count_ff[36]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[36]_i_8 
       (.I0(count_ff_reg[37]),
        .I1(clk_count_ff[37]),
        .I2(clk_w_count),
        .O(\count_ff[36]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[36]_i_9 
       (.I0(count_ff_reg[36]),
        .I1(clk_count_ff[36]),
        .I2(clk_w_count),
        .O(\count_ff[36]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[40]_i_2 
       (.I0(clk_count_ff[43]),
        .I1(clk_w_count),
        .I2(count_ff_reg[43]),
        .O(\count_ff[40]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[40]_i_3 
       (.I0(clk_count_ff[42]),
        .I1(clk_w_count),
        .I2(count_ff_reg[42]),
        .O(\count_ff[40]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[40]_i_4 
       (.I0(clk_count_ff[41]),
        .I1(clk_w_count),
        .I2(count_ff_reg[41]),
        .O(\count_ff[40]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[40]_i_5 
       (.I0(clk_count_ff[40]),
        .I1(clk_w_count),
        .I2(count_ff_reg[40]),
        .O(\count_ff[40]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[40]_i_6 
       (.I0(count_ff_reg[43]),
        .I1(clk_count_ff[43]),
        .I2(clk_w_count),
        .O(\count_ff[40]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[40]_i_7 
       (.I0(count_ff_reg[42]),
        .I1(clk_count_ff[42]),
        .I2(clk_w_count),
        .O(\count_ff[40]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[40]_i_8 
       (.I0(count_ff_reg[41]),
        .I1(clk_count_ff[41]),
        .I2(clk_w_count),
        .O(\count_ff[40]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[40]_i_9 
       (.I0(count_ff_reg[40]),
        .I1(clk_count_ff[40]),
        .I2(clk_w_count),
        .O(\count_ff[40]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[44]_i_2 
       (.I0(clk_count_ff[47]),
        .I1(clk_w_count),
        .I2(count_ff_reg[47]),
        .O(\count_ff[44]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[44]_i_3 
       (.I0(clk_count_ff[46]),
        .I1(clk_w_count),
        .I2(count_ff_reg[46]),
        .O(\count_ff[44]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[44]_i_4 
       (.I0(clk_count_ff[45]),
        .I1(clk_w_count),
        .I2(count_ff_reg[45]),
        .O(\count_ff[44]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[44]_i_5 
       (.I0(clk_count_ff[44]),
        .I1(clk_w_count),
        .I2(count_ff_reg[44]),
        .O(\count_ff[44]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[44]_i_6 
       (.I0(count_ff_reg[47]),
        .I1(clk_count_ff[47]),
        .I2(clk_w_count),
        .O(\count_ff[44]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[44]_i_7 
       (.I0(count_ff_reg[46]),
        .I1(clk_count_ff[46]),
        .I2(clk_w_count),
        .O(\count_ff[44]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[44]_i_8 
       (.I0(count_ff_reg[45]),
        .I1(clk_count_ff[45]),
        .I2(clk_w_count),
        .O(\count_ff[44]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[44]_i_9 
       (.I0(count_ff_reg[44]),
        .I1(clk_count_ff[44]),
        .I2(clk_w_count),
        .O(\count_ff[44]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[48]_i_2 
       (.I0(clk_count_ff[51]),
        .I1(clk_w_count),
        .I2(count_ff_reg[51]),
        .O(\count_ff[48]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[48]_i_3 
       (.I0(clk_count_ff[50]),
        .I1(clk_w_count),
        .I2(count_ff_reg[50]),
        .O(\count_ff[48]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[48]_i_4 
       (.I0(clk_count_ff[49]),
        .I1(clk_w_count),
        .I2(count_ff_reg[49]),
        .O(\count_ff[48]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[48]_i_5 
       (.I0(clk_count_ff[48]),
        .I1(clk_w_count),
        .I2(count_ff_reg[48]),
        .O(\count_ff[48]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[48]_i_6 
       (.I0(count_ff_reg[51]),
        .I1(clk_count_ff[51]),
        .I2(clk_w_count),
        .O(\count_ff[48]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[48]_i_7 
       (.I0(count_ff_reg[50]),
        .I1(clk_count_ff[50]),
        .I2(clk_w_count),
        .O(\count_ff[48]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[48]_i_8 
       (.I0(count_ff_reg[49]),
        .I1(clk_count_ff[49]),
        .I2(clk_w_count),
        .O(\count_ff[48]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[48]_i_9 
       (.I0(count_ff_reg[48]),
        .I1(clk_count_ff[48]),
        .I2(clk_w_count),
        .O(\count_ff[48]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[4]_i_2 
       (.I0(clk_count_ff[7]),
        .I1(clk_w_count),
        .I2(count_ff_reg[7]),
        .O(\count_ff[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[4]_i_3 
       (.I0(clk_count_ff[6]),
        .I1(clk_w_count),
        .I2(count_ff_reg[6]),
        .O(\count_ff[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[4]_i_4 
       (.I0(clk_count_ff[5]),
        .I1(clk_w_count),
        .I2(count_ff_reg[5]),
        .O(\count_ff[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[4]_i_5 
       (.I0(clk_count_ff[4]),
        .I1(clk_w_count),
        .I2(count_ff_reg[4]),
        .O(\count_ff[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[4]_i_6 
       (.I0(count_ff_reg[7]),
        .I1(clk_count_ff[7]),
        .I2(clk_w_count),
        .O(\count_ff[4]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[4]_i_7 
       (.I0(count_ff_reg[6]),
        .I1(clk_count_ff[6]),
        .I2(clk_w_count),
        .O(\count_ff[4]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[4]_i_8 
       (.I0(count_ff_reg[5]),
        .I1(clk_count_ff[5]),
        .I2(clk_w_count),
        .O(\count_ff[4]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[4]_i_9 
       (.I0(count_ff_reg[4]),
        .I1(clk_count_ff[4]),
        .I2(clk_w_count),
        .O(\count_ff[4]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[52]_i_2 
       (.I0(clk_count_ff[55]),
        .I1(clk_w_count),
        .I2(count_ff_reg[55]),
        .O(\count_ff[52]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[52]_i_3 
       (.I0(clk_count_ff[54]),
        .I1(clk_w_count),
        .I2(count_ff_reg[54]),
        .O(\count_ff[52]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[52]_i_4 
       (.I0(clk_count_ff[53]),
        .I1(clk_w_count),
        .I2(count_ff_reg[53]),
        .O(\count_ff[52]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[52]_i_5 
       (.I0(clk_count_ff[52]),
        .I1(clk_w_count),
        .I2(count_ff_reg[52]),
        .O(\count_ff[52]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[52]_i_6 
       (.I0(count_ff_reg[55]),
        .I1(clk_count_ff[55]),
        .I2(clk_w_count),
        .O(\count_ff[52]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[52]_i_7 
       (.I0(count_ff_reg[54]),
        .I1(clk_count_ff[54]),
        .I2(clk_w_count),
        .O(\count_ff[52]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[52]_i_8 
       (.I0(count_ff_reg[53]),
        .I1(clk_count_ff[53]),
        .I2(clk_w_count),
        .O(\count_ff[52]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[52]_i_9 
       (.I0(count_ff_reg[52]),
        .I1(clk_count_ff[52]),
        .I2(clk_w_count),
        .O(\count_ff[52]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[56]_i_2 
       (.I0(clk_count_ff[59]),
        .I1(clk_w_count),
        .I2(count_ff_reg[59]),
        .O(\count_ff[56]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[56]_i_3 
       (.I0(clk_count_ff[58]),
        .I1(clk_w_count),
        .I2(count_ff_reg[58]),
        .O(\count_ff[56]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[56]_i_4 
       (.I0(clk_count_ff[57]),
        .I1(clk_w_count),
        .I2(count_ff_reg[57]),
        .O(\count_ff[56]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[56]_i_5 
       (.I0(clk_count_ff[56]),
        .I1(clk_w_count),
        .I2(count_ff_reg[56]),
        .O(\count_ff[56]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[56]_i_6 
       (.I0(count_ff_reg[59]),
        .I1(clk_count_ff[59]),
        .I2(clk_w_count),
        .O(\count_ff[56]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[56]_i_7 
       (.I0(count_ff_reg[58]),
        .I1(clk_count_ff[58]),
        .I2(clk_w_count),
        .O(\count_ff[56]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[56]_i_8 
       (.I0(count_ff_reg[57]),
        .I1(clk_count_ff[57]),
        .I2(clk_w_count),
        .O(\count_ff[56]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[56]_i_9 
       (.I0(count_ff_reg[56]),
        .I1(clk_count_ff[56]),
        .I2(clk_w_count),
        .O(\count_ff[56]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[60]_i_2 
       (.I0(clk_count_ff[62]),
        .I1(clk_w_count),
        .I2(count_ff_reg[62]),
        .O(\count_ff[60]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[60]_i_3 
       (.I0(clk_count_ff[61]),
        .I1(clk_w_count),
        .I2(count_ff_reg[61]),
        .O(\count_ff[60]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[60]_i_4 
       (.I0(clk_count_ff[60]),
        .I1(clk_w_count),
        .I2(count_ff_reg[60]),
        .O(\count_ff[60]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[60]_i_5 
       (.I0(count_ff_reg[63]),
        .I1(clk_count_ff[63]),
        .I2(clk_w_count),
        .O(\count_ff[60]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[60]_i_6 
       (.I0(count_ff_reg[62]),
        .I1(clk_count_ff[62]),
        .I2(clk_w_count),
        .O(\count_ff[60]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[60]_i_7 
       (.I0(count_ff_reg[61]),
        .I1(clk_count_ff[61]),
        .I2(clk_w_count),
        .O(\count_ff[60]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[60]_i_8 
       (.I0(count_ff_reg[60]),
        .I1(clk_count_ff[60]),
        .I2(clk_w_count),
        .O(\count_ff[60]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[8]_i_2 
       (.I0(clk_count_ff[11]),
        .I1(clk_w_count),
        .I2(count_ff_reg[11]),
        .O(\count_ff[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[8]_i_3 
       (.I0(clk_count_ff[10]),
        .I1(clk_w_count),
        .I2(count_ff_reg[10]),
        .O(\count_ff[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[8]_i_4 
       (.I0(clk_count_ff[9]),
        .I1(clk_w_count),
        .I2(count_ff_reg[9]),
        .O(\count_ff[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_ff[8]_i_5 
       (.I0(clk_count_ff[8]),
        .I1(clk_w_count),
        .I2(count_ff_reg[8]),
        .O(\count_ff[8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[8]_i_6 
       (.I0(count_ff_reg[11]),
        .I1(clk_count_ff[11]),
        .I2(clk_w_count),
        .O(\count_ff[8]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[8]_i_7 
       (.I0(count_ff_reg[10]),
        .I1(clk_count_ff[10]),
        .I2(clk_w_count),
        .O(\count_ff[8]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[8]_i_8 
       (.I0(count_ff_reg[9]),
        .I1(clk_count_ff[9]),
        .I2(clk_w_count),
        .O(\count_ff[8]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_ff[8]_i_9 
       (.I0(count_ff_reg[8]),
        .I1(clk_count_ff[8]),
        .I2(clk_w_count),
        .O(\count_ff[8]_i_9_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_ff_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\count_ff_reg[0]_i_2_n_0 ,\count_ff_reg[0]_i_2_n_1 ,\count_ff_reg[0]_i_2_n_2 ,\count_ff_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\count_ff[0]_i_3_n_0 ,\count_ff[0]_i_4_n_0 ,\count_ff[0]_i_5_n_0 ,\count_ff[0]_i_6_n_0 }),
        .O(O),
        .S({\count_ff[0]_i_7_n_0 ,\count_ff[0]_i_8_n_0 ,\count_ff[0]_i_9_n_0 ,\count_ff[0]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_ff_reg[12]_i_1 
       (.CI(\count_ff_reg[8]_i_1_n_0 ),
        .CO({\count_ff_reg[12]_i_1_n_0 ,\count_ff_reg[12]_i_1_n_1 ,\count_ff_reg[12]_i_1_n_2 ,\count_ff_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\count_ff[12]_i_2_n_0 ,\count_ff[12]_i_3_n_0 ,\count_ff[12]_i_4_n_0 ,\count_ff[12]_i_5_n_0 }),
        .O(\clk_count_ff_reg[15]_0 ),
        .S({\count_ff[12]_i_6_n_0 ,\count_ff[12]_i_7_n_0 ,\count_ff[12]_i_8_n_0 ,\count_ff[12]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_ff_reg[16]_i_1 
       (.CI(\count_ff_reg[12]_i_1_n_0 ),
        .CO({\count_ff_reg[16]_i_1_n_0 ,\count_ff_reg[16]_i_1_n_1 ,\count_ff_reg[16]_i_1_n_2 ,\count_ff_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\count_ff[16]_i_2_n_0 ,\count_ff[16]_i_3_n_0 ,\count_ff[16]_i_4_n_0 ,\count_ff[16]_i_5_n_0 }),
        .O(\clk_count_ff_reg[19]_0 ),
        .S({\count_ff[16]_i_6_n_0 ,\count_ff[16]_i_7_n_0 ,\count_ff[16]_i_8_n_0 ,\count_ff[16]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_ff_reg[20]_i_1 
       (.CI(\count_ff_reg[16]_i_1_n_0 ),
        .CO({\count_ff_reg[20]_i_1_n_0 ,\count_ff_reg[20]_i_1_n_1 ,\count_ff_reg[20]_i_1_n_2 ,\count_ff_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\count_ff[20]_i_2_n_0 ,\count_ff[20]_i_3_n_0 ,\count_ff[20]_i_4_n_0 ,\count_ff[20]_i_5_n_0 }),
        .O(\clk_count_ff_reg[23]_0 ),
        .S({\count_ff[20]_i_6_n_0 ,\count_ff[20]_i_7_n_0 ,\count_ff[20]_i_8_n_0 ,\count_ff[20]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_ff_reg[24]_i_1 
       (.CI(\count_ff_reg[20]_i_1_n_0 ),
        .CO({\count_ff_reg[24]_i_1_n_0 ,\count_ff_reg[24]_i_1_n_1 ,\count_ff_reg[24]_i_1_n_2 ,\count_ff_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\count_ff[24]_i_2_n_0 ,\count_ff[24]_i_3_n_0 ,\count_ff[24]_i_4_n_0 ,\count_ff[24]_i_5_n_0 }),
        .O(\clk_count_ff_reg[27]_0 ),
        .S({\count_ff[24]_i_6_n_0 ,\count_ff[24]_i_7_n_0 ,\count_ff[24]_i_8_n_0 ,\count_ff[24]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_ff_reg[28]_i_1 
       (.CI(\count_ff_reg[24]_i_1_n_0 ),
        .CO({\count_ff_reg[28]_i_1_n_0 ,\count_ff_reg[28]_i_1_n_1 ,\count_ff_reg[28]_i_1_n_2 ,\count_ff_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\count_ff[28]_i_2_n_0 ,\count_ff[28]_i_3_n_0 ,\count_ff[28]_i_4_n_0 ,\count_ff[28]_i_5_n_0 }),
        .O(\clk_count_ff_reg[31]_0 ),
        .S({\count_ff[28]_i_6_n_0 ,\count_ff[28]_i_7_n_0 ,\count_ff[28]_i_8_n_0 ,\count_ff[28]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_ff_reg[32]_i_1 
       (.CI(\count_ff_reg[28]_i_1_n_0 ),
        .CO({\count_ff_reg[32]_i_1_n_0 ,\count_ff_reg[32]_i_1_n_1 ,\count_ff_reg[32]_i_1_n_2 ,\count_ff_reg[32]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\count_ff[32]_i_2_n_0 ,\count_ff[32]_i_3_n_0 ,\count_ff[32]_i_4_n_0 ,\count_ff[32]_i_5_n_0 }),
        .O(\clk_count_ff_reg[35]_0 ),
        .S({\count_ff[32]_i_6_n_0 ,\count_ff[32]_i_7_n_0 ,\count_ff[32]_i_8_n_0 ,\count_ff[32]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_ff_reg[36]_i_1 
       (.CI(\count_ff_reg[32]_i_1_n_0 ),
        .CO({\count_ff_reg[36]_i_1_n_0 ,\count_ff_reg[36]_i_1_n_1 ,\count_ff_reg[36]_i_1_n_2 ,\count_ff_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\count_ff[36]_i_2_n_0 ,\count_ff[36]_i_3_n_0 ,\count_ff[36]_i_4_n_0 ,\count_ff[36]_i_5_n_0 }),
        .O(\clk_count_ff_reg[39]_0 ),
        .S({\count_ff[36]_i_6_n_0 ,\count_ff[36]_i_7_n_0 ,\count_ff[36]_i_8_n_0 ,\count_ff[36]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_ff_reg[40]_i_1 
       (.CI(\count_ff_reg[36]_i_1_n_0 ),
        .CO({\count_ff_reg[40]_i_1_n_0 ,\count_ff_reg[40]_i_1_n_1 ,\count_ff_reg[40]_i_1_n_2 ,\count_ff_reg[40]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\count_ff[40]_i_2_n_0 ,\count_ff[40]_i_3_n_0 ,\count_ff[40]_i_4_n_0 ,\count_ff[40]_i_5_n_0 }),
        .O(\clk_count_ff_reg[43]_0 ),
        .S({\count_ff[40]_i_6_n_0 ,\count_ff[40]_i_7_n_0 ,\count_ff[40]_i_8_n_0 ,\count_ff[40]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_ff_reg[44]_i_1 
       (.CI(\count_ff_reg[40]_i_1_n_0 ),
        .CO({\count_ff_reg[44]_i_1_n_0 ,\count_ff_reg[44]_i_1_n_1 ,\count_ff_reg[44]_i_1_n_2 ,\count_ff_reg[44]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\count_ff[44]_i_2_n_0 ,\count_ff[44]_i_3_n_0 ,\count_ff[44]_i_4_n_0 ,\count_ff[44]_i_5_n_0 }),
        .O(\clk_count_ff_reg[47]_0 ),
        .S({\count_ff[44]_i_6_n_0 ,\count_ff[44]_i_7_n_0 ,\count_ff[44]_i_8_n_0 ,\count_ff[44]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_ff_reg[48]_i_1 
       (.CI(\count_ff_reg[44]_i_1_n_0 ),
        .CO({\count_ff_reg[48]_i_1_n_0 ,\count_ff_reg[48]_i_1_n_1 ,\count_ff_reg[48]_i_1_n_2 ,\count_ff_reg[48]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\count_ff[48]_i_2_n_0 ,\count_ff[48]_i_3_n_0 ,\count_ff[48]_i_4_n_0 ,\count_ff[48]_i_5_n_0 }),
        .O(\clk_count_ff_reg[51]_0 ),
        .S({\count_ff[48]_i_6_n_0 ,\count_ff[48]_i_7_n_0 ,\count_ff[48]_i_8_n_0 ,\count_ff[48]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_ff_reg[4]_i_1 
       (.CI(\count_ff_reg[0]_i_2_n_0 ),
        .CO({\count_ff_reg[4]_i_1_n_0 ,\count_ff_reg[4]_i_1_n_1 ,\count_ff_reg[4]_i_1_n_2 ,\count_ff_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\count_ff[4]_i_2_n_0 ,\count_ff[4]_i_3_n_0 ,\count_ff[4]_i_4_n_0 ,\count_ff[4]_i_5_n_0 }),
        .O(\clk_count_ff_reg[7]_0 ),
        .S({\count_ff[4]_i_6_n_0 ,\count_ff[4]_i_7_n_0 ,\count_ff[4]_i_8_n_0 ,\count_ff[4]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_ff_reg[52]_i_1 
       (.CI(\count_ff_reg[48]_i_1_n_0 ),
        .CO({\count_ff_reg[52]_i_1_n_0 ,\count_ff_reg[52]_i_1_n_1 ,\count_ff_reg[52]_i_1_n_2 ,\count_ff_reg[52]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\count_ff[52]_i_2_n_0 ,\count_ff[52]_i_3_n_0 ,\count_ff[52]_i_4_n_0 ,\count_ff[52]_i_5_n_0 }),
        .O(\clk_count_ff_reg[55]_0 ),
        .S({\count_ff[52]_i_6_n_0 ,\count_ff[52]_i_7_n_0 ,\count_ff[52]_i_8_n_0 ,\count_ff[52]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_ff_reg[56]_i_1 
       (.CI(\count_ff_reg[52]_i_1_n_0 ),
        .CO({\count_ff_reg[56]_i_1_n_0 ,\count_ff_reg[56]_i_1_n_1 ,\count_ff_reg[56]_i_1_n_2 ,\count_ff_reg[56]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\count_ff[56]_i_2_n_0 ,\count_ff[56]_i_3_n_0 ,\count_ff[56]_i_4_n_0 ,\count_ff[56]_i_5_n_0 }),
        .O(\clk_count_ff_reg[59]_0 ),
        .S({\count_ff[56]_i_6_n_0 ,\count_ff[56]_i_7_n_0 ,\count_ff[56]_i_8_n_0 ,\count_ff[56]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_ff_reg[60]_i_1 
       (.CI(\count_ff_reg[56]_i_1_n_0 ),
        .CO({\NLW_count_ff_reg[60]_i_1_CO_UNCONNECTED [3],\count_ff_reg[60]_i_1_n_1 ,\count_ff_reg[60]_i_1_n_2 ,\count_ff_reg[60]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\count_ff[60]_i_2_n_0 ,\count_ff[60]_i_3_n_0 ,\count_ff[60]_i_4_n_0 }),
        .O(\clk_count_ff_reg[62]_0 ),
        .S({\count_ff[60]_i_5_n_0 ,\count_ff[60]_i_6_n_0 ,\count_ff[60]_i_7_n_0 ,\count_ff[60]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_ff_reg[8]_i_1 
       (.CI(\count_ff_reg[4]_i_1_n_0 ),
        .CO({\count_ff_reg[8]_i_1_n_0 ,\count_ff_reg[8]_i_1_n_1 ,\count_ff_reg[8]_i_1_n_2 ,\count_ff_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\count_ff[8]_i_2_n_0 ,\count_ff[8]_i_3_n_0 ,\count_ff[8]_i_4_n_0 ,\count_ff[8]_i_5_n_0 }),
        .O(\clk_count_ff_reg[11]_0 ),
        .S({\count_ff[8]_i_6_n_0 ,\count_ff[8]_i_7_n_0 ,\count_ff[8]_i_8_n_0 ,\count_ff[8]_i_9_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    read_fsm_state_ff_i_1
       (.I0(S_AXI_ARESETN),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "read_write_axi" *) 
module design_1_clk_gate_top_0_0_read_write_axi
   (read_fsm_state_ff_reg_0,
    S_AXI_RDATA,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_BVALID,
    E,
    \FSM_sequential_write_fsm_state_ff_reg[0]_0 ,
    S_AXI_ARREADY,
    \write_data_ff_reg[0]_0 ,
    Q,
    \write_data_ff_reg[0]_1 ,
    SR,
    S_AXI_ACLK,
    CO,
    clk_mode,
    S_AXI_ARESETN,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    S_AXI_RREADY,
    S_AXI_ARVALID,
    clk_en,
    S_AXI_BREADY,
    S_AXI_AWADDR,
    S_AXI_WDATA);
  output read_fsm_state_ff_reg_0;
  output [0:0]S_AXI_RDATA;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_BVALID;
  output [1:0]E;
  output \FSM_sequential_write_fsm_state_ff_reg[0]_0 ;
  output S_AXI_ARREADY;
  output \write_data_ff_reg[0]_0 ;
  output [31:0]Q;
  output \write_data_ff_reg[0]_1 ;
  input [0:0]SR;
  input S_AXI_ACLK;
  input [0:0]CO;
  input clk_mode;
  input S_AXI_ARESETN;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input S_AXI_RREADY;
  input S_AXI_ARVALID;
  input clk_en;
  input S_AXI_BREADY;
  input [5:0]S_AXI_AWADDR;
  input [31:0]S_AXI_WDATA;

  wire [0:0]CO;
  wire [1:0]E;
  wire \FSM_sequential_write_fsm_state_ff[0]_i_1_n_0 ;
  wire \FSM_sequential_write_fsm_state_ff[1]_i_1_n_0 ;
  wire \FSM_sequential_write_fsm_state_ff_reg[0]_0 ;
  wire [31:0]Q;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [5:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [0:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire \clk_count_ff[63]_i_2_n_0 ;
  wire clk_en;
  wire clk_en_ff_i_2_n_0;
  wire clk_mode;
  wire [1:0]p_0_in;
  wire read_fsm_state_ff_i_2_n_0;
  wire read_fsm_state_ff_reg_0;
  wire [3:0]w_addr;
  wire write_address_nxt;
  wire \write_data_ff_reg[0]_0 ;
  wire \write_data_ff_reg[0]_1 ;
  wire write_data_nxt;
  wire [1:0]write_fsm_state_ff;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h03CFEEEE)) 
    \FSM_sequential_write_fsm_state_ff[0]_i_1 
       (.I0(S_AXI_AWVALID),
        .I1(write_fsm_state_ff[1]),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_BREADY),
        .I4(write_fsm_state_ff[0]),
        .O(\FSM_sequential_write_fsm_state_ff[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h5FC0)) 
    \FSM_sequential_write_fsm_state_ff[1]_i_1 
       (.I0(S_AXI_BREADY),
        .I1(S_AXI_WVALID),
        .I2(write_fsm_state_ff[0]),
        .I3(write_fsm_state_ff[1]),
        .O(\FSM_sequential_write_fsm_state_ff[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "addr:00,receive_data:01,write_data:10,response:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_write_fsm_state_ff_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_sequential_write_fsm_state_ff[0]_i_1_n_0 ),
        .Q(write_fsm_state_ff[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "addr:00,receive_data:01,write_data:10,response:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_write_fsm_state_ff_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_sequential_write_fsm_state_ff[1]_i_1_n_0 ),
        .Q(write_fsm_state_ff[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_ARREADY_INST_0
       (.I0(read_fsm_state_ff_reg_0),
        .O(S_AXI_ARREADY));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    S_AXI_AWREADY_INST_0
       (.I0(write_fsm_state_ff[1]),
        .I1(write_fsm_state_ff[0]),
        .O(S_AXI_AWREADY));
  LUT2 #(
    .INIT(4'h8)) 
    S_AXI_BVALID_INST_0
       (.I0(write_fsm_state_ff[1]),
        .I1(write_fsm_state_ff[0]),
        .O(S_AXI_BVALID));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \S_AXI_RDATA[0]_INST_0 
       (.I0(read_fsm_state_ff_reg_0),
        .I1(CO),
        .I2(clk_mode),
        .O(S_AXI_RDATA));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    S_AXI_WREADY_INST_0
       (.I0(write_fsm_state_ff[0]),
        .I1(write_fsm_state_ff[1]),
        .O(S_AXI_WREADY));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \clk_count_ff[31]_i_1 
       (.I0(write_fsm_state_ff[0]),
        .I1(w_addr[3]),
        .I2(\clk_count_ff[63]_i_2_n_0 ),
        .I3(write_fsm_state_ff[1]),
        .I4(w_addr[2]),
        .O(E[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \clk_count_ff[63]_i_1 
       (.I0(write_fsm_state_ff[0]),
        .I1(w_addr[3]),
        .I2(\clk_count_ff[63]_i_2_n_0 ),
        .I3(write_fsm_state_ff[1]),
        .I4(w_addr[2]),
        .O(E[1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \clk_count_ff[63]_i_2 
       (.I0(w_addr[1]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(w_addr[0]),
        .O(\clk_count_ff[63]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    clk_en_ff_i_1
       (.I0(Q[0]),
        .I1(clk_en_ff_i_2_n_0),
        .I2(w_addr[2]),
        .I3(clk_en),
        .O(\write_data_ff_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    clk_en_ff_i_2
       (.I0(write_fsm_state_ff[1]),
        .I1(\clk_count_ff[63]_i_2_n_0 ),
        .I2(w_addr[3]),
        .I3(write_fsm_state_ff[0]),
        .O(clk_en_ff_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    clk_mode_ff_i_1
       (.I0(Q[0]),
        .I1(clk_en_ff_i_2_n_0),
        .I2(w_addr[2]),
        .I3(clk_mode),
        .O(\write_data_ff_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    clk_w_count_ff_i_1
       (.I0(write_fsm_state_ff[0]),
        .I1(w_addr[3]),
        .I2(\clk_count_ff[63]_i_2_n_0 ),
        .I3(write_fsm_state_ff[1]),
        .I4(S_AXI_ARESETN),
        .O(\FSM_sequential_write_fsm_state_ff_reg[0]_0 ));
  LUT3 #(
    .INIT(8'h74)) 
    read_fsm_state_ff_i_2
       (.I0(S_AXI_RREADY),
        .I1(read_fsm_state_ff_reg_0),
        .I2(S_AXI_ARVALID),
        .O(read_fsm_state_ff_i_2_n_0));
  FDRE read_fsm_state_ff_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(read_fsm_state_ff_i_2_n_0),
        .Q(read_fsm_state_ff_reg_0),
        .R(SR));
  LUT3 #(
    .INIT(8'h04)) 
    \write_address_ff[5]_i_1 
       (.I0(write_fsm_state_ff[1]),
        .I1(S_AXI_AWVALID),
        .I2(write_fsm_state_ff[0]),
        .O(write_address_nxt));
  FDRE \write_address_ff_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(write_address_nxt),
        .D(S_AXI_AWADDR[0]),
        .Q(w_addr[0]),
        .R(SR));
  FDRE \write_address_ff_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(write_address_nxt),
        .D(S_AXI_AWADDR[1]),
        .Q(w_addr[1]),
        .R(SR));
  FDRE \write_address_ff_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(write_address_nxt),
        .D(S_AXI_AWADDR[2]),
        .Q(w_addr[2]),
        .R(SR));
  FDRE \write_address_ff_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(write_address_nxt),
        .D(S_AXI_AWADDR[3]),
        .Q(w_addr[3]),
        .R(SR));
  FDRE \write_address_ff_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(write_address_nxt),
        .D(S_AXI_AWADDR[4]),
        .Q(p_0_in[1]),
        .R(SR));
  FDRE \write_address_ff_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(write_address_nxt),
        .D(S_AXI_AWADDR[5]),
        .Q(p_0_in[0]),
        .R(SR));
  LUT3 #(
    .INIT(8'h40)) 
    \write_data_ff[31]_i_1 
       (.I0(write_fsm_state_ff[1]),
        .I1(S_AXI_WVALID),
        .I2(write_fsm_state_ff[0]),
        .O(write_data_nxt));
  FDRE \write_data_ff_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(write_data_nxt),
        .D(S_AXI_WDATA[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \write_data_ff_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(write_data_nxt),
        .D(S_AXI_WDATA[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \write_data_ff_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(write_data_nxt),
        .D(S_AXI_WDATA[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \write_data_ff_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(write_data_nxt),
        .D(S_AXI_WDATA[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \write_data_ff_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(write_data_nxt),
        .D(S_AXI_WDATA[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \write_data_ff_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(write_data_nxt),
        .D(S_AXI_WDATA[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \write_data_ff_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(write_data_nxt),
        .D(S_AXI_WDATA[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \write_data_ff_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(write_data_nxt),
        .D(S_AXI_WDATA[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE \write_data_ff_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(write_data_nxt),
        .D(S_AXI_WDATA[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE \write_data_ff_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(write_data_nxt),
        .D(S_AXI_WDATA[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE \write_data_ff_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(write_data_nxt),
        .D(S_AXI_WDATA[19]),
        .Q(Q[19]),
        .R(SR));
  FDRE \write_data_ff_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(write_data_nxt),
        .D(S_AXI_WDATA[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \write_data_ff_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(write_data_nxt),
        .D(S_AXI_WDATA[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE \write_data_ff_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(write_data_nxt),
        .D(S_AXI_WDATA[21]),
        .Q(Q[21]),
        .R(SR));
  FDRE \write_data_ff_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(write_data_nxt),
        .D(S_AXI_WDATA[22]),
        .Q(Q[22]),
        .R(SR));
  FDRE \write_data_ff_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(write_data_nxt),
        .D(S_AXI_WDATA[23]),
        .Q(Q[23]),
        .R(SR));
  FDRE \write_data_ff_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(write_data_nxt),
        .D(S_AXI_WDATA[24]),
        .Q(Q[24]),
        .R(SR));
  FDRE \write_data_ff_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(write_data_nxt),
        .D(S_AXI_WDATA[25]),
        .Q(Q[25]),
        .R(SR));
  FDRE \write_data_ff_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(write_data_nxt),
        .D(S_AXI_WDATA[26]),
        .Q(Q[26]),
        .R(SR));
  FDRE \write_data_ff_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(write_data_nxt),
        .D(S_AXI_WDATA[27]),
        .Q(Q[27]),
        .R(SR));
  FDRE \write_data_ff_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(write_data_nxt),
        .D(S_AXI_WDATA[28]),
        .Q(Q[28]),
        .R(SR));
  FDRE \write_data_ff_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(write_data_nxt),
        .D(S_AXI_WDATA[29]),
        .Q(Q[29]),
        .R(SR));
  FDRE \write_data_ff_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(write_data_nxt),
        .D(S_AXI_WDATA[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \write_data_ff_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(write_data_nxt),
        .D(S_AXI_WDATA[30]),
        .Q(Q[30]),
        .R(SR));
  FDRE \write_data_ff_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(write_data_nxt),
        .D(S_AXI_WDATA[31]),
        .Q(Q[31]),
        .R(SR));
  FDRE \write_data_ff_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(write_data_nxt),
        .D(S_AXI_WDATA[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \write_data_ff_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(write_data_nxt),
        .D(S_AXI_WDATA[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \write_data_ff_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(write_data_nxt),
        .D(S_AXI_WDATA[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \write_data_ff_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(write_data_nxt),
        .D(S_AXI_WDATA[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \write_data_ff_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(write_data_nxt),
        .D(S_AXI_WDATA[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \write_data_ff_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(write_data_nxt),
        .D(S_AXI_WDATA[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \write_data_ff_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(write_data_nxt),
        .D(S_AXI_WDATA[9]),
        .Q(Q[9]),
        .R(SR));
endmodule
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
