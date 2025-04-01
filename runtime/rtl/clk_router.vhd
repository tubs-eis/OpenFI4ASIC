library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.ALL;

entity clk_router is
    port(
        clk, rst     :  in  std_ulogic;
        data_i       :  in  std_ulogic_vector(31 downto 0);
        w_addr_i     :  in  std_ulogic_vector(5 downto 0);
        r_addr_i     :  in  std_ulogic_vector(5 downto 0);
        clk_callback :  in  std_ulogic;
        data_o       :  out std_ulogic_vector(31 downto 0);
        w_en, r_en   :  in  std_ulogic;
        clk_w_count  :  out std_ulogic;
        clk_en       :  out std_ulogic;
        clk_mode     :  out std_ulogic;
        clk_count    :  out std_ulogic_vector(63 downto 0)
    );
end entity;

architecture rtl of clk_router is
signal clk_en_ff, clk_en_nxt            : std_ulogic;
signal clk_mode_ff, clk_mode_nxt        : std_ulogic;
signal clk_count_ff, clk_count_nxt      : std_ulogic_vector(63 downto 0);
signal clk_w_count_ff, clk_w_count_nxt  : std_ulogic;

begin
    seq : process (clk)
    begin
        if (rising_edge(clk)) then
            if (rst = '0') then
                clk_en_ff <= '0';
                clk_mode_ff <= '0';
                clk_count_ff <= (others => '0');
                clk_w_count_ff <= '0';
            else 
                clk_en_ff <= clk_en_nxt;
                clk_mode_ff <= clk_mode_nxt;
                clk_count_ff <= clk_count_nxt;
                clk_w_count_ff <= clk_w_count_nxt;
            end if;
        end if;
    end process;
    
    write : process (all)
    begin
        clk_en_nxt <= clk_en_ff;
        clk_mode_nxt <= clk_mode_ff;
        clk_count_nxt <= clk_count_ff;
        clk_w_count_nxt <= '0';
        if (w_en = '1') then
            case (to_integer(unsigned(w_addr_i))) is
                when 0 => -- LSB of data into clk_en
                    clk_en_nxt <= data_i(0);
                when 4 => -- LSB of data into clk_mode
                    clk_mode_nxt <= data_i(0);
                when 8 => -- full 32 bits of data into clk_count 
                    clk_count_nxt(31 downto 0) <= data_i;
                    clk_w_count_nxt <= '1';
                when 12 =>
                    clk_count_nxt(63 downto 32) <= data_i;
                    clk_w_count_nxt <= '1';
                when others =>
             end case;
        end if;
    end process;
    
    data_o(31 downto 1) <= (others => '0');
    data_o(0) <= clk_callback;
    
    clk_w_count  <= clk_w_count_ff;
    clk_en <= clk_en_ff;
    clk_mode <= clk_mode_ff;
    clk_count <= clk_count_ff;
end rtl;
