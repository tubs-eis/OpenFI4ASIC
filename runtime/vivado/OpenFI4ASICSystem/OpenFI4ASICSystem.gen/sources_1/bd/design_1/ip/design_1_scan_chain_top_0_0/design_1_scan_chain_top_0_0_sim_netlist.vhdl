-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2.1 (lin64) Build 5266912 Sun Dec 15 09:03:31 MST 2024
-- Date        : Tue Apr  1 19:29:36 2025
-- Host        : laptop-homann-25.eis.tu-bs.de running 64-bit Ubuntu 24.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/jhomann/Projects/OpenFLINT/repos/public/OpenFI4ASIC/runtime/vivado/OpenFI4ASICSystem/OpenFI4ASICSystem.gen/sources_1/bd/design_1/ip/design_1_scan_chain_top_0_0/design_1_scan_chain_top_0_0_sim_netlist.vhdl
-- Design      : design_1_scan_chain_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_scan_chain_top_0_0_read_write_axi is
  port (
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_ARESETN_0 : out STD_LOGIC;
    write_address_ff : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    write_fsm_state_ff : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ARREADY : out STD_LOGIC;
    write_data_ff : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_scan_chain_top_0_0_read_write_axi : entity is "read_write_axi";
end design_1_scan_chain_top_0_0_read_write_axi;

architecture STRUCTURE of design_1_scan_chain_top_0_0_read_write_axi is
  signal \FSM_sequential_write_fsm_state_ff[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_write_fsm_state_ff[1]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_aresetn_0\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal read_fsm_state_ff_i_2_n_0 : STD_LOGIC;
  signal \^write_address_ff\ : STD_LOGIC;
  signal \write_address_ff[0]_i_1_n_0\ : STD_LOGIC;
  signal \^write_data_ff\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \write_data_ff[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ff[1]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ff[2]_i_1_n_0\ : STD_LOGIC;
  signal \^write_fsm_state_ff\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_write_fsm_state_ff[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_write_fsm_state_ff[1]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_write_fsm_state_ff_reg[0]\ : label is "addr:00,receive_data:01,write_data:10,response:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_write_fsm_state_ff_reg[1]\ : label is "addr:00,receive_data:01,write_data:10,response:11";
  attribute SOFT_HLUTNM of S_AXI_ARREADY_INST_0 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of S_AXI_AWREADY_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of S_AXI_BVALID_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of S_AXI_WREADY_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of read_fsm_state_ff_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \write_address_ff[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \write_data_ff[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \write_data_ff[2]_i_1\ : label is "soft_lutpair2";
begin
  S_AXI_ARESETN_0 <= \^s_axi_aresetn_0\;
  S_AXI_RVALID <= \^s_axi_rvalid\;
  write_address_ff <= \^write_address_ff\;
  write_data_ff(2 downto 0) <= \^write_data_ff\(2 downto 0);
  write_fsm_state_ff(1 downto 0) <= \^write_fsm_state_ff\(1 downto 0);
\FSM_sequential_write_fsm_state_ff[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11DDFCFC"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => \^write_fsm_state_ff\(1),
      I2 => S_AXI_AWVALID,
      I3 => S_AXI_BREADY,
      I4 => \^write_fsm_state_ff\(0),
      O => \FSM_sequential_write_fsm_state_ff[0]_i_1_n_0\
    );
\FSM_sequential_write_fsm_state_ff[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7C4C"
    )
        port map (
      I0 => S_AXI_BREADY,
      I1 => \^write_fsm_state_ff\(1),
      I2 => \^write_fsm_state_ff\(0),
      I3 => S_AXI_WVALID,
      O => \FSM_sequential_write_fsm_state_ff[1]_i_1_n_0\
    );
\FSM_sequential_write_fsm_state_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_sequential_write_fsm_state_ff[0]_i_1_n_0\,
      Q => \^write_fsm_state_ff\(0),
      R => \^s_axi_aresetn_0\
    );
\FSM_sequential_write_fsm_state_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_sequential_write_fsm_state_ff[1]_i_1_n_0\,
      Q => \^write_fsm_state_ff\(1),
      R => \^s_axi_aresetn_0\
    );
S_AXI_ARREADY_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_axi_rvalid\,
      O => S_AXI_ARREADY
    );
S_AXI_AWREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^write_fsm_state_ff\(0),
      I1 => \^write_fsm_state_ff\(1),
      O => S_AXI_AWREADY
    );
S_AXI_BVALID_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^write_fsm_state_ff\(0),
      I1 => \^write_fsm_state_ff\(1),
      O => S_AXI_BVALID
    );
S_AXI_WREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^write_fsm_state_ff\(0),
      I1 => \^write_fsm_state_ff\(1),
      O => S_AXI_WREADY
    );
read_fsm_state_ff_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => \^s_axi_aresetn_0\
    );
read_fsm_state_ff_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => S_AXI_RREADY,
      I1 => \^s_axi_rvalid\,
      I2 => S_AXI_ARVALID,
      O => read_fsm_state_ff_i_2_n_0
    );
read_fsm_state_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => read_fsm_state_ff_i_2_n_0,
      Q => \^s_axi_rvalid\,
      R => \^s_axi_aresetn_0\
    );
\write_address_ff[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => S_AXI_AWADDR(0),
      I1 => S_AXI_AWVALID,
      I2 => \^write_fsm_state_ff\(0),
      I3 => \^write_fsm_state_ff\(1),
      I4 => \^write_address_ff\,
      O => \write_address_ff[0]_i_1_n_0\
    );
\write_address_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \write_address_ff[0]_i_1_n_0\,
      Q => \^write_address_ff\,
      R => \^s_axi_aresetn_0\
    );
\write_data_ff[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => S_AXI_WDATA(0),
      I1 => \^write_fsm_state_ff\(1),
      I2 => \^write_fsm_state_ff\(0),
      I3 => S_AXI_WVALID,
      I4 => \^write_data_ff\(0),
      O => \write_data_ff[0]_i_1_n_0\
    );
\write_data_ff[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => S_AXI_WDATA(1),
      I1 => \^write_fsm_state_ff\(1),
      I2 => \^write_fsm_state_ff\(0),
      I3 => S_AXI_WVALID,
      I4 => \^write_data_ff\(1),
      O => \write_data_ff[1]_i_1_n_0\
    );
\write_data_ff[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => S_AXI_WDATA(2),
      I1 => \^write_fsm_state_ff\(1),
      I2 => \^write_fsm_state_ff\(0),
      I3 => S_AXI_WVALID,
      I4 => \^write_data_ff\(2),
      O => \write_data_ff[2]_i_1_n_0\
    );
\write_data_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \write_data_ff[0]_i_1_n_0\,
      Q => \^write_data_ff\(0),
      R => \^s_axi_aresetn_0\
    );
\write_data_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \write_data_ff[1]_i_1_n_0\,
      Q => \^write_data_ff\(1),
      R => \^s_axi_aresetn_0\
    );
\write_data_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \write_data_ff[2]_i_1_n_0\,
      Q => \^write_data_ff\(2),
      R => \^s_axi_aresetn_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_scan_chain_top_0_0_scan_chain_router is
  port (
    scan_chain_o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    scn_chn_clk_i : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    write_address_ff : in STD_LOGIC;
    write_fsm_state_ff : in STD_LOGIC_VECTOR ( 1 downto 0 );
    active_ff_reg_0 : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    write_data_ff : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_scan_chain_top_0_0_scan_chain_router : entity is "scan_chain_router";
end design_1_scan_chain_top_0_0_scan_chain_router;

architecture STRUCTURE of design_1_scan_chain_top_0_0_scan_chain_router is
  signal \??3_out\ : STD_LOGIC;
  signal active_ff : STD_LOGIC;
  signal active_ff_i_1_n_0 : STD_LOGIC;
  signal done_ff_i_1_n_0 : STD_LOGIC;
  signal scan_chain_ff : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \scan_chain_ff[0]_i_1_n_0\ : STD_LOGIC;
  signal \scan_chain_ff[1]_i_1_n_0\ : STD_LOGIC;
  signal \scan_chain_ff[2]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of done_ff_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \scan_chain_o[0]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \scan_chain_o[1]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \scan_chain_o[2]_INST_0\ : label is "soft_lutpair5";
begin
active_ff_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55750030"
    )
        port map (
      I0 => \??3_out\,
      I1 => write_address_ff,
      I2 => write_fsm_state_ff(1),
      I3 => write_fsm_state_ff(0),
      I4 => active_ff,
      O => active_ff_i_1_n_0
    );
active_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => active_ff_i_1_n_0,
      Q => active_ff,
      R => active_ff_reg_0
    );
done_ff_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => active_ff,
      I1 => S_AXI_ARESETN,
      O => done_ff_i_1_n_0
    );
done_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => scn_chn_clk_i,
      CE => '1',
      D => done_ff_i_1_n_0,
      Q => \??3_out\,
      R => '0'
    );
\scan_chain_ff[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => write_data_ff(0),
      I1 => write_fsm_state_ff(0),
      I2 => write_fsm_state_ff(1),
      I3 => write_address_ff,
      I4 => scan_chain_ff(0),
      O => \scan_chain_ff[0]_i_1_n_0\
    );
\scan_chain_ff[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => write_data_ff(1),
      I1 => write_fsm_state_ff(0),
      I2 => write_fsm_state_ff(1),
      I3 => write_address_ff,
      I4 => scan_chain_ff(1),
      O => \scan_chain_ff[1]_i_1_n_0\
    );
\scan_chain_ff[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => write_data_ff(2),
      I1 => write_fsm_state_ff(0),
      I2 => write_fsm_state_ff(1),
      I3 => write_address_ff,
      I4 => scan_chain_ff(2),
      O => \scan_chain_ff[2]_i_1_n_0\
    );
\scan_chain_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \scan_chain_ff[0]_i_1_n_0\,
      Q => scan_chain_ff(0),
      R => active_ff_reg_0
    );
\scan_chain_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \scan_chain_ff[1]_i_1_n_0\,
      Q => scan_chain_ff(1),
      R => active_ff_reg_0
    );
\scan_chain_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \scan_chain_ff[2]_i_1_n_0\,
      Q => scan_chain_ff(2),
      R => active_ff_reg_0
    );
\scan_chain_o[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \??3_out\,
      I1 => active_ff,
      I2 => scan_chain_ff(0),
      O => scan_chain_o(0)
    );
\scan_chain_o[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \??3_out\,
      I1 => active_ff,
      I2 => scan_chain_ff(1),
      O => scan_chain_o(1)
    );
\scan_chain_o[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \??3_out\,
      I1 => active_ff,
      I2 => scan_chain_ff(2),
      O => scan_chain_o(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_scan_chain_top_0_0_scan_chain_top is
  port (
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RVALID : out STD_LOGIC;
    scan_chain_o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 0 to 0 );
    scn_chn_clk_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_scan_chain_top_0_0_scan_chain_top : entity is "scan_chain_top";
end design_1_scan_chain_top_0_0_scan_chain_top;

architecture STRUCTURE of design_1_scan_chain_top_0_0_scan_chain_top is
  signal read_write_axi_inst_n_1 : STD_LOGIC;
  signal write_address_ff : STD_LOGIC;
  signal write_data_ff : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal write_fsm_state_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
read_write_axi_inst: entity work.design_1_scan_chain_top_0_0_read_write_axi
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARESETN_0 => read_write_axi_inst_n_1,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(0) => S_AXI_AWADDR(0),
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WDATA(2 downto 0) => S_AXI_WDATA(2 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WVALID => S_AXI_WVALID,
      write_address_ff => write_address_ff,
      write_data_ff(2 downto 0) => write_data_ff(2 downto 0),
      write_fsm_state_ff(1 downto 0) => write_fsm_state_ff(1 downto 0)
    );
scan_chain_router_inst: entity work.design_1_scan_chain_top_0_0_scan_chain_router
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      active_ff_reg_0 => read_write_axi_inst_n_1,
      scan_chain_o(2 downto 0) => scan_chain_o(2 downto 0),
      scn_chn_clk_i => scn_chn_clk_i,
      write_address_ff => write_address_ff,
      write_data_ff(2 downto 0) => write_data_ff(2 downto 0),
      write_fsm_state_ff(1 downto 0) => write_fsm_state_ff(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_scan_chain_top_0_0 is
  port (
    scan_chain_o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    scn_chn_clk_i : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_scan_chain_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_scan_chain_top_0_0 : entity is "design_1_scan_chain_top_0_0,scan_chain_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_scan_chain_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_scan_chain_top_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_scan_chain_top_0_0 : entity is "scan_chain_top,Vivado 2024.2.1";
end design_1_scan_chain_top_0_0;

architecture STRUCTURE of design_1_scan_chain_top_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of S_AXI_ACLK : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of S_AXI_ACLK : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute X_INTERFACE_MODE of S_AXI_ARESETN : signal is "slave";
  attribute X_INTERFACE_PARAMETER of S_AXI_ARESETN : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_INFO of S_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of S_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of S_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of S_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of S_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of S_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_MODE of S_AXI_AWADDR : signal is "slave";
  attribute X_INTERFACE_PARAMETER of S_AXI_AWADDR : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 1, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of S_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of S_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of S_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of S_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of S_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_RDATA(31) <= \<const0>\;
  S_AXI_RDATA(30) <= \<const0>\;
  S_AXI_RDATA(29) <= \<const0>\;
  S_AXI_RDATA(28) <= \<const0>\;
  S_AXI_RDATA(27) <= \<const0>\;
  S_AXI_RDATA(26) <= \<const0>\;
  S_AXI_RDATA(25) <= \<const0>\;
  S_AXI_RDATA(24) <= \<const0>\;
  S_AXI_RDATA(23) <= \<const0>\;
  S_AXI_RDATA(22) <= \<const0>\;
  S_AXI_RDATA(21) <= \<const0>\;
  S_AXI_RDATA(20) <= \<const0>\;
  S_AXI_RDATA(19) <= \<const0>\;
  S_AXI_RDATA(18) <= \<const0>\;
  S_AXI_RDATA(17) <= \<const0>\;
  S_AXI_RDATA(16) <= \<const0>\;
  S_AXI_RDATA(15) <= \<const0>\;
  S_AXI_RDATA(14) <= \<const0>\;
  S_AXI_RDATA(13) <= \<const0>\;
  S_AXI_RDATA(12) <= \<const0>\;
  S_AXI_RDATA(11) <= \<const0>\;
  S_AXI_RDATA(10) <= \<const0>\;
  S_AXI_RDATA(9) <= \<const0>\;
  S_AXI_RDATA(8) <= \<const0>\;
  S_AXI_RDATA(7) <= \<const0>\;
  S_AXI_RDATA(6) <= \<const0>\;
  S_AXI_RDATA(5) <= \<const0>\;
  S_AXI_RDATA(4) <= \<const0>\;
  S_AXI_RDATA(3) <= \<const0>\;
  S_AXI_RDATA(2) <= \<const0>\;
  S_AXI_RDATA(1) <= \<const0>\;
  S_AXI_RDATA(0) <= \<const0>\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_scan_chain_top_0_0_scan_chain_top
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(0) => S_AXI_AWADDR(0),
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WDATA(2 downto 0) => S_AXI_WDATA(2 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WVALID => S_AXI_WVALID,
      scan_chain_o(2 downto 0) => scan_chain_o(2 downto 0),
      scn_chn_clk_i => scn_chn_clk_i
    );
end STRUCTURE;
