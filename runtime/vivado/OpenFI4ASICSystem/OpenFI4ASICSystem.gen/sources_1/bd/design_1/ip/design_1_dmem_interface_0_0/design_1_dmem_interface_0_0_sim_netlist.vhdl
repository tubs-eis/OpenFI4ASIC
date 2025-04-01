-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2.1 (lin64) Build 5266912 Sun Dec 15 09:03:31 MST 2024
-- Date        : Tue Apr  1 19:29:31 2025
-- Host        : laptop-homann-25.eis.tu-bs.de running 64-bit Ubuntu 24.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/jhomann/Projects/OpenFLINT/repos/public/OpenFI4ASIC/runtime/vivado/OpenFI4ASICSystem/OpenFI4ASICSystem.gen/sources_1/bd/design_1/ip/design_1_dmem_interface_0_0/design_1_dmem_interface_0_0_sim_netlist.vhdl
-- Design      : design_1_dmem_interface_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dmem_interface_0_0 is
  port (
    ren_i : in STD_LOGIC;
    wen_i : in STD_LOGIC;
    en_o : out STD_LOGIC;
    web_o : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_dmem_interface_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_dmem_interface_0_0 : entity is "design_1_dmem_interface_0_0,dmem_interface,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_dmem_interface_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_dmem_interface_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_dmem_interface_0_0 : entity is "dmem_interface,Vivado 2024.2.1";
end design_1_dmem_interface_0_0;

architecture STRUCTURE of design_1_dmem_interface_0_0 is
  signal \^wen_i\ : STD_LOGIC;
begin
  \^wen_i\ <= wen_i;
  web_o(3) <= \^wen_i\;
  web_o(2) <= \^wen_i\;
  web_o(1) <= \^wen_i\;
  web_o(0) <= \^wen_i\;
en_o_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ren_i,
      I1 => \^wen_i\,
      O => en_o
    );
end STRUCTURE;
