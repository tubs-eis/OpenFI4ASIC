library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library fault_injection;

entity clock_gen is
    generic (
        SCAN_CHAIN_CLKDIV : integer;
        MAIN_CLKDIV_REL   : integer
    );
    port (
        clk_i            : in  std_ulogic;
        main_clk_o       : out std_ulogic;
        scan_chain_clk_o : out std_ulogic
    );
end entity;

architecture rtl of clock_gen is

    signal mmcm_clkfb : std_ulogic;

    component MMCME2_BASE is
        generic (
            CLKIN1_PERIOD   : real;
            DIVCLK_DIVIDE   : integer;
            CLKFBOUT_MULT_F : real;
            CLKOUT1_DIVIDE  : integer;
            CLKOUT2_DIVIDE  : integer;
            STARTUP_WAIT    : boolean
        );
        port (
            CLKFBOUT : out std_ulogic;
            CLKFBIN  : in  std_ulogic;
            CLKIN1   : in  std_ulogic;
            CLKOUT1  : out std_ulogic;
            CLKOUT2  : out std_ulogic
        );
    end component;

begin

    mmcm_inst: MMCME2_BASE
        generic map (
            CLKIN1_PERIOD   => 10.0,
            DIVCLK_DIVIDE   => 1,
            CLKFBOUT_MULT_F => 8.0,
            CLKOUT1_DIVIDE  => SCAN_CHAIN_CLKDIV * MAIN_CLKDIV_REL,
            CLKOUT2_DIVIDE  => SCAN_CHAIN_CLKDIV,
            STARTUP_WAIT    => true
        )
        port map (
            CLKFBOUT => mmcm_clkfb,
            CLKFBIN  => mmcm_clkfb,
            CLKIN1   => clk_i,
            CLKOUT1  => main_clk_o,
            CLKOUT2  => scan_chain_clk_o
        );

end architecture;