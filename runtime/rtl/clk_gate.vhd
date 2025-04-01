library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.ALL;

library unisim;
use unisim.vcomponents.all;

entity clk_gate is
    port(
        clk_i       :   in std_ulogic;
        clk_o       :   out std_ulogic;
        mode_i      :   in std_ulogic; -- 0 for simple on/off vs. 1 for run for n cycles
        count_i     :   in std_ulogic_vector(63 downto 0);
        set_count_i :	in std_ulogic;
        enable_i    :   in std_ulogic;
        enabled_o   :   out std_ulogic;
        callback_o  :   out std_ulogic
    );
end entity;

architecture rtl of clk_gate is
    signal count_ff, count_nxt  : std_ulogic_vector(63 downto 0);
    signal counting             : std_ulogic;
    signal enable_clock         : std_ulogic;
begin
    set_count: process (all)
    begin
        if (rising_edge(clk_i)) then
            count_ff <= count_nxt;
            if (set_count_i = '1') then
                count_ff <= count_i;
            end if;
        end if;
    end process;

    count_pr: process (all)
    begin
        count_nxt <= count_ff;
        if (mode_i = '1' and unsigned(count_ff)>0 and enable_i = '1') then
            count_nxt <= std_ulogic_vector(unsigned(count_ff) -1);
        end if;
    end process;

    counting <= '1' when (unsigned(count_ff) > 0) else '0';
    callback_o <= mode_i and not counting;

    enable_clock <= enable_i when (mode_i = '0') else (enable_i and counting);

    -- Variante A:
    -- Clock enable via BUFGCE
    BUFGCE_inst : BUFGCE
    generic map (
        CE_TYPE => "SYNC",              -- ASYNC, HARDSYNC, SYNC
        IS_CE_INVERTED => '0',          -- Programmable inversion on CE
        IS_I_INVERTED => '0'            -- Programmable inversion on I
    )
    port map (
        O => clk_o,   -- 1-bit output: Buffer
        CE => enable_clock, -- 1-bit input: Buffer enable
        I => clk_i    -- 1-bit input: Buffer
    );

    enabled_o <= enable_clock;

    -- Variante B: clock enable via logic
    -- clk_o <= clk_i and enable_clock;
end rtl;

