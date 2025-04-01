library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.ALL;

entity pc_monitor_router is
    port(
        clk, rst     :  in  std_ulogic;
        r_en         :  in  std_ulogic;
        pc_i         :  in  std_ulogic_vector(31 downto 0);
        data_o       :  out std_ulogic_vector(31 downto 0)
    );
end entity;

architecture rtl of pc_monitor_router is
begin

    data_o <= pc_i when r_en else x"DEADBEEF";

end rtl;
