library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.ALL;

entity periph_reset_router is
    port(
        clk, rst     :  in  std_ulogic;
        main_clk     :  in  std_ulogic;
        w_en         :  in  std_ulogic;
        rst_i        :  in  std_ulogic;
        rst_o        :  out std_ulogic
    );
end entity;

architecture rtl of periph_reset_router is
    -- Global CLK FFs
    signal active_ff, active_nxt : std_ulogic;
    signal rst_ff, rst_nxt : std_ulogic;
    
    -- Main CLK FFs
    signal done_ff, done_nxt : std_ulogic;

begin
    seq : process (clk)
    begin
        if (rising_edge(clk)) then
            if (rst = '0') then
                active_ff <= '0';
                rst_ff <= '1';
            else 
                active_ff <= active_nxt;
                rst_ff <= rst_nxt;
            end if;
        end if;
    end process;

    scn_clk_seq : process (main_clk)
    begin
        if (rising_edge(main_clk)) then
            if (rst = '0') then
                done_ff <= '0';
            else 
                done_ff <= done_nxt;
            end if;
        end if;
    end process;
    
    write : process (all)
    begin
        active_nxt <= active_ff;
        rst_nxt <= rst_ff;

        if done_ff then
            active_nxt <= '0';
        end if;

        if (w_en = '1') then
                rst_nxt <= rst_i;
                active_nxt <= '1';
        end if;
    end process;

    process (all)
    begin
        done_nxt <= done_ff;
        
        if not active_ff then
            done_nxt <= '0';
        end if;

        if active_ff and not done_ff then
            rst_o <= rst_ff;
            done_nxt <= '1';
        else 
            rst_o <= rst;
        end if;
    end process;
    
end rtl;
