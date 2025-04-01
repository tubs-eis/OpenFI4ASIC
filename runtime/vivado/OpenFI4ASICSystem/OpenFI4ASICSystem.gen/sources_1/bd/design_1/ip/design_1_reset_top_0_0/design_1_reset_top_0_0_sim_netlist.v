// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.1 (lin64) Build 5266912 Sun Dec 15 09:03:31 MST 2024
// Date        : Tue Apr  1 19:29:39 2025
// Host        : laptop-homann-25.eis.tu-bs.de running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/jhomann/Projects/OpenFLINT/repos/public/OpenFI4ASIC/runtime/vivado/OpenFI4ASICSystem/OpenFI4ASICSystem.gen/sources_1/bd/design_1/ip/design_1_reset_top_0_0/design_1_reset_top_0_0_sim_netlist.v
// Design      : design_1_reset_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_reset_top_0_0,reset_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "reset_top,Vivado 2024.2.1" *) 
(* NotValidForBitStream *)
module design_1_reset_top_0_0
   (main_clk,
    rst_o,
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 main_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME main_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input main_clk;
  output rst_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input S_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXI_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [4:0]S_AXI_AWADDR;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [4:0]S_AXI_ARADDR;
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
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire main_clk;
  wire rst_o;

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
  design_1_reset_top_0_0_reset_top inst
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA[0]),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .main_clk(main_clk),
        .rst_o(rst_o));
endmodule

(* ORIG_REF_NAME = "periph_reset_router" *) 
module design_1_reset_top_0_0_periph_reset_router
   (active_ff,
    \??3_out ,
    rst_ff,
    rst_o,
    active_ff_reg_0,
    active_ff_reg_1,
    S_AXI_ACLK,
    main_clk,
    rst_ff_reg_0,
    S_AXI_ARESETN);
  output active_ff;
  output \??3_out ;
  output rst_ff;
  output rst_o;
  input active_ff_reg_0;
  input active_ff_reg_1;
  input S_AXI_ACLK;
  input main_clk;
  input rst_ff_reg_0;
  input S_AXI_ARESETN;

  wire \??3_out ;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire active_ff;
  wire active_ff_reg_0;
  wire active_ff_reg_1;
  wire done_ff_i_1_n_0;
  wire main_clk;
  wire rst_ff;
  wire rst_ff_reg_0;
  wire rst_o;

  FDRE active_ff_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(active_ff_reg_1),
        .Q(active_ff),
        .R(active_ff_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    done_ff_i_1
       (.I0(active_ff),
        .I1(S_AXI_ARESETN),
        .O(done_ff_i_1_n_0));
  FDRE done_ff_reg
       (.C(main_clk),
        .CE(1'b1),
        .D(done_ff_i_1_n_0),
        .Q(\??3_out ),
        .R(1'b0));
  FDSE rst_ff_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(rst_ff_reg_0),
        .Q(rst_ff),
        .S(active_ff_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    rst_o_INST_0
       (.I0(rst_ff),
        .I1(active_ff),
        .I2(\??3_out ),
        .I3(S_AXI_ARESETN),
        .O(rst_o));
endmodule

(* ORIG_REF_NAME = "read_write_axi" *) 
module design_1_reset_top_0_0_read_write_axi
   (S_AXI_RVALID,
    S_AXI_ARESETN_0,
    S_AXI_WREADY,
    S_AXI_BVALID,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    \FSM_sequential_write_fsm_state_ff_reg[0]_0 ,
    \write_data_ff_reg[0]_0 ,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_RREADY,
    S_AXI_ARVALID,
    \??3_out ,
    active_ff,
    S_AXI_WDATA,
    S_AXI_WVALID,
    rst_ff,
    S_AXI_AWVALID,
    S_AXI_BREADY);
  output S_AXI_RVALID;
  output S_AXI_ARESETN_0;
  output S_AXI_WREADY;
  output S_AXI_BVALID;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output \FSM_sequential_write_fsm_state_ff_reg[0]_0 ;
  output \write_data_ff_reg[0]_0 ;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input S_AXI_RREADY;
  input S_AXI_ARVALID;
  input \??3_out ;
  input active_ff;
  input [0:0]S_AXI_WDATA;
  input S_AXI_WVALID;
  input rst_ff;
  input S_AXI_AWVALID;
  input S_AXI_BREADY;

  wire \??3_out ;
  wire \FSM_sequential_write_fsm_state_ff[0]_i_1_n_0 ;
  wire \FSM_sequential_write_fsm_state_ff[1]_i_1_n_0 ;
  wire \FSM_sequential_write_fsm_state_ff_reg[0]_0 ;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARESETN_0;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [0:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire active_ff;
  wire read_fsm_state_ff_i_2_n_0;
  wire rst_ff;
  wire [0:0]write_data_ff;
  wire \write_data_ff[0]_i_1_n_0 ;
  wire \write_data_ff_reg[0]_0 ;
  wire [1:0]write_fsm_state_ff;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h11DDFCFC)) 
    \FSM_sequential_write_fsm_state_ff[0]_i_1 
       (.I0(S_AXI_WVALID),
        .I1(write_fsm_state_ff[1]),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_BREADY),
        .I4(write_fsm_state_ff[0]),
        .O(\FSM_sequential_write_fsm_state_ff[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_ARREADY_INST_0
       (.I0(S_AXI_RVALID),
        .O(S_AXI_ARREADY));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    S_AXI_AWREADY_INST_0
       (.I0(write_fsm_state_ff[0]),
        .I1(write_fsm_state_ff[1]),
        .O(S_AXI_AWREADY));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    S_AXI_BVALID_INST_0
       (.I0(write_fsm_state_ff[0]),
        .I1(write_fsm_state_ff[1]),
        .O(S_AXI_BVALID));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    S_AXI_WREADY_INST_0
       (.I0(write_fsm_state_ff[0]),
        .I1(write_fsm_state_ff[1]),
        .O(S_AXI_WREADY));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    active_ff_i_1
       (.I0(write_fsm_state_ff[0]),
        .I1(write_fsm_state_ff[1]),
        .I2(\??3_out ),
        .I3(active_ff),
        .O(\FSM_sequential_write_fsm_state_ff_reg[0]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    read_fsm_state_ff_i_1
       (.I0(S_AXI_ARESETN),
        .O(S_AXI_ARESETN_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    rst_ff_i_1
       (.I0(write_data_ff),
        .I1(write_fsm_state_ff[1]),
        .I2(write_fsm_state_ff[0]),
        .I3(rst_ff),
        .O(\write_data_ff_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \write_data_ff[0]_i_1 
       (.I0(S_AXI_WDATA),
        .I1(write_fsm_state_ff[1]),
        .I2(write_fsm_state_ff[0]),
        .I3(S_AXI_WVALID),
        .I4(write_data_ff),
        .O(\write_data_ff[0]_i_1_n_0 ));
  FDRE \write_data_ff_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\write_data_ff[0]_i_1_n_0 ),
        .Q(write_data_ff),
        .R(S_AXI_ARESETN_0));
endmodule

(* ORIG_REF_NAME = "reset_top" *) 
module design_1_reset_top_0_0_reset_top
   (S_AXI_WREADY,
    S_AXI_BVALID,
    S_AXI_AWREADY,
    rst_o,
    S_AXI_ARREADY,
    S_AXI_RVALID,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    S_AXI_BREADY,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_RREADY,
    S_AXI_ARVALID,
    S_AXI_WDATA,
    main_clk);
  output S_AXI_WREADY;
  output S_AXI_BVALID;
  output S_AXI_AWREADY;
  output rst_o;
  output S_AXI_ARREADY;
  output S_AXI_RVALID;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input S_AXI_BREADY;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input S_AXI_RREADY;
  input S_AXI_ARVALID;
  input [0:0]S_AXI_WDATA;
  input main_clk;

  wire \??3_out ;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [0:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire active_ff;
  wire main_clk;
  wire read_write_axi_inst_n_1;
  wire read_write_axi_inst_n_6;
  wire read_write_axi_inst_n_7;
  wire rst_ff;
  wire rst_o;

  design_1_reset_top_0_0_periph_reset_router periph_reset_router_inst
       (.\??3_out (\??3_out ),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .active_ff(active_ff),
        .active_ff_reg_0(read_write_axi_inst_n_1),
        .active_ff_reg_1(read_write_axi_inst_n_6),
        .main_clk(main_clk),
        .rst_ff(rst_ff),
        .rst_ff_reg_0(read_write_axi_inst_n_7),
        .rst_o(rst_o));
  design_1_reset_top_0_0_read_write_axi read_write_axi_inst
       (.\??3_out (\??3_out ),
        .\FSM_sequential_write_fsm_state_ff_reg[0]_0 (read_write_axi_inst_n_6),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARESETN_0(read_write_axi_inst_n_1),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .active_ff(active_ff),
        .rst_ff(rst_ff),
        .\write_data_ff_reg[0]_0 (read_write_axi_inst_n_7));
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
