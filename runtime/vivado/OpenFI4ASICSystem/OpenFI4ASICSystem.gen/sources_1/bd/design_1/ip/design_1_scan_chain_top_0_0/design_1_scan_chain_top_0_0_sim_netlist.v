// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.1 (lin64) Build 5266912 Sun Dec 15 09:03:31 MST 2024
// Date        : Tue Apr  1 19:29:36 2025
// Host        : laptop-homann-25.eis.tu-bs.de running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/jhomann/Projects/OpenFLINT/repos/public/OpenFI4ASIC/runtime/vivado/OpenFI4ASICSystem/OpenFI4ASICSystem.gen/sources_1/bd/design_1/ip/design_1_scan_chain_top_0_0/design_1_scan_chain_top_0_0_sim_netlist.v
// Design      : design_1_scan_chain_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_scan_chain_top_0_0,scan_chain_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "scan_chain_top,Vivado 2024.2.1" *) 
(* NotValidForBitStream *)
module design_1_scan_chain_top_0_0
   (scan_chain_o,
    scn_chn_clk_i,
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
  output [2:0]scan_chain_o;
  input scn_chn_clk_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input S_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXI_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 1, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [0:0]S_AXI_AWADDR;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [0:0]S_AXI_ARADDR;
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
  wire [0:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire [2:0]scan_chain_o;
  wire scn_chn_clk_i;

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
  assign S_AXI_RDATA[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_scan_chain_top_0_0_scan_chain_top inst
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA[2:0]),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .scan_chain_o(scan_chain_o),
        .scn_chn_clk_i(scn_chn_clk_i));
endmodule

(* ORIG_REF_NAME = "read_write_axi" *) 
module design_1_scan_chain_top_0_0_read_write_axi
   (S_AXI_RVALID,
    S_AXI_ARESETN_0,
    write_address_ff,
    S_AXI_WREADY,
    write_fsm_state_ff,
    S_AXI_ARREADY,
    write_data_ff,
    S_AXI_BVALID,
    S_AXI_AWREADY,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_RREADY,
    S_AXI_ARVALID,
    S_AXI_AWADDR,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_BREADY,
    S_AXI_WDATA);
  output S_AXI_RVALID;
  output S_AXI_ARESETN_0;
  output write_address_ff;
  output S_AXI_WREADY;
  output [1:0]write_fsm_state_ff;
  output S_AXI_ARREADY;
  output [2:0]write_data_ff;
  output S_AXI_BVALID;
  output S_AXI_AWREADY;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input S_AXI_RREADY;
  input S_AXI_ARVALID;
  input [0:0]S_AXI_AWADDR;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input S_AXI_BREADY;
  input [2:0]S_AXI_WDATA;

  wire \FSM_sequential_write_fsm_state_ff[0]_i_1_n_0 ;
  wire \FSM_sequential_write_fsm_state_ff[1]_i_1_n_0 ;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARESETN_0;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [0:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [2:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire read_fsm_state_ff_i_2_n_0;
  wire write_address_ff;
  wire \write_address_ff[0]_i_1_n_0 ;
  wire [2:0]write_data_ff;
  wire \write_data_ff[0]_i_1_n_0 ;
  wire \write_data_ff[1]_i_1_n_0 ;
  wire \write_data_ff[2]_i_1_n_0 ;
  wire [1:0]write_fsm_state_ff;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h11DDFCFC)) 
    \FSM_sequential_write_fsm_state_ff[0]_i_1 
       (.I0(S_AXI_WVALID),
        .I1(write_fsm_state_ff[1]),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_BREADY),
        .I4(write_fsm_state_ff[0]),
        .O(\FSM_sequential_write_fsm_state_ff[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7C4C)) 
    \FSM_sequential_write_fsm_state_ff[1]_i_1 
       (.I0(S_AXI_BREADY),
        .I1(write_fsm_state_ff[1]),
        .I2(write_fsm_state_ff[0]),
        .I3(S_AXI_WVALID),
        .O(\FSM_sequential_write_fsm_state_ff[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "addr:00,receive_data:01,write_data:10,response:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_write_fsm_state_ff_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_sequential_write_fsm_state_ff[0]_i_1_n_0 ),
        .Q(write_fsm_state_ff[0]),
        .R(S_AXI_ARESETN_0));
  (* FSM_ENCODED_STATES = "addr:00,receive_data:01,write_data:10,response:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_write_fsm_state_ff_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_sequential_write_fsm_state_ff[1]_i_1_n_0 ),
        .Q(write_fsm_state_ff[1]),
        .R(S_AXI_ARESETN_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_ARREADY_INST_0
       (.I0(S_AXI_RVALID),
        .O(S_AXI_ARREADY));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    S_AXI_AWREADY_INST_0
       (.I0(write_fsm_state_ff[0]),
        .I1(write_fsm_state_ff[1]),
        .O(S_AXI_AWREADY));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    S_AXI_BVALID_INST_0
       (.I0(write_fsm_state_ff[0]),
        .I1(write_fsm_state_ff[1]),
        .O(S_AXI_BVALID));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    S_AXI_WREADY_INST_0
       (.I0(write_fsm_state_ff[0]),
        .I1(write_fsm_state_ff[1]),
        .O(S_AXI_WREADY));
  LUT1 #(
    .INIT(2'h1)) 
    read_fsm_state_ff_i_1
       (.I0(S_AXI_ARESETN),
        .O(S_AXI_ARESETN_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h74)) 
    read_fsm_state_ff_i_2
       (.I0(S_AXI_RREADY),
        .I1(S_AXI_RVALID),
        .I2(S_AXI_ARVALID),
        .O(read_fsm_state_ff_i_2_n_0));
  FDRE read_fsm_state_ff_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(read_fsm_state_ff_i_2_n_0),
        .Q(S_AXI_RVALID),
        .R(S_AXI_ARESETN_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \write_address_ff[0]_i_1 
       (.I0(S_AXI_AWADDR),
        .I1(S_AXI_AWVALID),
        .I2(write_fsm_state_ff[0]),
        .I3(write_fsm_state_ff[1]),
        .I4(write_address_ff),
        .O(\write_address_ff[0]_i_1_n_0 ));
  FDRE \write_address_ff_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\write_address_ff[0]_i_1_n_0 ),
        .Q(write_address_ff),
        .R(S_AXI_ARESETN_0));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \write_data_ff[0]_i_1 
       (.I0(S_AXI_WDATA[0]),
        .I1(write_fsm_state_ff[1]),
        .I2(write_fsm_state_ff[0]),
        .I3(S_AXI_WVALID),
        .I4(write_data_ff[0]),
        .O(\write_data_ff[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \write_data_ff[1]_i_1 
       (.I0(S_AXI_WDATA[1]),
        .I1(write_fsm_state_ff[1]),
        .I2(write_fsm_state_ff[0]),
        .I3(S_AXI_WVALID),
        .I4(write_data_ff[1]),
        .O(\write_data_ff[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \write_data_ff[2]_i_1 
       (.I0(S_AXI_WDATA[2]),
        .I1(write_fsm_state_ff[1]),
        .I2(write_fsm_state_ff[0]),
        .I3(S_AXI_WVALID),
        .I4(write_data_ff[2]),
        .O(\write_data_ff[2]_i_1_n_0 ));
  FDRE \write_data_ff_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\write_data_ff[0]_i_1_n_0 ),
        .Q(write_data_ff[0]),
        .R(S_AXI_ARESETN_0));
  FDRE \write_data_ff_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\write_data_ff[1]_i_1_n_0 ),
        .Q(write_data_ff[1]),
        .R(S_AXI_ARESETN_0));
  FDRE \write_data_ff_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\write_data_ff[2]_i_1_n_0 ),
        .Q(write_data_ff[2]),
        .R(S_AXI_ARESETN_0));
endmodule

(* ORIG_REF_NAME = "scan_chain_router" *) 
module design_1_scan_chain_top_0_0_scan_chain_router
   (scan_chain_o,
    scn_chn_clk_i,
    S_AXI_ARESETN,
    write_address_ff,
    write_fsm_state_ff,
    active_ff_reg_0,
    S_AXI_ACLK,
    write_data_ff);
  output [2:0]scan_chain_o;
  input scn_chn_clk_i;
  input S_AXI_ARESETN;
  input write_address_ff;
  input [1:0]write_fsm_state_ff;
  input active_ff_reg_0;
  input S_AXI_ACLK;
  input [2:0]write_data_ff;

  wire \??3_out ;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire active_ff;
  wire active_ff_i_1_n_0;
  wire active_ff_reg_0;
  wire done_ff_i_1_n_0;
  wire [2:0]scan_chain_ff;
  wire \scan_chain_ff[0]_i_1_n_0 ;
  wire \scan_chain_ff[1]_i_1_n_0 ;
  wire \scan_chain_ff[2]_i_1_n_0 ;
  wire [2:0]scan_chain_o;
  wire scn_chn_clk_i;
  wire write_address_ff;
  wire [2:0]write_data_ff;
  wire [1:0]write_fsm_state_ff;

  LUT5 #(
    .INIT(32'h55750030)) 
    active_ff_i_1
       (.I0(\??3_out ),
        .I1(write_address_ff),
        .I2(write_fsm_state_ff[1]),
        .I3(write_fsm_state_ff[0]),
        .I4(active_ff),
        .O(active_ff_i_1_n_0));
  FDRE active_ff_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(active_ff_i_1_n_0),
        .Q(active_ff),
        .R(active_ff_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    done_ff_i_1
       (.I0(active_ff),
        .I1(S_AXI_ARESETN),
        .O(done_ff_i_1_n_0));
  FDRE done_ff_reg
       (.C(scn_chn_clk_i),
        .CE(1'b1),
        .D(done_ff_i_1_n_0),
        .Q(\??3_out ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \scan_chain_ff[0]_i_1 
       (.I0(write_data_ff[0]),
        .I1(write_fsm_state_ff[0]),
        .I2(write_fsm_state_ff[1]),
        .I3(write_address_ff),
        .I4(scan_chain_ff[0]),
        .O(\scan_chain_ff[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \scan_chain_ff[1]_i_1 
       (.I0(write_data_ff[1]),
        .I1(write_fsm_state_ff[0]),
        .I2(write_fsm_state_ff[1]),
        .I3(write_address_ff),
        .I4(scan_chain_ff[1]),
        .O(\scan_chain_ff[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \scan_chain_ff[2]_i_1 
       (.I0(write_data_ff[2]),
        .I1(write_fsm_state_ff[0]),
        .I2(write_fsm_state_ff[1]),
        .I3(write_address_ff),
        .I4(scan_chain_ff[2]),
        .O(\scan_chain_ff[2]_i_1_n_0 ));
  FDRE \scan_chain_ff_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\scan_chain_ff[0]_i_1_n_0 ),
        .Q(scan_chain_ff[0]),
        .R(active_ff_reg_0));
  FDRE \scan_chain_ff_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\scan_chain_ff[1]_i_1_n_0 ),
        .Q(scan_chain_ff[1]),
        .R(active_ff_reg_0));
  FDRE \scan_chain_ff_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\scan_chain_ff[2]_i_1_n_0 ),
        .Q(scan_chain_ff[2]),
        .R(active_ff_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \scan_chain_o[0]_INST_0 
       (.I0(\??3_out ),
        .I1(active_ff),
        .I2(scan_chain_ff[0]),
        .O(scan_chain_o[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \scan_chain_o[1]_INST_0 
       (.I0(\??3_out ),
        .I1(active_ff),
        .I2(scan_chain_ff[1]),
        .O(scan_chain_o[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \scan_chain_o[2]_INST_0 
       (.I0(\??3_out ),
        .I1(active_ff),
        .I2(scan_chain_ff[2]),
        .O(scan_chain_o[2]));
endmodule

(* ORIG_REF_NAME = "scan_chain_top" *) 
module design_1_scan_chain_top_0_0_scan_chain_top
   (S_AXI_WREADY,
    S_AXI_BVALID,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    S_AXI_RVALID,
    scan_chain_o,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    S_AXI_BREADY,
    S_AXI_ACLK,
    S_AXI_WDATA,
    S_AXI_ARESETN,
    S_AXI_RREADY,
    S_AXI_ARVALID,
    S_AXI_AWADDR,
    scn_chn_clk_i);
  output S_AXI_WREADY;
  output S_AXI_BVALID;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output S_AXI_RVALID;
  output [2:0]scan_chain_o;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input S_AXI_BREADY;
  input S_AXI_ACLK;
  input [2:0]S_AXI_WDATA;
  input S_AXI_ARESETN;
  input S_AXI_RREADY;
  input S_AXI_ARVALID;
  input [0:0]S_AXI_AWADDR;
  input scn_chn_clk_i;

  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [0:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [2:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire read_write_axi_inst_n_1;
  wire [2:0]scan_chain_o;
  wire scn_chn_clk_i;
  wire write_address_ff;
  wire [2:0]write_data_ff;
  wire [1:0]write_fsm_state_ff;

  design_1_scan_chain_top_0_0_read_write_axi read_write_axi_inst
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARESETN_0(read_write_axi_inst_n_1),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .write_address_ff(write_address_ff),
        .write_data_ff(write_data_ff),
        .write_fsm_state_ff(write_fsm_state_ff));
  design_1_scan_chain_top_0_0_scan_chain_router scan_chain_router_inst
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .active_ff_reg_0(read_write_axi_inst_n_1),
        .scan_chain_o(scan_chain_o),
        .scn_chn_clk_i(scn_chn_clk_i),
        .write_address_ff(write_address_ff),
        .write_data_ff(write_data_ff),
        .write_fsm_state_ff(write_fsm_state_ff));
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
