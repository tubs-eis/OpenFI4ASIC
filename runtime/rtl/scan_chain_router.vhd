library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.ALL;

entity scan_chain_router is
    generic (
        SCN_CHN_WIDTH : integer
    );
    port(
        clk, rst     :  in  std_ulogic;
        scn_chn_clk  :  in  std_ulogic;
        data_i       :  in  std_ulogic_vector(SCN_CHN_WIDTH-1 downto 0);
        w_addr_i     :  in  std_ulogic_vector(0 downto 0);
        w_en         :  in  std_ulogic;
        scan_chain_o :  out std_ulogic_vector(SCN_CHN_WIDTH-1 downto 0)
    );
end entity;

architecture rtl of scan_chain_router is
    -- Global CLK FFs
    signal scan_chain_ff, scan_chain_nxt : std_ulogic_vector(SCN_CHN_WIDTH-1 downto 0);
    signal active_ff, active_nxt : std_ulogic;
    
    -- Scan CLK FFs
    signal done_ff, done_nxt : std_ulogic;

begin
    seq : process (clk)
    begin
        if (rising_edge(clk)) then
            if (rst = '0') then
                scan_chain_ff <= (others => '0');
                active_ff <= '0';
            else 
                scan_chain_ff <= scan_chain_nxt;
                active_ff <= active_nxt;
            end if;
        end if;
    end process;

    scn_clk_seq : process (scn_chn_clk)
    begin
        if (rising_edge(scn_chn_clk)) then
            if (rst = '0') then
                done_ff <= '0';
            else 
                done_ff <= done_nxt;
            end if;
        end if;
    end process;
    
    write : process (all)
    begin
        scan_chain_nxt <= scan_chain_ff;
        active_nxt <= active_ff;

        if done_ff then
            active_nxt <= '0';
        end if;

        if (w_en = '1') then
            if (w_addr_i = "0") then 
                scan_chain_nxt <= data_i;
                active_nxt <= '1';
            end if;
        end if;
    end process;

    process (all)
    begin
        done_nxt <= done_ff;
        
        if not active_ff then
            done_nxt <= '0';
        end if;

        if active_ff and not done_ff then
            scan_chain_o <= scan_chain_ff;
            done_nxt <= '1';
        else 
            scan_chain_o <= (others => '0');
        end if;
    end process;
    
end rtl;
