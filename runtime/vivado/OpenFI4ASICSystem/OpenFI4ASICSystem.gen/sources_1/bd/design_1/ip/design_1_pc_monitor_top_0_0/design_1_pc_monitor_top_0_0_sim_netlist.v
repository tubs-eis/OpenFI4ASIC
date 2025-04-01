// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.1 (lin64) Build 5266912 Sun Dec 15 09:03:31 MST 2024
// Date        : Tue Apr  1 19:29:40 2025
// Host        : laptop-homann-25.eis.tu-bs.de running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/jhomann/Projects/OpenFLINT/repos/public/OpenFI4ASIC/runtime/vivado/OpenFI4ASICSystem/OpenFI4ASICSystem.gen/sources_1/bd/design_1/ip/design_1_pc_monitor_top_0_0/design_1_pc_monitor_top_0_0_sim_netlist.v
// Design      : design_1_pc_monitor_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_pc_monitor_top_0_0,pc_monitor_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "pc_monitor_top,Vivado 2024.2.1" *) 
(* NotValidForBitStream *)
module design_1_pc_monitor_top_0_0
   (pc_i,
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
  input [31:0]pc_i;
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
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire [31:0]pc_i;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_pc_monitor_top_0_0_pc_monitor_top inst
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .pc_i(pc_i),
        .read_fsm_state_ff_reg(S_AXI_RVALID));
endmodule

(* ORIG_REF_NAME = "pc_monitor_top" *) 
module design_1_pc_monitor_top_0_0_pc_monitor_top
   (S_AXI_WREADY,
    S_AXI_BVALID,
    S_AXI_AWREADY,
    S_AXI_RDATA,
    read_fsm_state_ff_reg,
    S_AXI_ARREADY,
    S_AXI_BREADY,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_ARESETN,
    S_AXI_ACLK,
    pc_i,
    S_AXI_ARVALID,
    S_AXI_RREADY);
  output S_AXI_WREADY;
  output S_AXI_BVALID;
  output S_AXI_AWREADY;
  output [31:0]S_AXI_RDATA;
  output read_fsm_state_ff_reg;
  output S_AXI_ARREADY;
  input S_AXI_BREADY;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input S_AXI_ARESETN;
  input S_AXI_ACLK;
  input [31:0]pc_i;
  input S_AXI_ARVALID;
  input S_AXI_RREADY;

  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire [31:0]pc_i;
  wire read_fsm_state_ff_reg;

  design_1_pc_monitor_top_0_0_read_write_axi read_write_axi_inst
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .pc_i(pc_i),
        .read_fsm_state_ff_reg_0(read_fsm_state_ff_reg));
endmodule

(* ORIG_REF_NAME = "read_write_axi" *) 
module design_1_pc_monitor_top_0_0_read_write_axi
   (S_AXI_WREADY,
    S_AXI_BVALID,
    S_AXI_AWREADY,
    S_AXI_RDATA,
    read_fsm_state_ff_reg_0,
    S_AXI_ARREADY,
    S_AXI_BREADY,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_ARESETN,
    S_AXI_ACLK,
    pc_i,
    S_AXI_ARVALID,
    S_AXI_RREADY);
  output S_AXI_WREADY;
  output S_AXI_BVALID;
  output S_AXI_AWREADY;
  output [31:0]S_AXI_RDATA;
  output read_fsm_state_ff_reg_0;
  output S_AXI_ARREADY;
  input S_AXI_BREADY;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input S_AXI_ARESETN;
  input S_AXI_ACLK;
  input [31:0]pc_i;
  input S_AXI_ARVALID;
  input S_AXI_RREADY;

  wire \FSM_sequential_write_fsm_state_ff[0]_i_1_n_0 ;
  wire \FSM_sequential_write_fsm_state_ff[1]_i_1_n_0 ;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire [31:0]pc_i;
  wire read_fsm_state_ff_i_1_n_0;
  wire read_fsm_state_ff_reg_0;
  wire [1:0]write_fsm_state_ff;

  LUT6 #(
    .INIT(64'h775077FA00000000)) 
    \FSM_sequential_write_fsm_state_ff[0]_i_1 
       (.I0(write_fsm_state_ff[0]),
        .I1(S_AXI_BREADY),
        .I2(S_AXI_AWVALID),
        .I3(write_fsm_state_ff[1]),
        .I4(S_AXI_WVALID),
        .I5(S_AXI_ARESETN),
        .O(\FSM_sequential_write_fsm_state_ff[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h38F80000)) 
    \FSM_sequential_write_fsm_state_ff[1]_i_1 
       (.I0(S_AXI_WVALID),
        .I1(write_fsm_state_ff[0]),
        .I2(write_fsm_state_ff[1]),
        .I3(S_AXI_BREADY),
        .I4(S_AXI_ARESETN),
        .O(\FSM_sequential_write_fsm_state_ff[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "addr:00,receive_data:01,write_data:10,response:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_write_fsm_state_ff_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_sequential_write_fsm_state_ff[0]_i_1_n_0 ),
        .Q(write_fsm_state_ff[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "addr:00,receive_data:01,write_data:10,response:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_write_fsm_state_ff_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_sequential_write_fsm_state_ff[1]_i_1_n_0 ),
        .Q(write_fsm_state_ff[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_ARREADY_INST_0
       (.I0(read_fsm_state_ff_reg_0),
        .O(S_AXI_ARREADY));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[0]_INST_0 
       (.I0(read_fsm_state_ff_reg_0),
        .I1(pc_i[0]),
        .O(S_AXI_RDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[10]_INST_0 
       (.I0(read_fsm_state_ff_reg_0),
        .I1(pc_i[10]),
        .O(S_AXI_RDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[11]_INST_0 
       (.I0(read_fsm_state_ff_reg_0),
        .I1(pc_i[11]),
        .O(S_AXI_RDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[12]_INST_0 
       (.I0(read_fsm_state_ff_reg_0),
        .I1(pc_i[12]),
        .O(S_AXI_RDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[13]_INST_0 
       (.I0(read_fsm_state_ff_reg_0),
        .I1(pc_i[13]),
        .O(S_AXI_RDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[14]_INST_0 
       (.I0(pc_i[14]),
        .I1(read_fsm_state_ff_reg_0),
        .O(S_AXI_RDATA[14]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[15]_INST_0 
       (.I0(read_fsm_state_ff_reg_0),
        .I1(pc_i[15]),
        .O(S_AXI_RDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[16]_INST_0 
       (.I0(read_fsm_state_ff_reg_0),
        .I1(pc_i[16]),
        .O(S_AXI_RDATA[16]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[17]_INST_0 
       (.I0(pc_i[17]),
        .I1(read_fsm_state_ff_reg_0),
        .O(S_AXI_RDATA[17]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[18]_INST_0 
       (.I0(read_fsm_state_ff_reg_0),
        .I1(pc_i[18]),
        .O(S_AXI_RDATA[18]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[19]_INST_0 
       (.I0(read_fsm_state_ff_reg_0),
        .I1(pc_i[19]),
        .O(S_AXI_RDATA[19]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[1]_INST_0 
       (.I0(read_fsm_state_ff_reg_0),
        .I1(pc_i[1]),
        .O(S_AXI_RDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[20]_INST_0 
       (.I0(pc_i[20]),
        .I1(read_fsm_state_ff_reg_0),
        .O(S_AXI_RDATA[20]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[21]_INST_0 
       (.I0(read_fsm_state_ff_reg_0),
        .I1(pc_i[21]),
        .O(S_AXI_RDATA[21]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[22]_INST_0 
       (.I0(pc_i[22]),
        .I1(read_fsm_state_ff_reg_0),
        .O(S_AXI_RDATA[22]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[23]_INST_0 
       (.I0(read_fsm_state_ff_reg_0),
        .I1(pc_i[23]),
        .O(S_AXI_RDATA[23]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[24]_INST_0 
       (.I0(pc_i[24]),
        .I1(read_fsm_state_ff_reg_0),
        .O(S_AXI_RDATA[24]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[25]_INST_0 
       (.I0(read_fsm_state_ff_reg_0),
        .I1(pc_i[25]),
        .O(S_AXI_RDATA[25]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[26]_INST_0 
       (.I0(read_fsm_state_ff_reg_0),
        .I1(pc_i[26]),
        .O(S_AXI_RDATA[26]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[27]_INST_0 
       (.I0(read_fsm_state_ff_reg_0),
        .I1(pc_i[27]),
        .O(S_AXI_RDATA[27]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[28]_INST_0 
       (.I0(read_fsm_state_ff_reg_0),
        .I1(pc_i[28]),
        .O(S_AXI_RDATA[28]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[29]_INST_0 
       (.I0(pc_i[29]),
        .I1(read_fsm_state_ff_reg_0),
        .O(S_AXI_RDATA[29]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[2]_INST_0 
       (.I0(read_fsm_state_ff_reg_0),
        .I1(pc_i[2]),
        .O(S_AXI_RDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[30]_INST_0 
       (.I0(read_fsm_state_ff_reg_0),
        .I1(pc_i[30]),
        .O(S_AXI_RDATA[30]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[31]_INST_0 
       (.I0(read_fsm_state_ff_reg_0),
        .I1(pc_i[31]),
        .O(S_AXI_RDATA[31]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[3]_INST_0 
       (.I0(read_fsm_state_ff_reg_0),
        .I1(pc_i[3]),
        .O(S_AXI_RDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[4]_INST_0 
       (.I0(pc_i[4]),
        .I1(read_fsm_state_ff_reg_0),
        .O(S_AXI_RDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[5]_INST_0 
       (.I0(read_fsm_state_ff_reg_0),
        .I1(pc_i[5]),
        .O(S_AXI_RDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[6]_INST_0 
       (.I0(read_fsm_state_ff_reg_0),
        .I1(pc_i[6]),
        .O(S_AXI_RDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[7]_INST_0 
       (.I0(read_fsm_state_ff_reg_0),
        .I1(pc_i[7]),
        .O(S_AXI_RDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[8]_INST_0 
       (.I0(pc_i[8]),
        .I1(read_fsm_state_ff_reg_0),
        .O(S_AXI_RDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[9]_INST_0 
       (.I0(read_fsm_state_ff_reg_0),
        .I1(pc_i[9]),
        .O(S_AXI_RDATA[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    S_AXI_WREADY_INST_0
       (.I0(write_fsm_state_ff[0]),
        .I1(write_fsm_state_ff[1]),
        .O(S_AXI_WREADY));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2E00)) 
    read_fsm_state_ff_i_1
       (.I0(S_AXI_ARVALID),
        .I1(read_fsm_state_ff_reg_0),
        .I2(S_AXI_RREADY),
        .I3(S_AXI_ARESETN),
        .O(read_fsm_state_ff_i_1_n_0));
  FDRE read_fsm_state_ff_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(read_fsm_state_ff_i_1_n_0),
        .Q(read_fsm_state_ff_reg_0),
        .R(1'b0));
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
