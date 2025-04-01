-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2.1 (lin64) Build 5266912 Sun Dec 15 09:03:31 MST 2024
-- Date        : Tue Apr  1 19:29:34 2025
-- Host        : laptop-homann-25.eis.tu-bs.de running 64-bit Ubuntu 24.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/jhomann/Projects/OpenFLINT/repos/public/OpenFI4ASIC/runtime/vivado/OpenFI4ASICSystem/OpenFI4ASICSystem.gen/sources_1/bd/design_1/ip/design_1_clk_gate_top_0_0/design_1_clk_gate_top_0_0_sim_netlist.vhdl
-- Design      : design_1_clk_gate_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_clk_gate_top_0_0_clk_gate is
  port (
    clk_o : out STD_LOGIC;
    count_ff_reg : out STD_LOGIC_VECTOR ( 63 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ACLK : in STD_LOGIC;
    clk_enabled_o : in STD_LOGIC;
    \count_ff_reg[63]_0\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_ff_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_ff_reg[11]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_ff_reg[15]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_ff_reg[19]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_ff_reg[23]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_ff_reg[27]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_ff_reg[31]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_ff_reg[35]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_ff_reg[39]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_ff_reg[43]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_ff_reg[47]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_ff_reg[51]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_ff_reg[55]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_ff_reg[59]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_ff_reg[63]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_clk_gate_top_0_0_clk_gate : entity is "clk_gate";
end design_1_clk_gate_top_0_0_clk_gate;

architecture STRUCTURE of design_1_clk_gate_top_0_0_clk_gate is
  signal \count_ff2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__0_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__0_n_1\ : STD_LOGIC;
  signal \count_ff2_carry__0_n_2\ : STD_LOGIC;
  signal \count_ff2_carry__0_n_3\ : STD_LOGIC;
  signal \count_ff2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__1_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__1_n_1\ : STD_LOGIC;
  signal \count_ff2_carry__1_n_2\ : STD_LOGIC;
  signal \count_ff2_carry__1_n_3\ : STD_LOGIC;
  signal \count_ff2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__2_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__2_n_1\ : STD_LOGIC;
  signal \count_ff2_carry__2_n_2\ : STD_LOGIC;
  signal \count_ff2_carry__2_n_3\ : STD_LOGIC;
  signal \count_ff2_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__3_i_6_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__3_i_7_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__3_i_8_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__3_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__3_n_1\ : STD_LOGIC;
  signal \count_ff2_carry__3_n_2\ : STD_LOGIC;
  signal \count_ff2_carry__3_n_3\ : STD_LOGIC;
  signal \count_ff2_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__4_i_5_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__4_i_6_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__4_i_7_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__4_i_8_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__4_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__4_n_1\ : STD_LOGIC;
  signal \count_ff2_carry__4_n_2\ : STD_LOGIC;
  signal \count_ff2_carry__4_n_3\ : STD_LOGIC;
  signal \count_ff2_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__5_i_5_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__5_i_6_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__5_i_7_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__5_i_8_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__5_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__5_n_1\ : STD_LOGIC;
  signal \count_ff2_carry__5_n_2\ : STD_LOGIC;
  signal \count_ff2_carry__5_n_3\ : STD_LOGIC;
  signal \count_ff2_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__6_i_4_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__6_i_5_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__6_i_6_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__6_i_7_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__6_i_8_n_0\ : STD_LOGIC;
  signal \count_ff2_carry__6_n_1\ : STD_LOGIC;
  signal \count_ff2_carry__6_n_2\ : STD_LOGIC;
  signal \count_ff2_carry__6_n_3\ : STD_LOGIC;
  signal count_ff2_carry_i_1_n_0 : STD_LOGIC;
  signal count_ff2_carry_i_2_n_0 : STD_LOGIC;
  signal count_ff2_carry_i_3_n_0 : STD_LOGIC;
  signal count_ff2_carry_i_4_n_0 : STD_LOGIC;
  signal count_ff2_carry_i_5_n_0 : STD_LOGIC;
  signal count_ff2_carry_i_6_n_0 : STD_LOGIC;
  signal count_ff2_carry_i_7_n_0 : STD_LOGIC;
  signal count_ff2_carry_i_8_n_0 : STD_LOGIC;
  signal count_ff2_carry_n_0 : STD_LOGIC;
  signal count_ff2_carry_n_1 : STD_LOGIC;
  signal count_ff2_carry_n_2 : STD_LOGIC;
  signal count_ff2_carry_n_3 : STD_LOGIC;
  signal \^count_ff_reg\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_count_ff2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_ff2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_ff2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_ff2_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_ff2_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_ff2_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_ff2_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_ff2_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of BUFGCE_inst : label is "BUFGCE";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of BUFGCE_inst : label is "CE:CE0 I:I0 GND:S1,IGNORE0,CE1 VCC:S0,IGNORE1,I1";
  attribute box_type : string;
  attribute box_type of BUFGCE_inst : label is "PRIMITIVE";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of count_ff2_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \count_ff2_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \count_ff2_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \count_ff2_carry__2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \count_ff2_carry__3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \count_ff2_carry__4\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \count_ff2_carry__5\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \count_ff2_carry__6\ : label is 11;
begin
  count_ff_reg(63 downto 0) <= \^count_ff_reg\(63 downto 0);
BUFGCE_inst: unisim.vcomponents.BUFGCTRL
    generic map(
      INIT_OUT => 0,
      PRESELECT_I0 => true,
      PRESELECT_I1 => false,
      SIM_DEVICE => "7SERIES"
    )
        port map (
      CE0 => clk_enabled_o,
      CE1 => '0',
      I0 => S_AXI_ACLK,
      I1 => '1',
      IGNORE0 => '0',
      IGNORE1 => '1',
      O => clk_o,
      S0 => '1',
      S1 => '0'
    );
count_ff2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count_ff2_carry_n_0,
      CO(2) => count_ff2_carry_n_1,
      CO(1) => count_ff2_carry_n_2,
      CO(0) => count_ff2_carry_n_3,
      CYINIT => '0',
      DI(3) => count_ff2_carry_i_1_n_0,
      DI(2) => count_ff2_carry_i_2_n_0,
      DI(1) => count_ff2_carry_i_3_n_0,
      DI(0) => count_ff2_carry_i_4_n_0,
      O(3 downto 0) => NLW_count_ff2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => count_ff2_carry_i_5_n_0,
      S(2) => count_ff2_carry_i_6_n_0,
      S(1) => count_ff2_carry_i_7_n_0,
      S(0) => count_ff2_carry_i_8_n_0
    );
\count_ff2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count_ff2_carry_n_0,
      CO(3) => \count_ff2_carry__0_n_0\,
      CO(2) => \count_ff2_carry__0_n_1\,
      CO(1) => \count_ff2_carry__0_n_2\,
      CO(0) => \count_ff2_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \count_ff2_carry__0_i_1_n_0\,
      DI(2) => \count_ff2_carry__0_i_2_n_0\,
      DI(1) => \count_ff2_carry__0_i_3_n_0\,
      DI(0) => \count_ff2_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_count_ff2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \count_ff2_carry__0_i_5_n_0\,
      S(2) => \count_ff2_carry__0_i_6_n_0\,
      S(1) => \count_ff2_carry__0_i_7_n_0\,
      S(0) => \count_ff2_carry__0_i_8_n_0\
    );
\count_ff2_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_ff_reg\(14),
      I1 => \^count_ff_reg\(15),
      O => \count_ff2_carry__0_i_1_n_0\
    );
\count_ff2_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_ff_reg\(12),
      I1 => \^count_ff_reg\(13),
      O => \count_ff2_carry__0_i_2_n_0\
    );
\count_ff2_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_ff_reg\(10),
      I1 => \^count_ff_reg\(11),
      O => \count_ff2_carry__0_i_3_n_0\
    );
\count_ff2_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_ff_reg\(8),
      I1 => \^count_ff_reg\(9),
      O => \count_ff2_carry__0_i_4_n_0\
    );
\count_ff2_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_ff_reg\(14),
      I1 => \^count_ff_reg\(15),
      O => \count_ff2_carry__0_i_5_n_0\
    );
\count_ff2_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_ff_reg\(12),
      I1 => \^count_ff_reg\(13),
      O => \count_ff2_carry__0_i_6_n_0\
    );
\count_ff2_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_ff_reg\(10),
      I1 => \^count_ff_reg\(11),
      O => \count_ff2_carry__0_i_7_n_0\
    );
\count_ff2_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_ff_reg\(8),
      I1 => \^count_ff_reg\(9),
      O => \count_ff2_carry__0_i_8_n_0\
    );
\count_ff2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_ff2_carry__0_n_0\,
      CO(3) => \count_ff2_carry__1_n_0\,
      CO(2) => \count_ff2_carry__1_n_1\,
      CO(1) => \count_ff2_carry__1_n_2\,
      CO(0) => \count_ff2_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \count_ff2_carry__1_i_1_n_0\,
      DI(2) => \count_ff2_carry__1_i_2_n_0\,
      DI(1) => \count_ff2_carry__1_i_3_n_0\,
      DI(0) => \count_ff2_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_count_ff2_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \count_ff2_carry__1_i_5_n_0\,
      S(2) => \count_ff2_carry__1_i_6_n_0\,
      S(1) => \count_ff2_carry__1_i_7_n_0\,
      S(0) => \count_ff2_carry__1_i_8_n_0\
    );
\count_ff2_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_ff_reg\(22),
      I1 => \^count_ff_reg\(23),
      O => \count_ff2_carry__1_i_1_n_0\
    );
\count_ff2_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_ff_reg\(20),
      I1 => \^count_ff_reg\(21),
      O => \count_ff2_carry__1_i_2_n_0\
    );
\count_ff2_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_ff_reg\(18),
      I1 => \^count_ff_reg\(19),
      O => \count_ff2_carry__1_i_3_n_0\
    );
\count_ff2_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_ff_reg\(16),
      I1 => \^count_ff_reg\(17),
      O => \count_ff2_carry__1_i_4_n_0\
    );
\count_ff2_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_ff_reg\(22),
      I1 => \^count_ff_reg\(23),
      O => \count_ff2_carry__1_i_5_n_0\
    );
\count_ff2_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_ff_reg\(20),
      I1 => \^count_ff_reg\(21),
      O => \count_ff2_carry__1_i_6_n_0\
    );
\count_ff2_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_ff_reg\(18),
      I1 => \^count_ff_reg\(19),
      O => \count_ff2_carry__1_i_7_n_0\
    );
\count_ff2_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_ff_reg\(16),
      I1 => \^count_ff_reg\(17),
      O => \count_ff2_carry__1_i_8_n_0\
    );
\count_ff2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_ff2_carry__1_n_0\,
      CO(3) => \count_ff2_carry__2_n_0\,
      CO(2) => \count_ff2_carry__2_n_1\,
      CO(1) => \count_ff2_carry__2_n_2\,
      CO(0) => \count_ff2_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \count_ff2_carry__2_i_1_n_0\,
      DI(2) => \count_ff2_carry__2_i_2_n_0\,
      DI(1) => \count_ff2_carry__2_i_3_n_0\,
      DI(0) => \count_ff2_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_count_ff2_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \count_ff2_carry__2_i_5_n_0\,
      S(2) => \count_ff2_carry__2_i_6_n_0\,
      S(1) => \count_ff2_carry__2_i_7_n_0\,
      S(0) => \count_ff2_carry__2_i_8_n_0\
    );
\count_ff2_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_ff_reg\(30),
      I1 => \^count_ff_reg\(31),
      O => \count_ff2_carry__2_i_1_n_0\
    );
\count_ff2_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_ff_reg\(28),
      I1 => \^count_ff_reg\(29),
      O => \count_ff2_carry__2_i_2_n_0\
    );
\count_ff2_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_ff_reg\(26),
      I1 => \^count_ff_reg\(27),
      O => \count_ff2_carry__2_i_3_n_0\
    );
\count_ff2_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_ff_reg\(24),
      I1 => \^count_ff_reg\(25),
      O => \count_ff2_carry__2_i_4_n_0\
    );
\count_ff2_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_ff_reg\(30),
      I1 => \^count_ff_reg\(31),
      O => \count_ff2_carry__2_i_5_n_0\
    );
\count_ff2_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_ff_reg\(28),
      I1 => \^count_ff_reg\(29),
      O => \count_ff2_carry__2_i_6_n_0\
    );
\count_ff2_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_ff_reg\(26),
      I1 => \^count_ff_reg\(27),
      O => \count_ff2_carry__2_i_7_n_0\
    );
\count_ff2_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_ff_reg\(24),
      I1 => \^count_ff_reg\(25),
      O => \count_ff2_carry__2_i_8_n_0\
    );
\count_ff2_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_ff2_carry__2_n_0\,
      CO(3) => \count_ff2_carry__3_n_0\,
      CO(2) => \count_ff2_carry__3_n_1\,
      CO(1) => \count_ff2_carry__3_n_2\,
      CO(0) => \count_ff2_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \count_ff2_carry__3_i_1_n_0\,
      DI(2) => \count_ff2_carry__3_i_2_n_0\,
      DI(1) => \count_ff2_carry__3_i_3_n_0\,
      DI(0) => \count_ff2_carry__3_i_4_n_0\,
      O(3 downto 0) => \NLW_count_ff2_carry__3_O_UNCONNECTED\(3 downto 0),
      S(3) => \count_ff2_carry__3_i_5_n_0\,
      S(2) => \count_ff2_carry__3_i_6_n_0\,
      S(1) => \count_ff2_carry__3_i_7_n_0\,
      S(0) => \count_ff2_carry__3_i_8_n_0\
    );
\count_ff2_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_ff_reg\(38),
      I1 => \^count_ff_reg\(39),
      O => \count_ff2_carry__3_i_1_n_0\
    );
\count_ff2_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_ff_reg\(36),
      I1 => \^count_ff_reg\(37),
      O => \count_ff2_carry__3_i_2_n_0\
    );
\count_ff2_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_ff_reg\(34),
      I1 => \^count_ff_reg\(35),
      O => \count_ff2_carry__3_i_3_n_0\
    );
\count_ff2_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_ff_reg\(32),
      I1 => \^count_ff_reg\(33),
      O => \count_ff2_carry__3_i_4_n_0\
    );
\count_ff2_carry__3_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_ff_reg\(38),
      I1 => \^count_ff_reg\(39),
      O => \count_ff2_carry__3_i_5_n_0\
    );
\count_ff2_carry__3_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_ff_reg\(36),
      I1 => \^count_ff_reg\(37),
      O => \count_ff2_carry__3_i_6_n_0\
    );
\count_ff2_carry__3_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_ff_reg\(34),
      I1 => \^count_ff_reg\(35),
      O => \count_ff2_carry__3_i_7_n_0\
    );
\count_ff2_carry__3_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_ff_reg\(32),
      I1 => \^count_ff_reg\(33),
      O => \count_ff2_carry__3_i_8_n_0\
    );
\count_ff2_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_ff2_carry__3_n_0\,
      CO(3) => \count_ff2_carry__4_n_0\,
      CO(2) => \count_ff2_carry__4_n_1\,
      CO(1) => \count_ff2_carry__4_n_2\,
      CO(0) => \count_ff2_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \count_ff2_carry__4_i_1_n_0\,
      DI(2) => \count_ff2_carry__4_i_2_n_0\,
      DI(1) => \count_ff2_carry__4_i_3_n_0\,
      DI(0) => \count_ff2_carry__4_i_4_n_0\,
      O(3 downto 0) => \NLW_count_ff2_carry__4_O_UNCONNECTED\(3 downto 0),
      S(3) => \count_ff2_carry__4_i_5_n_0\,
      S(2) => \count_ff2_carry__4_i_6_n_0\,
      S(1) => \count_ff2_carry__4_i_7_n_0\,
      S(0) => \count_ff2_carry__4_i_8_n_0\
    );
\count_ff2_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_ff_reg\(46),
      I1 => \^count_ff_reg\(47),
      O => \count_ff2_carry__4_i_1_n_0\
    );
\count_ff2_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_ff_reg\(44),
      I1 => \^count_ff_reg\(45),
      O => \count_ff2_carry__4_i_2_n_0\
    );
\count_ff2_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_ff_reg\(42),
      I1 => \^count_ff_reg\(43),
      O => \count_ff2_carry__4_i_3_n_0\
    );
\count_ff2_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_ff_reg\(40),
      I1 => \^count_ff_reg\(41),
      O => \count_ff2_carry__4_i_4_n_0\
    );
\count_ff2_carry__4_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_ff_reg\(46),
      I1 => \^count_ff_reg\(47),
      O => \count_ff2_carry__4_i_5_n_0\
    );
\count_ff2_carry__4_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_ff_reg\(44),
      I1 => \^count_ff_reg\(45),
      O => \count_ff2_carry__4_i_6_n_0\
    );
\count_ff2_carry__4_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_ff_reg\(42),
      I1 => \^count_ff_reg\(43),
      O => \count_ff2_carry__4_i_7_n_0\
    );
\count_ff2_carry__4_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_ff_reg\(40),
      I1 => \^count_ff_reg\(41),
      O => \count_ff2_carry__4_i_8_n_0\
    );
\count_ff2_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_ff2_carry__4_n_0\,
      CO(3) => \count_ff2_carry__5_n_0\,
      CO(2) => \count_ff2_carry__5_n_1\,
      CO(1) => \count_ff2_carry__5_n_2\,
      CO(0) => \count_ff2_carry__5_n_3\,
      CYINIT => '0',
      DI(3) => \count_ff2_carry__5_i_1_n_0\,
      DI(2) => \count_ff2_carry__5_i_2_n_0\,
      DI(1) => \count_ff2_carry__5_i_3_n_0\,
      DI(0) => \count_ff2_carry__5_i_4_n_0\,
      O(3 downto 0) => \NLW_count_ff2_carry__5_O_UNCONNECTED\(3 downto 0),
      S(3) => \count_ff2_carry__5_i_5_n_0\,
      S(2) => \count_ff2_carry__5_i_6_n_0\,
      S(1) => \count_ff2_carry__5_i_7_n_0\,
      S(0) => \count_ff2_carry__5_i_8_n_0\
    );
\count_ff2_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_ff_reg\(54),
      I1 => \^count_ff_reg\(55),
      O => \count_ff2_carry__5_i_1_n_0\
    );
\count_ff2_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_ff_reg\(52),
      I1 => \^count_ff_reg\(53),
      O => \count_ff2_carry__5_i_2_n_0\
    );
\count_ff2_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_ff_reg\(50),
      I1 => \^count_ff_reg\(51),
      O => \count_ff2_carry__5_i_3_n_0\
    );
\count_ff2_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_ff_reg\(48),
      I1 => \^count_ff_reg\(49),
      O => \count_ff2_carry__5_i_4_n_0\
    );
\count_ff2_carry__5_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_ff_reg\(54),
      I1 => \^count_ff_reg\(55),
      O => \count_ff2_carry__5_i_5_n_0\
    );
\count_ff2_carry__5_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_ff_reg\(52),
      I1 => \^count_ff_reg\(53),
      O => \count_ff2_carry__5_i_6_n_0\
    );
\count_ff2_carry__5_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_ff_reg\(50),
      I1 => \^count_ff_reg\(51),
      O => \count_ff2_carry__5_i_7_n_0\
    );
\count_ff2_carry__5_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_ff_reg\(48),
      I1 => \^count_ff_reg\(49),
      O => \count_ff2_carry__5_i_8_n_0\
    );
\count_ff2_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_ff2_carry__5_n_0\,
      CO(3) => CO(0),
      CO(2) => \count_ff2_carry__6_n_1\,
      CO(1) => \count_ff2_carry__6_n_2\,
      CO(0) => \count_ff2_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => \count_ff2_carry__6_i_1_n_0\,
      DI(2) => \count_ff2_carry__6_i_2_n_0\,
      DI(1) => \count_ff2_carry__6_i_3_n_0\,
      DI(0) => \count_ff2_carry__6_i_4_n_0\,
      O(3 downto 0) => \NLW_count_ff2_carry__6_O_UNCONNECTED\(3 downto 0),
      S(3) => \count_ff2_carry__6_i_5_n_0\,
      S(2) => \count_ff2_carry__6_i_6_n_0\,
      S(1) => \count_ff2_carry__6_i_7_n_0\,
      S(0) => \count_ff2_carry__6_i_8_n_0\
    );
\count_ff2_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_ff_reg\(62),
      I1 => \^count_ff_reg\(63),
      O => \count_ff2_carry__6_i_1_n_0\
    );
\count_ff2_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_ff_reg\(60),
      I1 => \^count_ff_reg\(61),
      O => \count_ff2_carry__6_i_2_n_0\
    );
\count_ff2_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_ff_reg\(58),
      I1 => \^count_ff_reg\(59),
      O => \count_ff2_carry__6_i_3_n_0\
    );
\count_ff2_carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_ff_reg\(56),
      I1 => \^count_ff_reg\(57),
      O => \count_ff2_carry__6_i_4_n_0\
    );
\count_ff2_carry__6_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_ff_reg\(62),
      I1 => \^count_ff_reg\(63),
      O => \count_ff2_carry__6_i_5_n_0\
    );
\count_ff2_carry__6_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_ff_reg\(60),
      I1 => \^count_ff_reg\(61),
      O => \count_ff2_carry__6_i_6_n_0\
    );
\count_ff2_carry__6_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_ff_reg\(58),
      I1 => \^count_ff_reg\(59),
      O => \count_ff2_carry__6_i_7_n_0\
    );
\count_ff2_carry__6_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_ff_reg\(56),
      I1 => \^count_ff_reg\(57),
      O => \count_ff2_carry__6_i_8_n_0\
    );
count_ff2_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_ff_reg\(6),
      I1 => \^count_ff_reg\(7),
      O => count_ff2_carry_i_1_n_0
    );
count_ff2_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_ff_reg\(4),
      I1 => \^count_ff_reg\(5),
      O => count_ff2_carry_i_2_n_0
    );
count_ff2_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_ff_reg\(2),
      I1 => \^count_ff_reg\(3),
      O => count_ff2_carry_i_3_n_0
    );
count_ff2_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_ff_reg\(0),
      I1 => \^count_ff_reg\(1),
      O => count_ff2_carry_i_4_n_0
    );
count_ff2_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_ff_reg\(6),
      I1 => \^count_ff_reg\(7),
      O => count_ff2_carry_i_5_n_0
    );
count_ff2_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_ff_reg\(4),
      I1 => \^count_ff_reg\(5),
      O => count_ff2_carry_i_6_n_0
    );
count_ff2_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_ff_reg\(2),
      I1 => \^count_ff_reg\(3),
      O => count_ff2_carry_i_7_n_0
    );
count_ff2_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_ff_reg\(0),
      I1 => \^count_ff_reg\(1),
      O => count_ff2_carry_i_8_n_0
    );
\count_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => O(0),
      Q => \^count_ff_reg\(0),
      R => '0'
    );
\count_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[11]_0\(2),
      Q => \^count_ff_reg\(10),
      R => '0'
    );
\count_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[11]_0\(3),
      Q => \^count_ff_reg\(11),
      R => '0'
    );
\count_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[15]_0\(0),
      Q => \^count_ff_reg\(12),
      R => '0'
    );
\count_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[15]_0\(1),
      Q => \^count_ff_reg\(13),
      R => '0'
    );
\count_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[15]_0\(2),
      Q => \^count_ff_reg\(14),
      R => '0'
    );
\count_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[15]_0\(3),
      Q => \^count_ff_reg\(15),
      R => '0'
    );
\count_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[19]_0\(0),
      Q => \^count_ff_reg\(16),
      R => '0'
    );
\count_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[19]_0\(1),
      Q => \^count_ff_reg\(17),
      R => '0'
    );
\count_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[19]_0\(2),
      Q => \^count_ff_reg\(18),
      R => '0'
    );
\count_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[19]_0\(3),
      Q => \^count_ff_reg\(19),
      R => '0'
    );
\count_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => O(1),
      Q => \^count_ff_reg\(1),
      R => '0'
    );
\count_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[23]_0\(0),
      Q => \^count_ff_reg\(20),
      R => '0'
    );
\count_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[23]_0\(1),
      Q => \^count_ff_reg\(21),
      R => '0'
    );
\count_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[23]_0\(2),
      Q => \^count_ff_reg\(22),
      R => '0'
    );
\count_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[23]_0\(3),
      Q => \^count_ff_reg\(23),
      R => '0'
    );
\count_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[27]_0\(0),
      Q => \^count_ff_reg\(24),
      R => '0'
    );
\count_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[27]_0\(1),
      Q => \^count_ff_reg\(25),
      R => '0'
    );
\count_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[27]_0\(2),
      Q => \^count_ff_reg\(26),
      R => '0'
    );
\count_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[27]_0\(3),
      Q => \^count_ff_reg\(27),
      R => '0'
    );
\count_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[31]_0\(0),
      Q => \^count_ff_reg\(28),
      R => '0'
    );
\count_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[31]_0\(1),
      Q => \^count_ff_reg\(29),
      R => '0'
    );
\count_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => O(2),
      Q => \^count_ff_reg\(2),
      R => '0'
    );
\count_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[31]_0\(2),
      Q => \^count_ff_reg\(30),
      R => '0'
    );
\count_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[31]_0\(3),
      Q => \^count_ff_reg\(31),
      R => '0'
    );
\count_ff_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[35]_0\(0),
      Q => \^count_ff_reg\(32),
      R => '0'
    );
\count_ff_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[35]_0\(1),
      Q => \^count_ff_reg\(33),
      R => '0'
    );
\count_ff_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[35]_0\(2),
      Q => \^count_ff_reg\(34),
      R => '0'
    );
\count_ff_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[35]_0\(3),
      Q => \^count_ff_reg\(35),
      R => '0'
    );
\count_ff_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[39]_0\(0),
      Q => \^count_ff_reg\(36),
      R => '0'
    );
\count_ff_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[39]_0\(1),
      Q => \^count_ff_reg\(37),
      R => '0'
    );
\count_ff_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[39]_0\(2),
      Q => \^count_ff_reg\(38),
      R => '0'
    );
\count_ff_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[39]_0\(3),
      Q => \^count_ff_reg\(39),
      R => '0'
    );
\count_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => O(3),
      Q => \^count_ff_reg\(3),
      R => '0'
    );
\count_ff_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[43]_0\(0),
      Q => \^count_ff_reg\(40),
      R => '0'
    );
\count_ff_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[43]_0\(1),
      Q => \^count_ff_reg\(41),
      R => '0'
    );
\count_ff_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[43]_0\(2),
      Q => \^count_ff_reg\(42),
      R => '0'
    );
\count_ff_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[43]_0\(3),
      Q => \^count_ff_reg\(43),
      R => '0'
    );
\count_ff_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[47]_0\(0),
      Q => \^count_ff_reg\(44),
      R => '0'
    );
\count_ff_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[47]_0\(1),
      Q => \^count_ff_reg\(45),
      R => '0'
    );
\count_ff_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[47]_0\(2),
      Q => \^count_ff_reg\(46),
      R => '0'
    );
\count_ff_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[47]_0\(3),
      Q => \^count_ff_reg\(47),
      R => '0'
    );
\count_ff_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[51]_0\(0),
      Q => \^count_ff_reg\(48),
      R => '0'
    );
\count_ff_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[51]_0\(1),
      Q => \^count_ff_reg\(49),
      R => '0'
    );
\count_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[7]_0\(0),
      Q => \^count_ff_reg\(4),
      R => '0'
    );
\count_ff_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[51]_0\(2),
      Q => \^count_ff_reg\(50),
      R => '0'
    );
\count_ff_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[51]_0\(3),
      Q => \^count_ff_reg\(51),
      R => '0'
    );
\count_ff_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[55]_0\(0),
      Q => \^count_ff_reg\(52),
      R => '0'
    );
\count_ff_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[55]_0\(1),
      Q => \^count_ff_reg\(53),
      R => '0'
    );
\count_ff_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[55]_0\(2),
      Q => \^count_ff_reg\(54),
      R => '0'
    );
\count_ff_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[55]_0\(3),
      Q => \^count_ff_reg\(55),
      R => '0'
    );
\count_ff_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[59]_0\(0),
      Q => \^count_ff_reg\(56),
      R => '0'
    );
\count_ff_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[59]_0\(1),
      Q => \^count_ff_reg\(57),
      R => '0'
    );
\count_ff_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[59]_0\(2),
      Q => \^count_ff_reg\(58),
      R => '0'
    );
\count_ff_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[59]_0\(3),
      Q => \^count_ff_reg\(59),
      R => '0'
    );
\count_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[7]_0\(1),
      Q => \^count_ff_reg\(5),
      R => '0'
    );
\count_ff_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[63]_1\(0),
      Q => \^count_ff_reg\(60),
      R => '0'
    );
\count_ff_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[63]_1\(1),
      Q => \^count_ff_reg\(61),
      R => '0'
    );
\count_ff_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[63]_1\(2),
      Q => \^count_ff_reg\(62),
      R => '0'
    );
\count_ff_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[63]_1\(3),
      Q => \^count_ff_reg\(63),
      R => '0'
    );
\count_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[7]_0\(2),
      Q => \^count_ff_reg\(6),
      R => '0'
    );
\count_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[7]_0\(3),
      Q => \^count_ff_reg\(7),
      R => '0'
    );
\count_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[11]_0\(0),
      Q => \^count_ff_reg\(8),
      R => '0'
    );
\count_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \count_ff_reg[63]_0\,
      D => \count_ff_reg[11]_0\(1),
      Q => \^count_ff_reg\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_clk_gate_top_0_0_clk_router is
  port (
    clk_en : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_mode : out STD_LOGIC;
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \clk_count_ff_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \clk_count_ff_reg[11]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \clk_count_ff_reg[15]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \clk_count_ff_reg[19]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \clk_count_ff_reg[23]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \clk_count_ff_reg[27]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \clk_count_ff_reg[31]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \clk_count_ff_reg[35]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \clk_count_ff_reg[39]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \clk_count_ff_reg[43]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \clk_count_ff_reg[47]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \clk_count_ff_reg[51]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \clk_count_ff_reg[55]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \clk_count_ff_reg[59]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \clk_count_ff_reg[62]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_w_count_ff_reg_0 : out STD_LOGIC;
    clk_enabled_o : out STD_LOGIC;
    clk_w_count_ff_reg_1 : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    clk_en_ff_reg_0 : in STD_LOGIC;
    clk_mode_ff_reg_0 : in STD_LOGIC;
    count_ff_reg : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_ARESETN : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_clk_gate_top_0_0_clk_router : entity is "clk_router";
end design_1_clk_gate_top_0_0_clk_router;

architecture STRUCTURE of design_1_clk_gate_top_0_0_clk_router is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal clk_count_ff : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^clk_en\ : STD_LOGIC;
  signal \^clk_mode\ : STD_LOGIC;
  signal clk_w_count : STD_LOGIC;
  signal \count_ff[0]_i_10_n_0\ : STD_LOGIC;
  signal \count_ff[0]_i_3_n_0\ : STD_LOGIC;
  signal \count_ff[0]_i_4_n_0\ : STD_LOGIC;
  signal \count_ff[0]_i_5_n_0\ : STD_LOGIC;
  signal \count_ff[0]_i_6_n_0\ : STD_LOGIC;
  signal \count_ff[0]_i_7_n_0\ : STD_LOGIC;
  signal \count_ff[0]_i_8_n_0\ : STD_LOGIC;
  signal \count_ff[0]_i_9_n_0\ : STD_LOGIC;
  signal \count_ff[12]_i_2_n_0\ : STD_LOGIC;
  signal \count_ff[12]_i_3_n_0\ : STD_LOGIC;
  signal \count_ff[12]_i_4_n_0\ : STD_LOGIC;
  signal \count_ff[12]_i_5_n_0\ : STD_LOGIC;
  signal \count_ff[12]_i_6_n_0\ : STD_LOGIC;
  signal \count_ff[12]_i_7_n_0\ : STD_LOGIC;
  signal \count_ff[12]_i_8_n_0\ : STD_LOGIC;
  signal \count_ff[12]_i_9_n_0\ : STD_LOGIC;
  signal \count_ff[16]_i_2_n_0\ : STD_LOGIC;
  signal \count_ff[16]_i_3_n_0\ : STD_LOGIC;
  signal \count_ff[16]_i_4_n_0\ : STD_LOGIC;
  signal \count_ff[16]_i_5_n_0\ : STD_LOGIC;
  signal \count_ff[16]_i_6_n_0\ : STD_LOGIC;
  signal \count_ff[16]_i_7_n_0\ : STD_LOGIC;
  signal \count_ff[16]_i_8_n_0\ : STD_LOGIC;
  signal \count_ff[16]_i_9_n_0\ : STD_LOGIC;
  signal \count_ff[20]_i_2_n_0\ : STD_LOGIC;
  signal \count_ff[20]_i_3_n_0\ : STD_LOGIC;
  signal \count_ff[20]_i_4_n_0\ : STD_LOGIC;
  signal \count_ff[20]_i_5_n_0\ : STD_LOGIC;
  signal \count_ff[20]_i_6_n_0\ : STD_LOGIC;
  signal \count_ff[20]_i_7_n_0\ : STD_LOGIC;
  signal \count_ff[20]_i_8_n_0\ : STD_LOGIC;
  signal \count_ff[20]_i_9_n_0\ : STD_LOGIC;
  signal \count_ff[24]_i_2_n_0\ : STD_LOGIC;
  signal \count_ff[24]_i_3_n_0\ : STD_LOGIC;
  signal \count_ff[24]_i_4_n_0\ : STD_LOGIC;
  signal \count_ff[24]_i_5_n_0\ : STD_LOGIC;
  signal \count_ff[24]_i_6_n_0\ : STD_LOGIC;
  signal \count_ff[24]_i_7_n_0\ : STD_LOGIC;
  signal \count_ff[24]_i_8_n_0\ : STD_LOGIC;
  signal \count_ff[24]_i_9_n_0\ : STD_LOGIC;
  signal \count_ff[28]_i_2_n_0\ : STD_LOGIC;
  signal \count_ff[28]_i_3_n_0\ : STD_LOGIC;
  signal \count_ff[28]_i_4_n_0\ : STD_LOGIC;
  signal \count_ff[28]_i_5_n_0\ : STD_LOGIC;
  signal \count_ff[28]_i_6_n_0\ : STD_LOGIC;
  signal \count_ff[28]_i_7_n_0\ : STD_LOGIC;
  signal \count_ff[28]_i_8_n_0\ : STD_LOGIC;
  signal \count_ff[28]_i_9_n_0\ : STD_LOGIC;
  signal \count_ff[32]_i_2_n_0\ : STD_LOGIC;
  signal \count_ff[32]_i_3_n_0\ : STD_LOGIC;
  signal \count_ff[32]_i_4_n_0\ : STD_LOGIC;
  signal \count_ff[32]_i_5_n_0\ : STD_LOGIC;
  signal \count_ff[32]_i_6_n_0\ : STD_LOGIC;
  signal \count_ff[32]_i_7_n_0\ : STD_LOGIC;
  signal \count_ff[32]_i_8_n_0\ : STD_LOGIC;
  signal \count_ff[32]_i_9_n_0\ : STD_LOGIC;
  signal \count_ff[36]_i_2_n_0\ : STD_LOGIC;
  signal \count_ff[36]_i_3_n_0\ : STD_LOGIC;
  signal \count_ff[36]_i_4_n_0\ : STD_LOGIC;
  signal \count_ff[36]_i_5_n_0\ : STD_LOGIC;
  signal \count_ff[36]_i_6_n_0\ : STD_LOGIC;
  signal \count_ff[36]_i_7_n_0\ : STD_LOGIC;
  signal \count_ff[36]_i_8_n_0\ : STD_LOGIC;
  signal \count_ff[36]_i_9_n_0\ : STD_LOGIC;
  signal \count_ff[40]_i_2_n_0\ : STD_LOGIC;
  signal \count_ff[40]_i_3_n_0\ : STD_LOGIC;
  signal \count_ff[40]_i_4_n_0\ : STD_LOGIC;
  signal \count_ff[40]_i_5_n_0\ : STD_LOGIC;
  signal \count_ff[40]_i_6_n_0\ : STD_LOGIC;
  signal \count_ff[40]_i_7_n_0\ : STD_LOGIC;
  signal \count_ff[40]_i_8_n_0\ : STD_LOGIC;
  signal \count_ff[40]_i_9_n_0\ : STD_LOGIC;
  signal \count_ff[44]_i_2_n_0\ : STD_LOGIC;
  signal \count_ff[44]_i_3_n_0\ : STD_LOGIC;
  signal \count_ff[44]_i_4_n_0\ : STD_LOGIC;
  signal \count_ff[44]_i_5_n_0\ : STD_LOGIC;
  signal \count_ff[44]_i_6_n_0\ : STD_LOGIC;
  signal \count_ff[44]_i_7_n_0\ : STD_LOGIC;
  signal \count_ff[44]_i_8_n_0\ : STD_LOGIC;
  signal \count_ff[44]_i_9_n_0\ : STD_LOGIC;
  signal \count_ff[48]_i_2_n_0\ : STD_LOGIC;
  signal \count_ff[48]_i_3_n_0\ : STD_LOGIC;
  signal \count_ff[48]_i_4_n_0\ : STD_LOGIC;
  signal \count_ff[48]_i_5_n_0\ : STD_LOGIC;
  signal \count_ff[48]_i_6_n_0\ : STD_LOGIC;
  signal \count_ff[48]_i_7_n_0\ : STD_LOGIC;
  signal \count_ff[48]_i_8_n_0\ : STD_LOGIC;
  signal \count_ff[48]_i_9_n_0\ : STD_LOGIC;
  signal \count_ff[4]_i_2_n_0\ : STD_LOGIC;
  signal \count_ff[4]_i_3_n_0\ : STD_LOGIC;
  signal \count_ff[4]_i_4_n_0\ : STD_LOGIC;
  signal \count_ff[4]_i_5_n_0\ : STD_LOGIC;
  signal \count_ff[4]_i_6_n_0\ : STD_LOGIC;
  signal \count_ff[4]_i_7_n_0\ : STD_LOGIC;
  signal \count_ff[4]_i_8_n_0\ : STD_LOGIC;
  signal \count_ff[4]_i_9_n_0\ : STD_LOGIC;
  signal \count_ff[52]_i_2_n_0\ : STD_LOGIC;
  signal \count_ff[52]_i_3_n_0\ : STD_LOGIC;
  signal \count_ff[52]_i_4_n_0\ : STD_LOGIC;
  signal \count_ff[52]_i_5_n_0\ : STD_LOGIC;
  signal \count_ff[52]_i_6_n_0\ : STD_LOGIC;
  signal \count_ff[52]_i_7_n_0\ : STD_LOGIC;
  signal \count_ff[52]_i_8_n_0\ : STD_LOGIC;
  signal \count_ff[52]_i_9_n_0\ : STD_LOGIC;
  signal \count_ff[56]_i_2_n_0\ : STD_LOGIC;
  signal \count_ff[56]_i_3_n_0\ : STD_LOGIC;
  signal \count_ff[56]_i_4_n_0\ : STD_LOGIC;
  signal \count_ff[56]_i_5_n_0\ : STD_LOGIC;
  signal \count_ff[56]_i_6_n_0\ : STD_LOGIC;
  signal \count_ff[56]_i_7_n_0\ : STD_LOGIC;
  signal \count_ff[56]_i_8_n_0\ : STD_LOGIC;
  signal \count_ff[56]_i_9_n_0\ : STD_LOGIC;
  signal \count_ff[60]_i_2_n_0\ : STD_LOGIC;
  signal \count_ff[60]_i_3_n_0\ : STD_LOGIC;
  signal \count_ff[60]_i_4_n_0\ : STD_LOGIC;
  signal \count_ff[60]_i_5_n_0\ : STD_LOGIC;
  signal \count_ff[60]_i_6_n_0\ : STD_LOGIC;
  signal \count_ff[60]_i_7_n_0\ : STD_LOGIC;
  signal \count_ff[60]_i_8_n_0\ : STD_LOGIC;
  signal \count_ff[8]_i_2_n_0\ : STD_LOGIC;
  signal \count_ff[8]_i_3_n_0\ : STD_LOGIC;
  signal \count_ff[8]_i_4_n_0\ : STD_LOGIC;
  signal \count_ff[8]_i_5_n_0\ : STD_LOGIC;
  signal \count_ff[8]_i_6_n_0\ : STD_LOGIC;
  signal \count_ff[8]_i_7_n_0\ : STD_LOGIC;
  signal \count_ff[8]_i_8_n_0\ : STD_LOGIC;
  signal \count_ff[8]_i_9_n_0\ : STD_LOGIC;
  signal \count_ff_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_ff_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \count_ff_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \count_ff_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \count_ff_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_ff_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_ff_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_ff_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_ff_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_ff_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_ff_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_ff_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_ff_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \count_ff_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \count_ff_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \count_ff_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \count_ff_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \count_ff_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \count_ff_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \count_ff_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \count_ff_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \count_ff_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \count_ff_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \count_ff_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \count_ff_reg[32]_i_1_n_0\ : STD_LOGIC;
  signal \count_ff_reg[32]_i_1_n_1\ : STD_LOGIC;
  signal \count_ff_reg[32]_i_1_n_2\ : STD_LOGIC;
  signal \count_ff_reg[32]_i_1_n_3\ : STD_LOGIC;
  signal \count_ff_reg[36]_i_1_n_0\ : STD_LOGIC;
  signal \count_ff_reg[36]_i_1_n_1\ : STD_LOGIC;
  signal \count_ff_reg[36]_i_1_n_2\ : STD_LOGIC;
  signal \count_ff_reg[36]_i_1_n_3\ : STD_LOGIC;
  signal \count_ff_reg[40]_i_1_n_0\ : STD_LOGIC;
  signal \count_ff_reg[40]_i_1_n_1\ : STD_LOGIC;
  signal \count_ff_reg[40]_i_1_n_2\ : STD_LOGIC;
  signal \count_ff_reg[40]_i_1_n_3\ : STD_LOGIC;
  signal \count_ff_reg[44]_i_1_n_0\ : STD_LOGIC;
  signal \count_ff_reg[44]_i_1_n_1\ : STD_LOGIC;
  signal \count_ff_reg[44]_i_1_n_2\ : STD_LOGIC;
  signal \count_ff_reg[44]_i_1_n_3\ : STD_LOGIC;
  signal \count_ff_reg[48]_i_1_n_0\ : STD_LOGIC;
  signal \count_ff_reg[48]_i_1_n_1\ : STD_LOGIC;
  signal \count_ff_reg[48]_i_1_n_2\ : STD_LOGIC;
  signal \count_ff_reg[48]_i_1_n_3\ : STD_LOGIC;
  signal \count_ff_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_ff_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_ff_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_ff_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_ff_reg[52]_i_1_n_0\ : STD_LOGIC;
  signal \count_ff_reg[52]_i_1_n_1\ : STD_LOGIC;
  signal \count_ff_reg[52]_i_1_n_2\ : STD_LOGIC;
  signal \count_ff_reg[52]_i_1_n_3\ : STD_LOGIC;
  signal \count_ff_reg[56]_i_1_n_0\ : STD_LOGIC;
  signal \count_ff_reg[56]_i_1_n_1\ : STD_LOGIC;
  signal \count_ff_reg[56]_i_1_n_2\ : STD_LOGIC;
  signal \count_ff_reg[56]_i_1_n_3\ : STD_LOGIC;
  signal \count_ff_reg[60]_i_1_n_1\ : STD_LOGIC;
  signal \count_ff_reg[60]_i_1_n_2\ : STD_LOGIC;
  signal \count_ff_reg[60]_i_1_n_3\ : STD_LOGIC;
  signal \count_ff_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_ff_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_ff_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_ff_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \NLW_count_ff_reg[60]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of clk_enabled_o_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count_ff[0]_i_1\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_ff_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \count_ff_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_ff_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_ff_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_ff_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_ff_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_ff_reg[32]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_ff_reg[36]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_ff_reg[40]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_ff_reg[44]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_ff_reg[48]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_ff_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_ff_reg[52]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_ff_reg[56]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_ff_reg[60]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_ff_reg[8]_i_1\ : label is 11;
begin
  SR(0) <= \^sr\(0);
  clk_en <= \^clk_en\;
  clk_mode <= \^clk_mode\;
\clk_count_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => Q(0),
      Q => clk_count_ff(0),
      R => \^sr\(0)
    );
\clk_count_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => Q(10),
      Q => clk_count_ff(10),
      R => \^sr\(0)
    );
\clk_count_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => Q(11),
      Q => clk_count_ff(11),
      R => \^sr\(0)
    );
\clk_count_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => Q(12),
      Q => clk_count_ff(12),
      R => \^sr\(0)
    );
\clk_count_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => Q(13),
      Q => clk_count_ff(13),
      R => \^sr\(0)
    );
\clk_count_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => Q(14),
      Q => clk_count_ff(14),
      R => \^sr\(0)
    );
\clk_count_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => Q(15),
      Q => clk_count_ff(15),
      R => \^sr\(0)
    );
\clk_count_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => Q(16),
      Q => clk_count_ff(16),
      R => \^sr\(0)
    );
\clk_count_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => Q(17),
      Q => clk_count_ff(17),
      R => \^sr\(0)
    );
\clk_count_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => Q(18),
      Q => clk_count_ff(18),
      R => \^sr\(0)
    );
\clk_count_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => Q(19),
      Q => clk_count_ff(19),
      R => \^sr\(0)
    );
\clk_count_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => Q(1),
      Q => clk_count_ff(1),
      R => \^sr\(0)
    );
\clk_count_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => Q(20),
      Q => clk_count_ff(20),
      R => \^sr\(0)
    );
\clk_count_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => Q(21),
      Q => clk_count_ff(21),
      R => \^sr\(0)
    );
\clk_count_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => Q(22),
      Q => clk_count_ff(22),
      R => \^sr\(0)
    );
\clk_count_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => Q(23),
      Q => clk_count_ff(23),
      R => \^sr\(0)
    );
\clk_count_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => Q(24),
      Q => clk_count_ff(24),
      R => \^sr\(0)
    );
\clk_count_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => Q(25),
      Q => clk_count_ff(25),
      R => \^sr\(0)
    );
\clk_count_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => Q(26),
      Q => clk_count_ff(26),
      R => \^sr\(0)
    );
\clk_count_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => Q(27),
      Q => clk_count_ff(27),
      R => \^sr\(0)
    );
\clk_count_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => Q(28),
      Q => clk_count_ff(28),
      R => \^sr\(0)
    );
\clk_count_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => Q(29),
      Q => clk_count_ff(29),
      R => \^sr\(0)
    );
\clk_count_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => Q(2),
      Q => clk_count_ff(2),
      R => \^sr\(0)
    );
\clk_count_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => Q(30),
      Q => clk_count_ff(30),
      R => \^sr\(0)
    );
\clk_count_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => Q(31),
      Q => clk_count_ff(31),
      R => \^sr\(0)
    );
\clk_count_ff_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(1),
      D => Q(0),
      Q => clk_count_ff(32),
      R => \^sr\(0)
    );
\clk_count_ff_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(1),
      D => Q(1),
      Q => clk_count_ff(33),
      R => \^sr\(0)
    );
\clk_count_ff_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(1),
      D => Q(2),
      Q => clk_count_ff(34),
      R => \^sr\(0)
    );
\clk_count_ff_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(1),
      D => Q(3),
      Q => clk_count_ff(35),
      R => \^sr\(0)
    );
\clk_count_ff_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(1),
      D => Q(4),
      Q => clk_count_ff(36),
      R => \^sr\(0)
    );
\clk_count_ff_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(1),
      D => Q(5),
      Q => clk_count_ff(37),
      R => \^sr\(0)
    );
\clk_count_ff_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(1),
      D => Q(6),
      Q => clk_count_ff(38),
      R => \^sr\(0)
    );
\clk_count_ff_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(1),
      D => Q(7),
      Q => clk_count_ff(39),
      R => \^sr\(0)
    );
\clk_count_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => Q(3),
      Q => clk_count_ff(3),
      R => \^sr\(0)
    );
\clk_count_ff_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(1),
      D => Q(8),
      Q => clk_count_ff(40),
      R => \^sr\(0)
    );
\clk_count_ff_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(1),
      D => Q(9),
      Q => clk_count_ff(41),
      R => \^sr\(0)
    );
\clk_count_ff_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(1),
      D => Q(10),
      Q => clk_count_ff(42),
      R => \^sr\(0)
    );
\clk_count_ff_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(1),
      D => Q(11),
      Q => clk_count_ff(43),
      R => \^sr\(0)
    );
\clk_count_ff_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(1),
      D => Q(12),
      Q => clk_count_ff(44),
      R => \^sr\(0)
    );
\clk_count_ff_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(1),
      D => Q(13),
      Q => clk_count_ff(45),
      R => \^sr\(0)
    );
\clk_count_ff_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(1),
      D => Q(14),
      Q => clk_count_ff(46),
      R => \^sr\(0)
    );
\clk_count_ff_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(1),
      D => Q(15),
      Q => clk_count_ff(47),
      R => \^sr\(0)
    );
\clk_count_ff_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(1),
      D => Q(16),
      Q => clk_count_ff(48),
      R => \^sr\(0)
    );
\clk_count_ff_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(1),
      D => Q(17),
      Q => clk_count_ff(49),
      R => \^sr\(0)
    );
\clk_count_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => Q(4),
      Q => clk_count_ff(4),
      R => \^sr\(0)
    );
\clk_count_ff_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(1),
      D => Q(18),
      Q => clk_count_ff(50),
      R => \^sr\(0)
    );
\clk_count_ff_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(1),
      D => Q(19),
      Q => clk_count_ff(51),
      R => \^sr\(0)
    );
\clk_count_ff_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(1),
      D => Q(20),
      Q => clk_count_ff(52),
      R => \^sr\(0)
    );
\clk_count_ff_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(1),
      D => Q(21),
      Q => clk_count_ff(53),
      R => \^sr\(0)
    );
\clk_count_ff_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(1),
      D => Q(22),
      Q => clk_count_ff(54),
      R => \^sr\(0)
    );
\clk_count_ff_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(1),
      D => Q(23),
      Q => clk_count_ff(55),
      R => \^sr\(0)
    );
\clk_count_ff_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(1),
      D => Q(24),
      Q => clk_count_ff(56),
      R => \^sr\(0)
    );
\clk_count_ff_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(1),
      D => Q(25),
      Q => clk_count_ff(57),
      R => \^sr\(0)
    );
\clk_count_ff_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(1),
      D => Q(26),
      Q => clk_count_ff(58),
      R => \^sr\(0)
    );
\clk_count_ff_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(1),
      D => Q(27),
      Q => clk_count_ff(59),
      R => \^sr\(0)
    );
\clk_count_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => Q(5),
      Q => clk_count_ff(5),
      R => \^sr\(0)
    );
\clk_count_ff_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(1),
      D => Q(28),
      Q => clk_count_ff(60),
      R => \^sr\(0)
    );
\clk_count_ff_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(1),
      D => Q(29),
      Q => clk_count_ff(61),
      R => \^sr\(0)
    );
\clk_count_ff_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(1),
      D => Q(30),
      Q => clk_count_ff(62),
      R => \^sr\(0)
    );
\clk_count_ff_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(1),
      D => Q(31),
      Q => clk_count_ff(63),
      R => \^sr\(0)
    );
\clk_count_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => Q(6),
      Q => clk_count_ff(6),
      R => \^sr\(0)
    );
\clk_count_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => Q(7),
      Q => clk_count_ff(7),
      R => \^sr\(0)
    );
\clk_count_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => Q(8),
      Q => clk_count_ff(8),
      R => \^sr\(0)
    );
\clk_count_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => Q(9),
      Q => clk_count_ff(9),
      R => \^sr\(0)
    );
clk_en_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => clk_en_ff_reg_0,
      Q => \^clk_en\,
      R => \^sr\(0)
    );
clk_enabled_o_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => CO(0),
      I1 => \^clk_mode\,
      I2 => \^clk_en\,
      O => clk_enabled_o
    );
clk_mode_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => clk_mode_ff_reg_0,
      Q => \^clk_mode\,
      R => \^sr\(0)
    );
clk_w_count_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => clk_w_count_ff_reg_1,
      Q => clk_w_count,
      R => '0'
    );
\count_ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => clk_w_count,
      I1 => \^clk_mode\,
      I2 => \^clk_en\,
      I3 => CO(0),
      O => clk_w_count_ff_reg_0
    );
\count_ff[0]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(0),
      I1 => clk_count_ff(0),
      I2 => clk_w_count,
      O => \count_ff[0]_i_10_n_0\
    );
\count_ff[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(3),
      I1 => clk_w_count,
      I2 => count_ff_reg(3),
      O => \count_ff[0]_i_3_n_0\
    );
\count_ff[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(2),
      I1 => clk_w_count,
      I2 => count_ff_reg(2),
      O => \count_ff[0]_i_4_n_0\
    );
\count_ff[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(1),
      I1 => clk_w_count,
      I2 => count_ff_reg(1),
      O => \count_ff[0]_i_5_n_0\
    );
\count_ff[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(0),
      I1 => clk_w_count,
      I2 => count_ff_reg(0),
      O => \count_ff[0]_i_6_n_0\
    );
\count_ff[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(3),
      I1 => clk_count_ff(3),
      I2 => clk_w_count,
      O => \count_ff[0]_i_7_n_0\
    );
\count_ff[0]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(2),
      I1 => clk_count_ff(2),
      I2 => clk_w_count,
      O => \count_ff[0]_i_8_n_0\
    );
\count_ff[0]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(1),
      I1 => clk_count_ff(1),
      I2 => clk_w_count,
      O => \count_ff[0]_i_9_n_0\
    );
\count_ff[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(15),
      I1 => clk_w_count,
      I2 => count_ff_reg(15),
      O => \count_ff[12]_i_2_n_0\
    );
\count_ff[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(14),
      I1 => clk_w_count,
      I2 => count_ff_reg(14),
      O => \count_ff[12]_i_3_n_0\
    );
\count_ff[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(13),
      I1 => clk_w_count,
      I2 => count_ff_reg(13),
      O => \count_ff[12]_i_4_n_0\
    );
\count_ff[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(12),
      I1 => clk_w_count,
      I2 => count_ff_reg(12),
      O => \count_ff[12]_i_5_n_0\
    );
\count_ff[12]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(15),
      I1 => clk_count_ff(15),
      I2 => clk_w_count,
      O => \count_ff[12]_i_6_n_0\
    );
\count_ff[12]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(14),
      I1 => clk_count_ff(14),
      I2 => clk_w_count,
      O => \count_ff[12]_i_7_n_0\
    );
\count_ff[12]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(13),
      I1 => clk_count_ff(13),
      I2 => clk_w_count,
      O => \count_ff[12]_i_8_n_0\
    );
\count_ff[12]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(12),
      I1 => clk_count_ff(12),
      I2 => clk_w_count,
      O => \count_ff[12]_i_9_n_0\
    );
\count_ff[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(19),
      I1 => clk_w_count,
      I2 => count_ff_reg(19),
      O => \count_ff[16]_i_2_n_0\
    );
\count_ff[16]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(18),
      I1 => clk_w_count,
      I2 => count_ff_reg(18),
      O => \count_ff[16]_i_3_n_0\
    );
\count_ff[16]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(17),
      I1 => clk_w_count,
      I2 => count_ff_reg(17),
      O => \count_ff[16]_i_4_n_0\
    );
\count_ff[16]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(16),
      I1 => clk_w_count,
      I2 => count_ff_reg(16),
      O => \count_ff[16]_i_5_n_0\
    );
\count_ff[16]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(19),
      I1 => clk_count_ff(19),
      I2 => clk_w_count,
      O => \count_ff[16]_i_6_n_0\
    );
\count_ff[16]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(18),
      I1 => clk_count_ff(18),
      I2 => clk_w_count,
      O => \count_ff[16]_i_7_n_0\
    );
\count_ff[16]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(17),
      I1 => clk_count_ff(17),
      I2 => clk_w_count,
      O => \count_ff[16]_i_8_n_0\
    );
\count_ff[16]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(16),
      I1 => clk_count_ff(16),
      I2 => clk_w_count,
      O => \count_ff[16]_i_9_n_0\
    );
\count_ff[20]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(23),
      I1 => clk_w_count,
      I2 => count_ff_reg(23),
      O => \count_ff[20]_i_2_n_0\
    );
\count_ff[20]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(22),
      I1 => clk_w_count,
      I2 => count_ff_reg(22),
      O => \count_ff[20]_i_3_n_0\
    );
\count_ff[20]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(21),
      I1 => clk_w_count,
      I2 => count_ff_reg(21),
      O => \count_ff[20]_i_4_n_0\
    );
\count_ff[20]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(20),
      I1 => clk_w_count,
      I2 => count_ff_reg(20),
      O => \count_ff[20]_i_5_n_0\
    );
\count_ff[20]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(23),
      I1 => clk_count_ff(23),
      I2 => clk_w_count,
      O => \count_ff[20]_i_6_n_0\
    );
\count_ff[20]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(22),
      I1 => clk_count_ff(22),
      I2 => clk_w_count,
      O => \count_ff[20]_i_7_n_0\
    );
\count_ff[20]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(21),
      I1 => clk_count_ff(21),
      I2 => clk_w_count,
      O => \count_ff[20]_i_8_n_0\
    );
\count_ff[20]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(20),
      I1 => clk_count_ff(20),
      I2 => clk_w_count,
      O => \count_ff[20]_i_9_n_0\
    );
\count_ff[24]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(27),
      I1 => clk_w_count,
      I2 => count_ff_reg(27),
      O => \count_ff[24]_i_2_n_0\
    );
\count_ff[24]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(26),
      I1 => clk_w_count,
      I2 => count_ff_reg(26),
      O => \count_ff[24]_i_3_n_0\
    );
\count_ff[24]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(25),
      I1 => clk_w_count,
      I2 => count_ff_reg(25),
      O => \count_ff[24]_i_4_n_0\
    );
\count_ff[24]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(24),
      I1 => clk_w_count,
      I2 => count_ff_reg(24),
      O => \count_ff[24]_i_5_n_0\
    );
\count_ff[24]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(27),
      I1 => clk_count_ff(27),
      I2 => clk_w_count,
      O => \count_ff[24]_i_6_n_0\
    );
\count_ff[24]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(26),
      I1 => clk_count_ff(26),
      I2 => clk_w_count,
      O => \count_ff[24]_i_7_n_0\
    );
\count_ff[24]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(25),
      I1 => clk_count_ff(25),
      I2 => clk_w_count,
      O => \count_ff[24]_i_8_n_0\
    );
\count_ff[24]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(24),
      I1 => clk_count_ff(24),
      I2 => clk_w_count,
      O => \count_ff[24]_i_9_n_0\
    );
\count_ff[28]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(31),
      I1 => clk_w_count,
      I2 => count_ff_reg(31),
      O => \count_ff[28]_i_2_n_0\
    );
\count_ff[28]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(30),
      I1 => clk_w_count,
      I2 => count_ff_reg(30),
      O => \count_ff[28]_i_3_n_0\
    );
\count_ff[28]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(29),
      I1 => clk_w_count,
      I2 => count_ff_reg(29),
      O => \count_ff[28]_i_4_n_0\
    );
\count_ff[28]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(28),
      I1 => clk_w_count,
      I2 => count_ff_reg(28),
      O => \count_ff[28]_i_5_n_0\
    );
\count_ff[28]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(31),
      I1 => clk_count_ff(31),
      I2 => clk_w_count,
      O => \count_ff[28]_i_6_n_0\
    );
\count_ff[28]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(30),
      I1 => clk_count_ff(30),
      I2 => clk_w_count,
      O => \count_ff[28]_i_7_n_0\
    );
\count_ff[28]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(29),
      I1 => clk_count_ff(29),
      I2 => clk_w_count,
      O => \count_ff[28]_i_8_n_0\
    );
\count_ff[28]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(28),
      I1 => clk_count_ff(28),
      I2 => clk_w_count,
      O => \count_ff[28]_i_9_n_0\
    );
\count_ff[32]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(35),
      I1 => clk_w_count,
      I2 => count_ff_reg(35),
      O => \count_ff[32]_i_2_n_0\
    );
\count_ff[32]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(34),
      I1 => clk_w_count,
      I2 => count_ff_reg(34),
      O => \count_ff[32]_i_3_n_0\
    );
\count_ff[32]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(33),
      I1 => clk_w_count,
      I2 => count_ff_reg(33),
      O => \count_ff[32]_i_4_n_0\
    );
\count_ff[32]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(32),
      I1 => clk_w_count,
      I2 => count_ff_reg(32),
      O => \count_ff[32]_i_5_n_0\
    );
\count_ff[32]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(35),
      I1 => clk_count_ff(35),
      I2 => clk_w_count,
      O => \count_ff[32]_i_6_n_0\
    );
\count_ff[32]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(34),
      I1 => clk_count_ff(34),
      I2 => clk_w_count,
      O => \count_ff[32]_i_7_n_0\
    );
\count_ff[32]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(33),
      I1 => clk_count_ff(33),
      I2 => clk_w_count,
      O => \count_ff[32]_i_8_n_0\
    );
\count_ff[32]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(32),
      I1 => clk_count_ff(32),
      I2 => clk_w_count,
      O => \count_ff[32]_i_9_n_0\
    );
\count_ff[36]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(39),
      I1 => clk_w_count,
      I2 => count_ff_reg(39),
      O => \count_ff[36]_i_2_n_0\
    );
\count_ff[36]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(38),
      I1 => clk_w_count,
      I2 => count_ff_reg(38),
      O => \count_ff[36]_i_3_n_0\
    );
\count_ff[36]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(37),
      I1 => clk_w_count,
      I2 => count_ff_reg(37),
      O => \count_ff[36]_i_4_n_0\
    );
\count_ff[36]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(36),
      I1 => clk_w_count,
      I2 => count_ff_reg(36),
      O => \count_ff[36]_i_5_n_0\
    );
\count_ff[36]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(39),
      I1 => clk_count_ff(39),
      I2 => clk_w_count,
      O => \count_ff[36]_i_6_n_0\
    );
\count_ff[36]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(38),
      I1 => clk_count_ff(38),
      I2 => clk_w_count,
      O => \count_ff[36]_i_7_n_0\
    );
\count_ff[36]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(37),
      I1 => clk_count_ff(37),
      I2 => clk_w_count,
      O => \count_ff[36]_i_8_n_0\
    );
\count_ff[36]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(36),
      I1 => clk_count_ff(36),
      I2 => clk_w_count,
      O => \count_ff[36]_i_9_n_0\
    );
\count_ff[40]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(43),
      I1 => clk_w_count,
      I2 => count_ff_reg(43),
      O => \count_ff[40]_i_2_n_0\
    );
\count_ff[40]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(42),
      I1 => clk_w_count,
      I2 => count_ff_reg(42),
      O => \count_ff[40]_i_3_n_0\
    );
\count_ff[40]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(41),
      I1 => clk_w_count,
      I2 => count_ff_reg(41),
      O => \count_ff[40]_i_4_n_0\
    );
\count_ff[40]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(40),
      I1 => clk_w_count,
      I2 => count_ff_reg(40),
      O => \count_ff[40]_i_5_n_0\
    );
\count_ff[40]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(43),
      I1 => clk_count_ff(43),
      I2 => clk_w_count,
      O => \count_ff[40]_i_6_n_0\
    );
\count_ff[40]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(42),
      I1 => clk_count_ff(42),
      I2 => clk_w_count,
      O => \count_ff[40]_i_7_n_0\
    );
\count_ff[40]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(41),
      I1 => clk_count_ff(41),
      I2 => clk_w_count,
      O => \count_ff[40]_i_8_n_0\
    );
\count_ff[40]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(40),
      I1 => clk_count_ff(40),
      I2 => clk_w_count,
      O => \count_ff[40]_i_9_n_0\
    );
\count_ff[44]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(47),
      I1 => clk_w_count,
      I2 => count_ff_reg(47),
      O => \count_ff[44]_i_2_n_0\
    );
\count_ff[44]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(46),
      I1 => clk_w_count,
      I2 => count_ff_reg(46),
      O => \count_ff[44]_i_3_n_0\
    );
\count_ff[44]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(45),
      I1 => clk_w_count,
      I2 => count_ff_reg(45),
      O => \count_ff[44]_i_4_n_0\
    );
\count_ff[44]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(44),
      I1 => clk_w_count,
      I2 => count_ff_reg(44),
      O => \count_ff[44]_i_5_n_0\
    );
\count_ff[44]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(47),
      I1 => clk_count_ff(47),
      I2 => clk_w_count,
      O => \count_ff[44]_i_6_n_0\
    );
\count_ff[44]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(46),
      I1 => clk_count_ff(46),
      I2 => clk_w_count,
      O => \count_ff[44]_i_7_n_0\
    );
\count_ff[44]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(45),
      I1 => clk_count_ff(45),
      I2 => clk_w_count,
      O => \count_ff[44]_i_8_n_0\
    );
\count_ff[44]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(44),
      I1 => clk_count_ff(44),
      I2 => clk_w_count,
      O => \count_ff[44]_i_9_n_0\
    );
\count_ff[48]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(51),
      I1 => clk_w_count,
      I2 => count_ff_reg(51),
      O => \count_ff[48]_i_2_n_0\
    );
\count_ff[48]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(50),
      I1 => clk_w_count,
      I2 => count_ff_reg(50),
      O => \count_ff[48]_i_3_n_0\
    );
\count_ff[48]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(49),
      I1 => clk_w_count,
      I2 => count_ff_reg(49),
      O => \count_ff[48]_i_4_n_0\
    );
\count_ff[48]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(48),
      I1 => clk_w_count,
      I2 => count_ff_reg(48),
      O => \count_ff[48]_i_5_n_0\
    );
\count_ff[48]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(51),
      I1 => clk_count_ff(51),
      I2 => clk_w_count,
      O => \count_ff[48]_i_6_n_0\
    );
\count_ff[48]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(50),
      I1 => clk_count_ff(50),
      I2 => clk_w_count,
      O => \count_ff[48]_i_7_n_0\
    );
\count_ff[48]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(49),
      I1 => clk_count_ff(49),
      I2 => clk_w_count,
      O => \count_ff[48]_i_8_n_0\
    );
\count_ff[48]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(48),
      I1 => clk_count_ff(48),
      I2 => clk_w_count,
      O => \count_ff[48]_i_9_n_0\
    );
\count_ff[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(7),
      I1 => clk_w_count,
      I2 => count_ff_reg(7),
      O => \count_ff[4]_i_2_n_0\
    );
\count_ff[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(6),
      I1 => clk_w_count,
      I2 => count_ff_reg(6),
      O => \count_ff[4]_i_3_n_0\
    );
\count_ff[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(5),
      I1 => clk_w_count,
      I2 => count_ff_reg(5),
      O => \count_ff[4]_i_4_n_0\
    );
\count_ff[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(4),
      I1 => clk_w_count,
      I2 => count_ff_reg(4),
      O => \count_ff[4]_i_5_n_0\
    );
\count_ff[4]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(7),
      I1 => clk_count_ff(7),
      I2 => clk_w_count,
      O => \count_ff[4]_i_6_n_0\
    );
\count_ff[4]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(6),
      I1 => clk_count_ff(6),
      I2 => clk_w_count,
      O => \count_ff[4]_i_7_n_0\
    );
\count_ff[4]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(5),
      I1 => clk_count_ff(5),
      I2 => clk_w_count,
      O => \count_ff[4]_i_8_n_0\
    );
\count_ff[4]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(4),
      I1 => clk_count_ff(4),
      I2 => clk_w_count,
      O => \count_ff[4]_i_9_n_0\
    );
\count_ff[52]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(55),
      I1 => clk_w_count,
      I2 => count_ff_reg(55),
      O => \count_ff[52]_i_2_n_0\
    );
\count_ff[52]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(54),
      I1 => clk_w_count,
      I2 => count_ff_reg(54),
      O => \count_ff[52]_i_3_n_0\
    );
\count_ff[52]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(53),
      I1 => clk_w_count,
      I2 => count_ff_reg(53),
      O => \count_ff[52]_i_4_n_0\
    );
\count_ff[52]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(52),
      I1 => clk_w_count,
      I2 => count_ff_reg(52),
      O => \count_ff[52]_i_5_n_0\
    );
\count_ff[52]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(55),
      I1 => clk_count_ff(55),
      I2 => clk_w_count,
      O => \count_ff[52]_i_6_n_0\
    );
\count_ff[52]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(54),
      I1 => clk_count_ff(54),
      I2 => clk_w_count,
      O => \count_ff[52]_i_7_n_0\
    );
\count_ff[52]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(53),
      I1 => clk_count_ff(53),
      I2 => clk_w_count,
      O => \count_ff[52]_i_8_n_0\
    );
\count_ff[52]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(52),
      I1 => clk_count_ff(52),
      I2 => clk_w_count,
      O => \count_ff[52]_i_9_n_0\
    );
\count_ff[56]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(59),
      I1 => clk_w_count,
      I2 => count_ff_reg(59),
      O => \count_ff[56]_i_2_n_0\
    );
\count_ff[56]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(58),
      I1 => clk_w_count,
      I2 => count_ff_reg(58),
      O => \count_ff[56]_i_3_n_0\
    );
\count_ff[56]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(57),
      I1 => clk_w_count,
      I2 => count_ff_reg(57),
      O => \count_ff[56]_i_4_n_0\
    );
\count_ff[56]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(56),
      I1 => clk_w_count,
      I2 => count_ff_reg(56),
      O => \count_ff[56]_i_5_n_0\
    );
\count_ff[56]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(59),
      I1 => clk_count_ff(59),
      I2 => clk_w_count,
      O => \count_ff[56]_i_6_n_0\
    );
\count_ff[56]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(58),
      I1 => clk_count_ff(58),
      I2 => clk_w_count,
      O => \count_ff[56]_i_7_n_0\
    );
\count_ff[56]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(57),
      I1 => clk_count_ff(57),
      I2 => clk_w_count,
      O => \count_ff[56]_i_8_n_0\
    );
\count_ff[56]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(56),
      I1 => clk_count_ff(56),
      I2 => clk_w_count,
      O => \count_ff[56]_i_9_n_0\
    );
\count_ff[60]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(62),
      I1 => clk_w_count,
      I2 => count_ff_reg(62),
      O => \count_ff[60]_i_2_n_0\
    );
\count_ff[60]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(61),
      I1 => clk_w_count,
      I2 => count_ff_reg(61),
      O => \count_ff[60]_i_3_n_0\
    );
\count_ff[60]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(60),
      I1 => clk_w_count,
      I2 => count_ff_reg(60),
      O => \count_ff[60]_i_4_n_0\
    );
\count_ff[60]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(63),
      I1 => clk_count_ff(63),
      I2 => clk_w_count,
      O => \count_ff[60]_i_5_n_0\
    );
\count_ff[60]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(62),
      I1 => clk_count_ff(62),
      I2 => clk_w_count,
      O => \count_ff[60]_i_6_n_0\
    );
\count_ff[60]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(61),
      I1 => clk_count_ff(61),
      I2 => clk_w_count,
      O => \count_ff[60]_i_7_n_0\
    );
\count_ff[60]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(60),
      I1 => clk_count_ff(60),
      I2 => clk_w_count,
      O => \count_ff[60]_i_8_n_0\
    );
\count_ff[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(11),
      I1 => clk_w_count,
      I2 => count_ff_reg(11),
      O => \count_ff[8]_i_2_n_0\
    );
\count_ff[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(10),
      I1 => clk_w_count,
      I2 => count_ff_reg(10),
      O => \count_ff[8]_i_3_n_0\
    );
\count_ff[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(9),
      I1 => clk_w_count,
      I2 => count_ff_reg(9),
      O => \count_ff[8]_i_4_n_0\
    );
\count_ff[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_count_ff(8),
      I1 => clk_w_count,
      I2 => count_ff_reg(8),
      O => \count_ff[8]_i_5_n_0\
    );
\count_ff[8]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(11),
      I1 => clk_count_ff(11),
      I2 => clk_w_count,
      O => \count_ff[8]_i_6_n_0\
    );
\count_ff[8]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(10),
      I1 => clk_count_ff(10),
      I2 => clk_w_count,
      O => \count_ff[8]_i_7_n_0\
    );
\count_ff[8]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(9),
      I1 => clk_count_ff(9),
      I2 => clk_w_count,
      O => \count_ff[8]_i_8_n_0\
    );
\count_ff[8]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_ff_reg(8),
      I1 => clk_count_ff(8),
      I2 => clk_w_count,
      O => \count_ff[8]_i_9_n_0\
    );
\count_ff_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_ff_reg[0]_i_2_n_0\,
      CO(2) => \count_ff_reg[0]_i_2_n_1\,
      CO(1) => \count_ff_reg[0]_i_2_n_2\,
      CO(0) => \count_ff_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \count_ff[0]_i_3_n_0\,
      DI(2) => \count_ff[0]_i_4_n_0\,
      DI(1) => \count_ff[0]_i_5_n_0\,
      DI(0) => \count_ff[0]_i_6_n_0\,
      O(3 downto 0) => O(3 downto 0),
      S(3) => \count_ff[0]_i_7_n_0\,
      S(2) => \count_ff[0]_i_8_n_0\,
      S(1) => \count_ff[0]_i_9_n_0\,
      S(0) => \count_ff[0]_i_10_n_0\
    );
\count_ff_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_ff_reg[8]_i_1_n_0\,
      CO(3) => \count_ff_reg[12]_i_1_n_0\,
      CO(2) => \count_ff_reg[12]_i_1_n_1\,
      CO(1) => \count_ff_reg[12]_i_1_n_2\,
      CO(0) => \count_ff_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \count_ff[12]_i_2_n_0\,
      DI(2) => \count_ff[12]_i_3_n_0\,
      DI(1) => \count_ff[12]_i_4_n_0\,
      DI(0) => \count_ff[12]_i_5_n_0\,
      O(3 downto 0) => \clk_count_ff_reg[15]_0\(3 downto 0),
      S(3) => \count_ff[12]_i_6_n_0\,
      S(2) => \count_ff[12]_i_7_n_0\,
      S(1) => \count_ff[12]_i_8_n_0\,
      S(0) => \count_ff[12]_i_9_n_0\
    );
\count_ff_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_ff_reg[12]_i_1_n_0\,
      CO(3) => \count_ff_reg[16]_i_1_n_0\,
      CO(2) => \count_ff_reg[16]_i_1_n_1\,
      CO(1) => \count_ff_reg[16]_i_1_n_2\,
      CO(0) => \count_ff_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \count_ff[16]_i_2_n_0\,
      DI(2) => \count_ff[16]_i_3_n_0\,
      DI(1) => \count_ff[16]_i_4_n_0\,
      DI(0) => \count_ff[16]_i_5_n_0\,
      O(3 downto 0) => \clk_count_ff_reg[19]_0\(3 downto 0),
      S(3) => \count_ff[16]_i_6_n_0\,
      S(2) => \count_ff[16]_i_7_n_0\,
      S(1) => \count_ff[16]_i_8_n_0\,
      S(0) => \count_ff[16]_i_9_n_0\
    );
\count_ff_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_ff_reg[16]_i_1_n_0\,
      CO(3) => \count_ff_reg[20]_i_1_n_0\,
      CO(2) => \count_ff_reg[20]_i_1_n_1\,
      CO(1) => \count_ff_reg[20]_i_1_n_2\,
      CO(0) => \count_ff_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \count_ff[20]_i_2_n_0\,
      DI(2) => \count_ff[20]_i_3_n_0\,
      DI(1) => \count_ff[20]_i_4_n_0\,
      DI(0) => \count_ff[20]_i_5_n_0\,
      O(3 downto 0) => \clk_count_ff_reg[23]_0\(3 downto 0),
      S(3) => \count_ff[20]_i_6_n_0\,
      S(2) => \count_ff[20]_i_7_n_0\,
      S(1) => \count_ff[20]_i_8_n_0\,
      S(0) => \count_ff[20]_i_9_n_0\
    );
\count_ff_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_ff_reg[20]_i_1_n_0\,
      CO(3) => \count_ff_reg[24]_i_1_n_0\,
      CO(2) => \count_ff_reg[24]_i_1_n_1\,
      CO(1) => \count_ff_reg[24]_i_1_n_2\,
      CO(0) => \count_ff_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \count_ff[24]_i_2_n_0\,
      DI(2) => \count_ff[24]_i_3_n_0\,
      DI(1) => \count_ff[24]_i_4_n_0\,
      DI(0) => \count_ff[24]_i_5_n_0\,
      O(3 downto 0) => \clk_count_ff_reg[27]_0\(3 downto 0),
      S(3) => \count_ff[24]_i_6_n_0\,
      S(2) => \count_ff[24]_i_7_n_0\,
      S(1) => \count_ff[24]_i_8_n_0\,
      S(0) => \count_ff[24]_i_9_n_0\
    );
\count_ff_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_ff_reg[24]_i_1_n_0\,
      CO(3) => \count_ff_reg[28]_i_1_n_0\,
      CO(2) => \count_ff_reg[28]_i_1_n_1\,
      CO(1) => \count_ff_reg[28]_i_1_n_2\,
      CO(0) => \count_ff_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \count_ff[28]_i_2_n_0\,
      DI(2) => \count_ff[28]_i_3_n_0\,
      DI(1) => \count_ff[28]_i_4_n_0\,
      DI(0) => \count_ff[28]_i_5_n_0\,
      O(3 downto 0) => \clk_count_ff_reg[31]_0\(3 downto 0),
      S(3) => \count_ff[28]_i_6_n_0\,
      S(2) => \count_ff[28]_i_7_n_0\,
      S(1) => \count_ff[28]_i_8_n_0\,
      S(0) => \count_ff[28]_i_9_n_0\
    );
\count_ff_reg[32]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_ff_reg[28]_i_1_n_0\,
      CO(3) => \count_ff_reg[32]_i_1_n_0\,
      CO(2) => \count_ff_reg[32]_i_1_n_1\,
      CO(1) => \count_ff_reg[32]_i_1_n_2\,
      CO(0) => \count_ff_reg[32]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \count_ff[32]_i_2_n_0\,
      DI(2) => \count_ff[32]_i_3_n_0\,
      DI(1) => \count_ff[32]_i_4_n_0\,
      DI(0) => \count_ff[32]_i_5_n_0\,
      O(3 downto 0) => \clk_count_ff_reg[35]_0\(3 downto 0),
      S(3) => \count_ff[32]_i_6_n_0\,
      S(2) => \count_ff[32]_i_7_n_0\,
      S(1) => \count_ff[32]_i_8_n_0\,
      S(0) => \count_ff[32]_i_9_n_0\
    );
\count_ff_reg[36]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_ff_reg[32]_i_1_n_0\,
      CO(3) => \count_ff_reg[36]_i_1_n_0\,
      CO(2) => \count_ff_reg[36]_i_1_n_1\,
      CO(1) => \count_ff_reg[36]_i_1_n_2\,
      CO(0) => \count_ff_reg[36]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \count_ff[36]_i_2_n_0\,
      DI(2) => \count_ff[36]_i_3_n_0\,
      DI(1) => \count_ff[36]_i_4_n_0\,
      DI(0) => \count_ff[36]_i_5_n_0\,
      O(3 downto 0) => \clk_count_ff_reg[39]_0\(3 downto 0),
      S(3) => \count_ff[36]_i_6_n_0\,
      S(2) => \count_ff[36]_i_7_n_0\,
      S(1) => \count_ff[36]_i_8_n_0\,
      S(0) => \count_ff[36]_i_9_n_0\
    );
\count_ff_reg[40]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_ff_reg[36]_i_1_n_0\,
      CO(3) => \count_ff_reg[40]_i_1_n_0\,
      CO(2) => \count_ff_reg[40]_i_1_n_1\,
      CO(1) => \count_ff_reg[40]_i_1_n_2\,
      CO(0) => \count_ff_reg[40]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \count_ff[40]_i_2_n_0\,
      DI(2) => \count_ff[40]_i_3_n_0\,
      DI(1) => \count_ff[40]_i_4_n_0\,
      DI(0) => \count_ff[40]_i_5_n_0\,
      O(3 downto 0) => \clk_count_ff_reg[43]_0\(3 downto 0),
      S(3) => \count_ff[40]_i_6_n_0\,
      S(2) => \count_ff[40]_i_7_n_0\,
      S(1) => \count_ff[40]_i_8_n_0\,
      S(0) => \count_ff[40]_i_9_n_0\
    );
\count_ff_reg[44]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_ff_reg[40]_i_1_n_0\,
      CO(3) => \count_ff_reg[44]_i_1_n_0\,
      CO(2) => \count_ff_reg[44]_i_1_n_1\,
      CO(1) => \count_ff_reg[44]_i_1_n_2\,
      CO(0) => \count_ff_reg[44]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \count_ff[44]_i_2_n_0\,
      DI(2) => \count_ff[44]_i_3_n_0\,
      DI(1) => \count_ff[44]_i_4_n_0\,
      DI(0) => \count_ff[44]_i_5_n_0\,
      O(3 downto 0) => \clk_count_ff_reg[47]_0\(3 downto 0),
      S(3) => \count_ff[44]_i_6_n_0\,
      S(2) => \count_ff[44]_i_7_n_0\,
      S(1) => \count_ff[44]_i_8_n_0\,
      S(0) => \count_ff[44]_i_9_n_0\
    );
\count_ff_reg[48]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_ff_reg[44]_i_1_n_0\,
      CO(3) => \count_ff_reg[48]_i_1_n_0\,
      CO(2) => \count_ff_reg[48]_i_1_n_1\,
      CO(1) => \count_ff_reg[48]_i_1_n_2\,
      CO(0) => \count_ff_reg[48]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \count_ff[48]_i_2_n_0\,
      DI(2) => \count_ff[48]_i_3_n_0\,
      DI(1) => \count_ff[48]_i_4_n_0\,
      DI(0) => \count_ff[48]_i_5_n_0\,
      O(3 downto 0) => \clk_count_ff_reg[51]_0\(3 downto 0),
      S(3) => \count_ff[48]_i_6_n_0\,
      S(2) => \count_ff[48]_i_7_n_0\,
      S(1) => \count_ff[48]_i_8_n_0\,
      S(0) => \count_ff[48]_i_9_n_0\
    );
\count_ff_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_ff_reg[0]_i_2_n_0\,
      CO(3) => \count_ff_reg[4]_i_1_n_0\,
      CO(2) => \count_ff_reg[4]_i_1_n_1\,
      CO(1) => \count_ff_reg[4]_i_1_n_2\,
      CO(0) => \count_ff_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \count_ff[4]_i_2_n_0\,
      DI(2) => \count_ff[4]_i_3_n_0\,
      DI(1) => \count_ff[4]_i_4_n_0\,
      DI(0) => \count_ff[4]_i_5_n_0\,
      O(3 downto 0) => \clk_count_ff_reg[7]_0\(3 downto 0),
      S(3) => \count_ff[4]_i_6_n_0\,
      S(2) => \count_ff[4]_i_7_n_0\,
      S(1) => \count_ff[4]_i_8_n_0\,
      S(0) => \count_ff[4]_i_9_n_0\
    );
\count_ff_reg[52]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_ff_reg[48]_i_1_n_0\,
      CO(3) => \count_ff_reg[52]_i_1_n_0\,
      CO(2) => \count_ff_reg[52]_i_1_n_1\,
      CO(1) => \count_ff_reg[52]_i_1_n_2\,
      CO(0) => \count_ff_reg[52]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \count_ff[52]_i_2_n_0\,
      DI(2) => \count_ff[52]_i_3_n_0\,
      DI(1) => \count_ff[52]_i_4_n_0\,
      DI(0) => \count_ff[52]_i_5_n_0\,
      O(3 downto 0) => \clk_count_ff_reg[55]_0\(3 downto 0),
      S(3) => \count_ff[52]_i_6_n_0\,
      S(2) => \count_ff[52]_i_7_n_0\,
      S(1) => \count_ff[52]_i_8_n_0\,
      S(0) => \count_ff[52]_i_9_n_0\
    );
\count_ff_reg[56]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_ff_reg[52]_i_1_n_0\,
      CO(3) => \count_ff_reg[56]_i_1_n_0\,
      CO(2) => \count_ff_reg[56]_i_1_n_1\,
      CO(1) => \count_ff_reg[56]_i_1_n_2\,
      CO(0) => \count_ff_reg[56]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \count_ff[56]_i_2_n_0\,
      DI(2) => \count_ff[56]_i_3_n_0\,
      DI(1) => \count_ff[56]_i_4_n_0\,
      DI(0) => \count_ff[56]_i_5_n_0\,
      O(3 downto 0) => \clk_count_ff_reg[59]_0\(3 downto 0),
      S(3) => \count_ff[56]_i_6_n_0\,
      S(2) => \count_ff[56]_i_7_n_0\,
      S(1) => \count_ff[56]_i_8_n_0\,
      S(0) => \count_ff[56]_i_9_n_0\
    );
\count_ff_reg[60]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_ff_reg[56]_i_1_n_0\,
      CO(3) => \NLW_count_ff_reg[60]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \count_ff_reg[60]_i_1_n_1\,
      CO(1) => \count_ff_reg[60]_i_1_n_2\,
      CO(0) => \count_ff_reg[60]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \count_ff[60]_i_2_n_0\,
      DI(1) => \count_ff[60]_i_3_n_0\,
      DI(0) => \count_ff[60]_i_4_n_0\,
      O(3 downto 0) => \clk_count_ff_reg[62]_0\(3 downto 0),
      S(3) => \count_ff[60]_i_5_n_0\,
      S(2) => \count_ff[60]_i_6_n_0\,
      S(1) => \count_ff[60]_i_7_n_0\,
      S(0) => \count_ff[60]_i_8_n_0\
    );
\count_ff_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_ff_reg[4]_i_1_n_0\,
      CO(3) => \count_ff_reg[8]_i_1_n_0\,
      CO(2) => \count_ff_reg[8]_i_1_n_1\,
      CO(1) => \count_ff_reg[8]_i_1_n_2\,
      CO(0) => \count_ff_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \count_ff[8]_i_2_n_0\,
      DI(2) => \count_ff[8]_i_3_n_0\,
      DI(1) => \count_ff[8]_i_4_n_0\,
      DI(0) => \count_ff[8]_i_5_n_0\,
      O(3 downto 0) => \clk_count_ff_reg[11]_0\(3 downto 0),
      S(3) => \count_ff[8]_i_6_n_0\,
      S(2) => \count_ff[8]_i_7_n_0\,
      S(1) => \count_ff[8]_i_8_n_0\,
      S(0) => \count_ff[8]_i_9_n_0\
    );
read_fsm_state_ff_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_clk_gate_top_0_0_read_write_axi is
  port (
    read_fsm_state_ff_reg_0 : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_write_fsm_state_ff_reg[0]_0\ : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    \write_data_ff_reg[0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \write_data_ff_reg[0]_1\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ACLK : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_mode : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    clk_en : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_clk_gate_top_0_0_read_write_axi : entity is "read_write_axi";
end design_1_clk_gate_top_0_0_read_write_axi;

architecture STRUCTURE of design_1_clk_gate_top_0_0_read_write_axi is
  signal \FSM_sequential_write_fsm_state_ff[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_write_fsm_state_ff[1]_i_1_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \clk_count_ff[63]_i_2_n_0\ : STD_LOGIC;
  signal clk_en_ff_i_2_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal read_fsm_state_ff_i_2_n_0 : STD_LOGIC;
  signal \^read_fsm_state_ff_reg_0\ : STD_LOGIC;
  signal w_addr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal write_address_nxt : STD_LOGIC;
  signal write_data_nxt : STD_LOGIC;
  signal write_fsm_state_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_write_fsm_state_ff[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_write_fsm_state_ff[1]_i_1\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_write_fsm_state_ff_reg[0]\ : label is "addr:00,receive_data:01,write_data:10,response:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_write_fsm_state_ff_reg[1]\ : label is "addr:00,receive_data:01,write_data:10,response:11";
  attribute SOFT_HLUTNM of S_AXI_ARREADY_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of S_AXI_AWREADY_INST_0 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[0]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of S_AXI_WREADY_INST_0 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \clk_count_ff[31]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \clk_count_ff[63]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of clk_en_ff_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of clk_en_ff_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of clk_mode_ff_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of clk_w_count_ff_i_1 : label is "soft_lutpair2";
begin
  Q(31 downto 0) <= \^q\(31 downto 0);
  read_fsm_state_ff_reg_0 <= \^read_fsm_state_ff_reg_0\;
\FSM_sequential_write_fsm_state_ff[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03CFEEEE"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => write_fsm_state_ff(1),
      I2 => S_AXI_WVALID,
      I3 => S_AXI_BREADY,
      I4 => write_fsm_state_ff(0),
      O => \FSM_sequential_write_fsm_state_ff[0]_i_1_n_0\
    );
\FSM_sequential_write_fsm_state_ff[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5FC0"
    )
        port map (
      I0 => S_AXI_BREADY,
      I1 => S_AXI_WVALID,
      I2 => write_fsm_state_ff(0),
      I3 => write_fsm_state_ff(1),
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
      R => SR(0)
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
      R => SR(0)
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
      I0 => write_fsm_state_ff(1),
      I1 => write_fsm_state_ff(0),
      O => S_AXI_AWREADY
    );
S_AXI_BVALID_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => write_fsm_state_ff(1),
      I1 => write_fsm_state_ff(0),
      O => S_AXI_BVALID
    );
\S_AXI_RDATA[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^read_fsm_state_ff_reg_0\,
      I1 => CO(0),
      I2 => clk_mode,
      O => S_AXI_RDATA(0)
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
\clk_count_ff[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => write_fsm_state_ff(0),
      I1 => w_addr(3),
      I2 => \clk_count_ff[63]_i_2_n_0\,
      I3 => write_fsm_state_ff(1),
      I4 => w_addr(2),
      O => E(0)
    );
\clk_count_ff[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => write_fsm_state_ff(0),
      I1 => w_addr(3),
      I2 => \clk_count_ff[63]_i_2_n_0\,
      I3 => write_fsm_state_ff(1),
      I4 => w_addr(2),
      O => E(1)
    );
\clk_count_ff[63]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => w_addr(1),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => w_addr(0),
      O => \clk_count_ff[63]_i_2_n_0\
    );
clk_en_ff_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \^q\(0),
      I1 => clk_en_ff_i_2_n_0,
      I2 => w_addr(2),
      I3 => clk_en,
      O => \write_data_ff_reg[0]_0\
    );
clk_en_ff_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => write_fsm_state_ff(1),
      I1 => \clk_count_ff[63]_i_2_n_0\,
      I2 => w_addr(3),
      I3 => write_fsm_state_ff(0),
      O => clk_en_ff_i_2_n_0
    );
clk_mode_ff_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \^q\(0),
      I1 => clk_en_ff_i_2_n_0,
      I2 => w_addr(2),
      I3 => clk_mode,
      O => \write_data_ff_reg[0]_1\
    );
clk_w_count_ff_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => write_fsm_state_ff(0),
      I1 => w_addr(3),
      I2 => \clk_count_ff[63]_i_2_n_0\,
      I3 => write_fsm_state_ff(1),
      I4 => S_AXI_ARESETN,
      O => \FSM_sequential_write_fsm_state_ff_reg[0]_0\
    );
read_fsm_state_ff_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => S_AXI_RREADY,
      I1 => \^read_fsm_state_ff_reg_0\,
      I2 => S_AXI_ARVALID,
      O => read_fsm_state_ff_i_2_n_0
    );
read_fsm_state_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => read_fsm_state_ff_i_2_n_0,
      Q => \^read_fsm_state_ff_reg_0\,
      R => SR(0)
    );
\write_address_ff[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => write_fsm_state_ff(1),
      I1 => S_AXI_AWVALID,
      I2 => write_fsm_state_ff(0),
      O => write_address_nxt
    );
\write_address_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_address_nxt,
      D => S_AXI_AWADDR(0),
      Q => w_addr(0),
      R => SR(0)
    );
\write_address_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_address_nxt,
      D => S_AXI_AWADDR(1),
      Q => w_addr(1),
      R => SR(0)
    );
\write_address_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_address_nxt,
      D => S_AXI_AWADDR(2),
      Q => w_addr(2),
      R => SR(0)
    );
\write_address_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_address_nxt,
      D => S_AXI_AWADDR(3),
      Q => w_addr(3),
      R => SR(0)
    );
\write_address_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_address_nxt,
      D => S_AXI_AWADDR(4),
      Q => p_0_in(1),
      R => SR(0)
    );
\write_address_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_address_nxt,
      D => S_AXI_AWADDR(5),
      Q => p_0_in(0),
      R => SR(0)
    );
\write_data_ff[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => write_fsm_state_ff(1),
      I1 => S_AXI_WVALID,
      I2 => write_fsm_state_ff(0),
      O => write_data_nxt
    );
\write_data_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_data_nxt,
      D => S_AXI_WDATA(0),
      Q => \^q\(0),
      R => SR(0)
    );
\write_data_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_data_nxt,
      D => S_AXI_WDATA(10),
      Q => \^q\(10),
      R => SR(0)
    );
\write_data_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_data_nxt,
      D => S_AXI_WDATA(11),
      Q => \^q\(11),
      R => SR(0)
    );
\write_data_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_data_nxt,
      D => S_AXI_WDATA(12),
      Q => \^q\(12),
      R => SR(0)
    );
\write_data_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_data_nxt,
      D => S_AXI_WDATA(13),
      Q => \^q\(13),
      R => SR(0)
    );
\write_data_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_data_nxt,
      D => S_AXI_WDATA(14),
      Q => \^q\(14),
      R => SR(0)
    );
\write_data_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_data_nxt,
      D => S_AXI_WDATA(15),
      Q => \^q\(15),
      R => SR(0)
    );
\write_data_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_data_nxt,
      D => S_AXI_WDATA(16),
      Q => \^q\(16),
      R => SR(0)
    );
\write_data_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_data_nxt,
      D => S_AXI_WDATA(17),
      Q => \^q\(17),
      R => SR(0)
    );
\write_data_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_data_nxt,
      D => S_AXI_WDATA(18),
      Q => \^q\(18),
      R => SR(0)
    );
\write_data_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_data_nxt,
      D => S_AXI_WDATA(19),
      Q => \^q\(19),
      R => SR(0)
    );
\write_data_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_data_nxt,
      D => S_AXI_WDATA(1),
      Q => \^q\(1),
      R => SR(0)
    );
\write_data_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_data_nxt,
      D => S_AXI_WDATA(20),
      Q => \^q\(20),
      R => SR(0)
    );
\write_data_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_data_nxt,
      D => S_AXI_WDATA(21),
      Q => \^q\(21),
      R => SR(0)
    );
\write_data_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_data_nxt,
      D => S_AXI_WDATA(22),
      Q => \^q\(22),
      R => SR(0)
    );
\write_data_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_data_nxt,
      D => S_AXI_WDATA(23),
      Q => \^q\(23),
      R => SR(0)
    );
\write_data_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_data_nxt,
      D => S_AXI_WDATA(24),
      Q => \^q\(24),
      R => SR(0)
    );
\write_data_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_data_nxt,
      D => S_AXI_WDATA(25),
      Q => \^q\(25),
      R => SR(0)
    );
\write_data_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_data_nxt,
      D => S_AXI_WDATA(26),
      Q => \^q\(26),
      R => SR(0)
    );
\write_data_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_data_nxt,
      D => S_AXI_WDATA(27),
      Q => \^q\(27),
      R => SR(0)
    );
\write_data_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_data_nxt,
      D => S_AXI_WDATA(28),
      Q => \^q\(28),
      R => SR(0)
    );
\write_data_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_data_nxt,
      D => S_AXI_WDATA(29),
      Q => \^q\(29),
      R => SR(0)
    );
\write_data_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_data_nxt,
      D => S_AXI_WDATA(2),
      Q => \^q\(2),
      R => SR(0)
    );
\write_data_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_data_nxt,
      D => S_AXI_WDATA(30),
      Q => \^q\(30),
      R => SR(0)
    );
\write_data_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_data_nxt,
      D => S_AXI_WDATA(31),
      Q => \^q\(31),
      R => SR(0)
    );
\write_data_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_data_nxt,
      D => S_AXI_WDATA(3),
      Q => \^q\(3),
      R => SR(0)
    );
\write_data_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_data_nxt,
      D => S_AXI_WDATA(4),
      Q => \^q\(4),
      R => SR(0)
    );
\write_data_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_data_nxt,
      D => S_AXI_WDATA(5),
      Q => \^q\(5),
      R => SR(0)
    );
\write_data_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_data_nxt,
      D => S_AXI_WDATA(6),
      Q => \^q\(6),
      R => SR(0)
    );
\write_data_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_data_nxt,
      D => S_AXI_WDATA(7),
      Q => \^q\(7),
      R => SR(0)
    );
\write_data_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_data_nxt,
      D => S_AXI_WDATA(8),
      Q => \^q\(8),
      R => SR(0)
    );
\write_data_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write_data_nxt,
      D => S_AXI_WDATA(9),
      Q => \^q\(9),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_clk_gate_top_0_0_clk_gate_top is
  port (
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 0 to 0 );
    read_fsm_state_ff_reg : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    clk_o : out STD_LOGIC;
    clk_enabled_o : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_clk_gate_top_0_0_clk_gate_top : entity is "clk_gate_top";
end design_1_clk_gate_top_0_0_clk_gate_top;

architecture STRUCTURE of design_1_clk_gate_top_0_0_clk_gate_top is
  signal clk_en : STD_LOGIC;
  signal \^clk_enabled_o\ : STD_LOGIC;
  signal clk_mode : STD_LOGIC;
  signal clk_router_inst_n_1 : STD_LOGIC;
  signal clk_router_inst_n_10 : STD_LOGIC;
  signal clk_router_inst_n_11 : STD_LOGIC;
  signal clk_router_inst_n_12 : STD_LOGIC;
  signal clk_router_inst_n_13 : STD_LOGIC;
  signal clk_router_inst_n_14 : STD_LOGIC;
  signal clk_router_inst_n_15 : STD_LOGIC;
  signal clk_router_inst_n_16 : STD_LOGIC;
  signal clk_router_inst_n_17 : STD_LOGIC;
  signal clk_router_inst_n_18 : STD_LOGIC;
  signal clk_router_inst_n_19 : STD_LOGIC;
  signal clk_router_inst_n_20 : STD_LOGIC;
  signal clk_router_inst_n_21 : STD_LOGIC;
  signal clk_router_inst_n_22 : STD_LOGIC;
  signal clk_router_inst_n_23 : STD_LOGIC;
  signal clk_router_inst_n_24 : STD_LOGIC;
  signal clk_router_inst_n_25 : STD_LOGIC;
  signal clk_router_inst_n_26 : STD_LOGIC;
  signal clk_router_inst_n_27 : STD_LOGIC;
  signal clk_router_inst_n_28 : STD_LOGIC;
  signal clk_router_inst_n_29 : STD_LOGIC;
  signal clk_router_inst_n_3 : STD_LOGIC;
  signal clk_router_inst_n_30 : STD_LOGIC;
  signal clk_router_inst_n_31 : STD_LOGIC;
  signal clk_router_inst_n_32 : STD_LOGIC;
  signal clk_router_inst_n_33 : STD_LOGIC;
  signal clk_router_inst_n_34 : STD_LOGIC;
  signal clk_router_inst_n_35 : STD_LOGIC;
  signal clk_router_inst_n_36 : STD_LOGIC;
  signal clk_router_inst_n_37 : STD_LOGIC;
  signal clk_router_inst_n_38 : STD_LOGIC;
  signal clk_router_inst_n_39 : STD_LOGIC;
  signal clk_router_inst_n_4 : STD_LOGIC;
  signal clk_router_inst_n_40 : STD_LOGIC;
  signal clk_router_inst_n_41 : STD_LOGIC;
  signal clk_router_inst_n_42 : STD_LOGIC;
  signal clk_router_inst_n_43 : STD_LOGIC;
  signal clk_router_inst_n_44 : STD_LOGIC;
  signal clk_router_inst_n_45 : STD_LOGIC;
  signal clk_router_inst_n_46 : STD_LOGIC;
  signal clk_router_inst_n_47 : STD_LOGIC;
  signal clk_router_inst_n_48 : STD_LOGIC;
  signal clk_router_inst_n_49 : STD_LOGIC;
  signal clk_router_inst_n_5 : STD_LOGIC;
  signal clk_router_inst_n_50 : STD_LOGIC;
  signal clk_router_inst_n_51 : STD_LOGIC;
  signal clk_router_inst_n_52 : STD_LOGIC;
  signal clk_router_inst_n_53 : STD_LOGIC;
  signal clk_router_inst_n_54 : STD_LOGIC;
  signal clk_router_inst_n_55 : STD_LOGIC;
  signal clk_router_inst_n_56 : STD_LOGIC;
  signal clk_router_inst_n_57 : STD_LOGIC;
  signal clk_router_inst_n_58 : STD_LOGIC;
  signal clk_router_inst_n_59 : STD_LOGIC;
  signal clk_router_inst_n_6 : STD_LOGIC;
  signal clk_router_inst_n_60 : STD_LOGIC;
  signal clk_router_inst_n_61 : STD_LOGIC;
  signal clk_router_inst_n_62 : STD_LOGIC;
  signal clk_router_inst_n_63 : STD_LOGIC;
  signal clk_router_inst_n_64 : STD_LOGIC;
  signal clk_router_inst_n_65 : STD_LOGIC;
  signal clk_router_inst_n_66 : STD_LOGIC;
  signal clk_router_inst_n_67 : STD_LOGIC;
  signal clk_router_inst_n_7 : STD_LOGIC;
  signal clk_router_inst_n_8 : STD_LOGIC;
  signal clk_router_inst_n_9 : STD_LOGIC;
  signal count_ff_reg : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal counting : STD_LOGIC;
  signal read_write_axi_inst_n_42 : STD_LOGIC;
  signal read_write_axi_inst_n_5 : STD_LOGIC;
  signal read_write_axi_inst_n_6 : STD_LOGIC;
  signal read_write_axi_inst_n_7 : STD_LOGIC;
  signal read_write_axi_inst_n_9 : STD_LOGIC;
  signal write_data_ff : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  clk_enabled_o <= \^clk_enabled_o\;
clk_gate_inst: entity work.design_1_clk_gate_top_0_0_clk_gate
     port map (
      CO(0) => counting,
      O(3) => clk_router_inst_n_3,
      O(2) => clk_router_inst_n_4,
      O(1) => clk_router_inst_n_5,
      O(0) => clk_router_inst_n_6,
      S_AXI_ACLK => S_AXI_ACLK,
      clk_enabled_o => \^clk_enabled_o\,
      clk_o => clk_o,
      count_ff_reg(63 downto 0) => count_ff_reg(63 downto 0),
      \count_ff_reg[11]_0\(3) => clk_router_inst_n_11,
      \count_ff_reg[11]_0\(2) => clk_router_inst_n_12,
      \count_ff_reg[11]_0\(1) => clk_router_inst_n_13,
      \count_ff_reg[11]_0\(0) => clk_router_inst_n_14,
      \count_ff_reg[15]_0\(3) => clk_router_inst_n_15,
      \count_ff_reg[15]_0\(2) => clk_router_inst_n_16,
      \count_ff_reg[15]_0\(1) => clk_router_inst_n_17,
      \count_ff_reg[15]_0\(0) => clk_router_inst_n_18,
      \count_ff_reg[19]_0\(3) => clk_router_inst_n_19,
      \count_ff_reg[19]_0\(2) => clk_router_inst_n_20,
      \count_ff_reg[19]_0\(1) => clk_router_inst_n_21,
      \count_ff_reg[19]_0\(0) => clk_router_inst_n_22,
      \count_ff_reg[23]_0\(3) => clk_router_inst_n_23,
      \count_ff_reg[23]_0\(2) => clk_router_inst_n_24,
      \count_ff_reg[23]_0\(1) => clk_router_inst_n_25,
      \count_ff_reg[23]_0\(0) => clk_router_inst_n_26,
      \count_ff_reg[27]_0\(3) => clk_router_inst_n_27,
      \count_ff_reg[27]_0\(2) => clk_router_inst_n_28,
      \count_ff_reg[27]_0\(1) => clk_router_inst_n_29,
      \count_ff_reg[27]_0\(0) => clk_router_inst_n_30,
      \count_ff_reg[31]_0\(3) => clk_router_inst_n_31,
      \count_ff_reg[31]_0\(2) => clk_router_inst_n_32,
      \count_ff_reg[31]_0\(1) => clk_router_inst_n_33,
      \count_ff_reg[31]_0\(0) => clk_router_inst_n_34,
      \count_ff_reg[35]_0\(3) => clk_router_inst_n_35,
      \count_ff_reg[35]_0\(2) => clk_router_inst_n_36,
      \count_ff_reg[35]_0\(1) => clk_router_inst_n_37,
      \count_ff_reg[35]_0\(0) => clk_router_inst_n_38,
      \count_ff_reg[39]_0\(3) => clk_router_inst_n_39,
      \count_ff_reg[39]_0\(2) => clk_router_inst_n_40,
      \count_ff_reg[39]_0\(1) => clk_router_inst_n_41,
      \count_ff_reg[39]_0\(0) => clk_router_inst_n_42,
      \count_ff_reg[43]_0\(3) => clk_router_inst_n_43,
      \count_ff_reg[43]_0\(2) => clk_router_inst_n_44,
      \count_ff_reg[43]_0\(1) => clk_router_inst_n_45,
      \count_ff_reg[43]_0\(0) => clk_router_inst_n_46,
      \count_ff_reg[47]_0\(3) => clk_router_inst_n_47,
      \count_ff_reg[47]_0\(2) => clk_router_inst_n_48,
      \count_ff_reg[47]_0\(1) => clk_router_inst_n_49,
      \count_ff_reg[47]_0\(0) => clk_router_inst_n_50,
      \count_ff_reg[51]_0\(3) => clk_router_inst_n_51,
      \count_ff_reg[51]_0\(2) => clk_router_inst_n_52,
      \count_ff_reg[51]_0\(1) => clk_router_inst_n_53,
      \count_ff_reg[51]_0\(0) => clk_router_inst_n_54,
      \count_ff_reg[55]_0\(3) => clk_router_inst_n_55,
      \count_ff_reg[55]_0\(2) => clk_router_inst_n_56,
      \count_ff_reg[55]_0\(1) => clk_router_inst_n_57,
      \count_ff_reg[55]_0\(0) => clk_router_inst_n_58,
      \count_ff_reg[59]_0\(3) => clk_router_inst_n_59,
      \count_ff_reg[59]_0\(2) => clk_router_inst_n_60,
      \count_ff_reg[59]_0\(1) => clk_router_inst_n_61,
      \count_ff_reg[59]_0\(0) => clk_router_inst_n_62,
      \count_ff_reg[63]_0\ => clk_router_inst_n_67,
      \count_ff_reg[63]_1\(3) => clk_router_inst_n_63,
      \count_ff_reg[63]_1\(2) => clk_router_inst_n_64,
      \count_ff_reg[63]_1\(1) => clk_router_inst_n_65,
      \count_ff_reg[63]_1\(0) => clk_router_inst_n_66,
      \count_ff_reg[7]_0\(3) => clk_router_inst_n_7,
      \count_ff_reg[7]_0\(2) => clk_router_inst_n_8,
      \count_ff_reg[7]_0\(1) => clk_router_inst_n_9,
      \count_ff_reg[7]_0\(0) => clk_router_inst_n_10
    );
clk_router_inst: entity work.design_1_clk_gate_top_0_0_clk_router
     port map (
      CO(0) => counting,
      E(1) => read_write_axi_inst_n_5,
      E(0) => read_write_axi_inst_n_6,
      O(3) => clk_router_inst_n_3,
      O(2) => clk_router_inst_n_4,
      O(1) => clk_router_inst_n_5,
      O(0) => clk_router_inst_n_6,
      Q(31 downto 0) => write_data_ff(31 downto 0),
      SR(0) => clk_router_inst_n_1,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      \clk_count_ff_reg[11]_0\(3) => clk_router_inst_n_11,
      \clk_count_ff_reg[11]_0\(2) => clk_router_inst_n_12,
      \clk_count_ff_reg[11]_0\(1) => clk_router_inst_n_13,
      \clk_count_ff_reg[11]_0\(0) => clk_router_inst_n_14,
      \clk_count_ff_reg[15]_0\(3) => clk_router_inst_n_15,
      \clk_count_ff_reg[15]_0\(2) => clk_router_inst_n_16,
      \clk_count_ff_reg[15]_0\(1) => clk_router_inst_n_17,
      \clk_count_ff_reg[15]_0\(0) => clk_router_inst_n_18,
      \clk_count_ff_reg[19]_0\(3) => clk_router_inst_n_19,
      \clk_count_ff_reg[19]_0\(2) => clk_router_inst_n_20,
      \clk_count_ff_reg[19]_0\(1) => clk_router_inst_n_21,
      \clk_count_ff_reg[19]_0\(0) => clk_router_inst_n_22,
      \clk_count_ff_reg[23]_0\(3) => clk_router_inst_n_23,
      \clk_count_ff_reg[23]_0\(2) => clk_router_inst_n_24,
      \clk_count_ff_reg[23]_0\(1) => clk_router_inst_n_25,
      \clk_count_ff_reg[23]_0\(0) => clk_router_inst_n_26,
      \clk_count_ff_reg[27]_0\(3) => clk_router_inst_n_27,
      \clk_count_ff_reg[27]_0\(2) => clk_router_inst_n_28,
      \clk_count_ff_reg[27]_0\(1) => clk_router_inst_n_29,
      \clk_count_ff_reg[27]_0\(0) => clk_router_inst_n_30,
      \clk_count_ff_reg[31]_0\(3) => clk_router_inst_n_31,
      \clk_count_ff_reg[31]_0\(2) => clk_router_inst_n_32,
      \clk_count_ff_reg[31]_0\(1) => clk_router_inst_n_33,
      \clk_count_ff_reg[31]_0\(0) => clk_router_inst_n_34,
      \clk_count_ff_reg[35]_0\(3) => clk_router_inst_n_35,
      \clk_count_ff_reg[35]_0\(2) => clk_router_inst_n_36,
      \clk_count_ff_reg[35]_0\(1) => clk_router_inst_n_37,
      \clk_count_ff_reg[35]_0\(0) => clk_router_inst_n_38,
      \clk_count_ff_reg[39]_0\(3) => clk_router_inst_n_39,
      \clk_count_ff_reg[39]_0\(2) => clk_router_inst_n_40,
      \clk_count_ff_reg[39]_0\(1) => clk_router_inst_n_41,
      \clk_count_ff_reg[39]_0\(0) => clk_router_inst_n_42,
      \clk_count_ff_reg[43]_0\(3) => clk_router_inst_n_43,
      \clk_count_ff_reg[43]_0\(2) => clk_router_inst_n_44,
      \clk_count_ff_reg[43]_0\(1) => clk_router_inst_n_45,
      \clk_count_ff_reg[43]_0\(0) => clk_router_inst_n_46,
      \clk_count_ff_reg[47]_0\(3) => clk_router_inst_n_47,
      \clk_count_ff_reg[47]_0\(2) => clk_router_inst_n_48,
      \clk_count_ff_reg[47]_0\(1) => clk_router_inst_n_49,
      \clk_count_ff_reg[47]_0\(0) => clk_router_inst_n_50,
      \clk_count_ff_reg[51]_0\(3) => clk_router_inst_n_51,
      \clk_count_ff_reg[51]_0\(2) => clk_router_inst_n_52,
      \clk_count_ff_reg[51]_0\(1) => clk_router_inst_n_53,
      \clk_count_ff_reg[51]_0\(0) => clk_router_inst_n_54,
      \clk_count_ff_reg[55]_0\(3) => clk_router_inst_n_55,
      \clk_count_ff_reg[55]_0\(2) => clk_router_inst_n_56,
      \clk_count_ff_reg[55]_0\(1) => clk_router_inst_n_57,
      \clk_count_ff_reg[55]_0\(0) => clk_router_inst_n_58,
      \clk_count_ff_reg[59]_0\(3) => clk_router_inst_n_59,
      \clk_count_ff_reg[59]_0\(2) => clk_router_inst_n_60,
      \clk_count_ff_reg[59]_0\(1) => clk_router_inst_n_61,
      \clk_count_ff_reg[59]_0\(0) => clk_router_inst_n_62,
      \clk_count_ff_reg[62]_0\(3) => clk_router_inst_n_63,
      \clk_count_ff_reg[62]_0\(2) => clk_router_inst_n_64,
      \clk_count_ff_reg[62]_0\(1) => clk_router_inst_n_65,
      \clk_count_ff_reg[62]_0\(0) => clk_router_inst_n_66,
      \clk_count_ff_reg[7]_0\(3) => clk_router_inst_n_7,
      \clk_count_ff_reg[7]_0\(2) => clk_router_inst_n_8,
      \clk_count_ff_reg[7]_0\(1) => clk_router_inst_n_9,
      \clk_count_ff_reg[7]_0\(0) => clk_router_inst_n_10,
      clk_en => clk_en,
      clk_en_ff_reg_0 => read_write_axi_inst_n_9,
      clk_enabled_o => \^clk_enabled_o\,
      clk_mode => clk_mode,
      clk_mode_ff_reg_0 => read_write_axi_inst_n_42,
      clk_w_count_ff_reg_0 => clk_router_inst_n_67,
      clk_w_count_ff_reg_1 => read_write_axi_inst_n_7,
      count_ff_reg(63 downto 0) => count_ff_reg(63 downto 0)
    );
read_write_axi_inst: entity work.design_1_clk_gate_top_0_0_read_write_axi
     port map (
      CO(0) => counting,
      E(1) => read_write_axi_inst_n_5,
      E(0) => read_write_axi_inst_n_6,
      \FSM_sequential_write_fsm_state_ff_reg[0]_0\ => read_write_axi_inst_n_7,
      Q(31 downto 0) => write_data_ff(31 downto 0),
      SR(0) => clk_router_inst_n_1,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(0) => S_AXI_RDATA(0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WVALID => S_AXI_WVALID,
      clk_en => clk_en,
      clk_mode => clk_mode,
      read_fsm_state_ff_reg_0 => read_fsm_state_ff_reg,
      \write_data_ff_reg[0]_0\ => read_write_axi_inst_n_9,
      \write_data_ff_reg[0]_1\ => read_write_axi_inst_n_42
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_clk_gate_top_0_0 is
  port (
    clk_o : out STD_LOGIC;
    clk_enabled_o : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
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
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_clk_gate_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_clk_gate_top_0_0 : entity is "design_1_clk_gate_top_0_0,clk_gate_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_clk_gate_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_clk_gate_top_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_clk_gate_top_0_0 : entity is "clk_gate_top,Vivado 2024.2.1";
end design_1_clk_gate_top_0_0;

architecture STRUCTURE of design_1_clk_gate_top_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
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
  attribute X_INTERFACE_PARAMETER of S_AXI_AWADDR : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
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
  S_AXI_RDATA(0) <= \^s_axi_rdata\(0);
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_clk_gate_top_0_0_clk_gate_top
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(0) => \^s_axi_rdata\(0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WVALID => S_AXI_WVALID,
      clk_enabled_o => clk_enabled_o,
      clk_o => clk_o,
      read_fsm_state_ff_reg => S_AXI_RVALID
    );
end STRUCTURE;
