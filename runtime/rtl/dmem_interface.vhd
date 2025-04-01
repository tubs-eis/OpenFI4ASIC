library ieee;
use ieee.std_logic_1164.all;

entity dmem_interface is
    port (
        ren_i : in std_ulogic;
        wen_i : in std_ulogic;
        en_o : out std_ulogic;
        web_o : out std_ulogic_vector(3 downto 0)
    );
end entity;

architecture rtl of dmem_interface is
begin

    process (ren_i, wen_i) is
    begin
        en_o <= ren_i or wen_i;
        for i in 0 to web_o'length-1 loop
            web_o(i) <= wen_i;
        end loop;
    end process;

end architecture;
