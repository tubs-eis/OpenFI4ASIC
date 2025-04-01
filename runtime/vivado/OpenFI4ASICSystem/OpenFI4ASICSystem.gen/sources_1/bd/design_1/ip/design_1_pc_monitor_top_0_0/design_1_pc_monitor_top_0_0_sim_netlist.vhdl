-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2.1 (lin64) Build 5266912 Sun Dec 15 09:03:31 MST 2024
-- Date        : Tue Apr  1 19:29:40 2025
-- Host        : laptop-homann-25.eis.tu-bs.de running 64-bit Ubuntu 24.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/jhomann/Projects/OpenFLINT/repos/public/OpenFI4ASIC/runtime/vivado/OpenFI4ASICSystem/OpenFI4ASICSystem.gen/sources_1/bd/design_1/ip/design_1_pc_monitor_top_0_0/design_1_pc_monitor_top_0_0_sim_netlist.vhdl
-- Design      : design_1_pc_monitor_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pc_monitor_top_0_0_read_write_axi is
  port (
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    read_fsm_state_ff_reg_0 : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    pc_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pc_monitor_top_0_0_read_write_axi : entity is "read_write_axi";
end design_1_pc_monitor_top_0_0_read_write_axi;

architecture STRUCTURE of design_1_pc_monitor_top_0_0_read_write_axi is
  signal \FSM_sequential_write_fsm_state_ff[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_write_fsm_state_ff[1]_i_1_n_0\ : STD_LOGIC;
  signal read_fsm_state_ff_i_1_n_0 : STD_LOGIC;
  signal \^read_fsm_state_ff_reg_0\ : STD_LOGIC;
  signal write_fsm_state_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_write_fsm_state_ff[1]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_write_fsm_state_ff_reg[0]\ : label is "addr:00,receive_data:01,write_data:10,response:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_write_fsm_state_ff_reg[1]\ : label is "addr:00,receive_data:01,write_data:10,response:11";
  attribute SOFT_HLUTNM of S_AXI_ARREADY_INST_0 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of S_AXI_AWREADY_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of S_AXI_BVALID_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[0]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[10]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[11]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[12]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[13]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[14]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[15]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[16]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[17]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[18]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[19]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[1]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[20]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[21]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[22]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[23]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[24]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[25]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[26]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[27]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[28]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[29]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[2]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[30]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[31]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[3]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[4]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[5]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[6]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[7]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[8]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[9]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of S_AXI_WREADY_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of read_fsm_state_ff_i_1 : label is "soft_lutpair1";
begin
  read_fsm_state_ff_reg_0 <= \^read_fsm_state_ff_reg_0\;
\FSM_sequential_write_fsm_state_ff[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"775077FA00000000"
    )
        port map (
      I0 => write_fsm_state_ff(0),
      I1 => S_AXI_BREADY,
      I2 => S_AXI_AWVALID,
      I3 => write_fsm_state_ff(1),
      I4 => S_AXI_WVALID,
      I5 => S_AXI_ARESETN,
      O => \FSM_sequential_write_fsm_state_ff[0]_i_1_n_0\
    );
\FSM_sequential_write_fsm_state_ff[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38F80000"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => write_fsm_state_ff(0),
      I2 => write_fsm_state_ff(1),
      I3 => S_AXI_BREADY,
      I4 => S_AXI_ARESETN,
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
      Q => write_fsm_state_ff(0),
      R => '0'
    );
\FSM_sequential_write_fsm_state_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_sequential_write_fsm_state_ff[1]_i_1_n_0\,
      Q => write_fsm_state_ff(1),
      R => '0'
    );
S_AXI_ARREADY_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^read_fsm_state_ff_reg_0\,
      O => S_AXI_ARREADY
    );
S_AXI_AWREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_fsm_state_ff(0),
      I1 => write_fsm_state_ff(1),
      O => S_AXI_AWREADY
    );
S_AXI_BVALID_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => write_fsm_state_ff(0),
      I1 => write_fsm_state_ff(1),
      O => S_AXI_BVALID
    );
\S_AXI_RDATA[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^read_fsm_state_ff_reg_0\,
      I1 => pc_i(0),
      O => S_AXI_RDATA(0)
    );
\S_AXI_RDATA[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^read_fsm_state_ff_reg_0\,
      I1 => pc_i(10),
      O => S_AXI_RDATA(10)
    );
\S_AXI_RDATA[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^read_fsm_state_ff_reg_0\,
      I1 => pc_i(11),
      O => S_AXI_RDATA(11)
    );
\S_AXI_RDATA[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^read_fsm_state_ff_reg_0\,
      I1 => pc_i(12),
      O => S_AXI_RDATA(12)
    );
\S_AXI_RDATA[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^read_fsm_state_ff_reg_0\,
      I1 => pc_i(13),
      O => S_AXI_RDATA(13)
    );
\S_AXI_RDATA[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pc_i(14),
      I1 => \^read_fsm_state_ff_reg_0\,
      O => S_AXI_RDATA(14)
    );
\S_AXI_RDATA[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^read_fsm_state_ff_reg_0\,
      I1 => pc_i(15),
      O => S_AXI_RDATA(15)
    );
\S_AXI_RDATA[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^read_fsm_state_ff_reg_0\,
      I1 => pc_i(16),
      O => S_AXI_RDATA(16)
    );
\S_AXI_RDATA[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pc_i(17),
      I1 => \^read_fsm_state_ff_reg_0\,
      O => S_AXI_RDATA(17)
    );
\S_AXI_RDATA[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^read_fsm_state_ff_reg_0\,
      I1 => pc_i(18),
      O => S_AXI_RDATA(18)
    );
\S_AXI_RDATA[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^read_fsm_state_ff_reg_0\,
      I1 => pc_i(19),
      O => S_AXI_RDATA(19)
    );
\S_AXI_RDATA[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^read_fsm_state_ff_reg_0\,
      I1 => pc_i(1),
      O => S_AXI_RDATA(1)
    );
\S_AXI_RDATA[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pc_i(20),
      I1 => \^read_fsm_state_ff_reg_0\,
      O => S_AXI_RDATA(20)
    );
\S_AXI_RDATA[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^read_fsm_state_ff_reg_0\,
      I1 => pc_i(21),
      O => S_AXI_RDATA(21)
    );
\S_AXI_RDATA[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pc_i(22),
      I1 => \^read_fsm_state_ff_reg_0\,
      O => S_AXI_RDATA(22)
    );
\S_AXI_RDATA[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^read_fsm_state_ff_reg_0\,
      I1 => pc_i(23),
      O => S_AXI_RDATA(23)
    );
\S_AXI_RDATA[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pc_i(24),
      I1 => \^read_fsm_state_ff_reg_0\,
      O => S_AXI_RDATA(24)
    );
\S_AXI_RDATA[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^read_fsm_state_ff_reg_0\,
      I1 => pc_i(25),
      O => S_AXI_RDATA(25)
    );
\S_AXI_RDATA[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^read_fsm_state_ff_reg_0\,
      I1 => pc_i(26),
      O => S_AXI_RDATA(26)
    );
\S_AXI_RDATA[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^read_fsm_state_ff_reg_0\,
      I1 => pc_i(27),
      O => S_AXI_RDATA(27)
    );
\S_AXI_RDATA[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^read_fsm_state_ff_reg_0\,
      I1 => pc_i(28),
      O => S_AXI_RDATA(28)
    );
\S_AXI_RDATA[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pc_i(29),
      I1 => \^read_fsm_state_ff_reg_0\,
      O => S_AXI_RDATA(29)
    );
\S_AXI_RDATA[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^read_fsm_state_ff_reg_0\,
      I1 => pc_i(2),
      O => S_AXI_RDATA(2)
    );
\S_AXI_RDATA[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^read_fsm_state_ff_reg_0\,
      I1 => pc_i(30),
      O => S_AXI_RDATA(30)
    );
\S_AXI_RDATA[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^read_fsm_state_ff_reg_0\,
      I1 => pc_i(31),
      O => S_AXI_RDATA(31)
    );
\S_AXI_RDATA[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^read_fsm_state_ff_reg_0\,
      I1 => pc_i(3),
      O => S_AXI_RDATA(3)
    );
\S_AXI_RDATA[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pc_i(4),
      I1 => \^read_fsm_state_ff_reg_0\,
      O => S_AXI_RDATA(4)
    );
\S_AXI_RDATA[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^read_fsm_state_ff_reg_0\,
      I1 => pc_i(5),
      O => S_AXI_RDATA(5)
    );
\S_AXI_RDATA[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^read_fsm_state_ff_reg_0\,
      I1 => pc_i(6),
      O => S_AXI_RDATA(6)
    );
\S_AXI_RDATA[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^read_fsm_state_ff_reg_0\,
      I1 => pc_i(7),
      O => S_AXI_RDATA(7)
    );
\S_AXI_RDATA[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pc_i(8),
      I1 => \^read_fsm_state_ff_reg_0\,
      O => S_AXI_RDATA(8)
    );
\S_AXI_RDATA[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^read_fsm_state_ff_reg_0\,
      I1 => pc_i(9),
      O => S_AXI_RDATA(9)
    );
S_AXI_WREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => write_fsm_state_ff(0),
      I1 => write_fsm_state_ff(1),
      O => S_AXI_WREADY
    );
read_fsm_state_ff_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^read_fsm_state_ff_reg_0\,
      I2 => S_AXI_RREADY,
      I3 => S_AXI_ARESETN,
      O => read_fsm_state_ff_i_1_n_0
    );
read_fsm_state_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => read_fsm_state_ff_i_1_n_0,
      Q => \^read_fsm_state_ff_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pc_monitor_top_0_0_pc_monitor_top is
  port (
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    read_fsm_state_ff_reg : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    pc_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pc_monitor_top_0_0_pc_monitor_top : entity is "pc_monitor_top";
end design_1_pc_monitor_top_0_0_pc_monitor_top;

architecture STRUCTURE of design_1_pc_monitor_top_0_0_pc_monitor_top is
begin
read_write_axi_inst: entity work.design_1_pc_monitor_top_0_0_read_write_axi
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WVALID => S_AXI_WVALID,
      pc_i(31 downto 0) => pc_i(31 downto 0),
      read_fsm_state_ff_reg_0 => read_fsm_state_ff_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pc_monitor_top_0_0 is
  port (
    pc_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
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
  attribute NotValidForBitStream of design_1_pc_monitor_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_pc_monitor_top_0_0 : entity is "design_1_pc_monitor_top_0_0,pc_monitor_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_pc_monitor_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_pc_monitor_top_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_pc_monitor_top_0_0 : entity is "pc_monitor_top,Vivado 2024.2.1";
end design_1_pc_monitor_top_0_0;

architecture STRUCTURE of design_1_pc_monitor_top_0_0 is
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
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_pc_monitor_top_0_0_pc_monitor_top
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WVALID => S_AXI_WVALID,
      pc_i(31 downto 0) => pc_i(31 downto 0),
      read_fsm_state_ff_reg => S_AXI_RVALID
    );
end STRUCTURE;
