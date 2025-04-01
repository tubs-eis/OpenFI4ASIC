library ieee;
use ieee.std_logic_1164.all;

entity imem_interface is
    port (
        ren_i : in std_ulogic;
        en_o : out std_ulogic;
        web_o : out std_ulogic_vector(3 downto 0)
    );
end entity;

architecture rtl of imem_interface is
begin

    en_o <= ren_i;
    web_o <= "0000";

end architecture;
