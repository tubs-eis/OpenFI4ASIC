library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity DFF_X1_flt is
    port (
        D : in std_ulogic; -- Single-bit data input
        CK : in std_ulogic; -- Main clock signal
        scan_in : in std_ulogic_vector(0 downto 0);
        clk_scan : in std_ulogic; -- Clock for scan chain
        Q : out std_ulogic; -- Single-bit data output
        QN : out std_ulogic;
        scan_out : out std_ulogic_vector(0 downto 0)
    );
end DFF_X1_flt;

architecture rtl of DFF_X1_flt is

    signal main_flip_flop_ff, main_flip_flop_nxt : std_ulogic;
    signal sc_flip_flop_ff, sc_flip_flop_nxt : std_ulogic;

begin

    seq: process(CK, clk_scan) is
    begin
        if rising_edge(CK) then
            main_flip_flop_ff <= main_flip_flop_nxt;
        end if;

        if CK then
            sc_flip_flop_ff <= '0';
        else
            if rising_edge(clk_scan) then
                sc_flip_flop_ff <= sc_flip_flop_nxt;
            end if;
        end if;
    end process;

    fault_logic: process(all) is begin
        if sc_flip_flop_ff then
            main_flip_flop_nxt <= not D;
        else
            main_flip_flop_nxt <= D;
        end if;
    end process;

    sc_flip_flop_nxt <= scan_in(0);

    Q <= main_flip_flop_ff;
    QN <= not main_flip_flop_ff;

    scan_out(0) <= sc_flip_flop_ff;

end rtl;
