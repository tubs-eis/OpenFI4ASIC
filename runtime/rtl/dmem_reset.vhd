library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library fault_injection;

entity dmem_reset is
    generic (
        ADDR_WIDTH : natural := 9;
        DATA_BYTES : natural := 4
    );
    port (
        -- AXI Bus ports
        addr_i :  in std_ulogic_vector(ADDR_WIDTH-1 downto 0);
        clk_i  :  in std_ulogic;
        rst_i  :  in std_ulogic;
        din_i  :  in std_ulogic_vector(DATA_BYTES*8 - 1 downto 0);
        dout_o : out std_ulogic_vector(DATA_BYTES*8 - 1 downto 0);
        en_i   :  in std_ulogic;
        we_i   :  in std_ulogic_vector(DATA_BYTES-1 downto 0);

        -- DMEM ports
        addr_o : out std_ulogic_vector(ADDR_WIDTH-1 downto 0);
        clk_o  : out std_ulogic;
        rst_o  : out std_ulogic;
        din_o  : out std_ulogic_vector(DATA_BYTES*8 - 1 downto 0);
        dout_i :  in std_ulogic_vector(DATA_BYTES*8 - 1 downto 0);
        en_o   : out std_ulogic;
        we_o   : out std_ulogic_vector(DATA_BYTES-1 downto 0)
    );
end entity;

architecture rtl of dmem_reset is

    signal active_ff, active_nxt : std_ulogic;
    type command_t is (COPY, SET);
    signal command_ff, command_nxt : command_t;

    signal addr_counter_ff, addr_counter_nxt : std_ulogic_vector(ADDR_WIDTH-1 downto 0);

    signal addr_reg : std_ulogic_vector(ADDR_WIDTH-1 downto 0);
    signal en_reg : std_ulogic;
    signal we_reg : std_ulogic_vector(DATA_BYTES-1 downto 0);

    type ram_t is array (0 to 2**ADDR_WIDTH-1) of std_ulogic_vector(DATA_BYTES*8-1 downto 0);
    signal ram : ram_t := (others => (others => '0'));

    signal bram_wdata : std_ulogic_vector(DATA_BYTES*8-1 downto 0);
    signal bram_rdata : std_ulogic_vector(DATA_BYTES*8-1 downto 0);
    signal bram_write : std_ulogic;

begin

    seq: process (clk_i) is begin
        if rising_edge(clk_i) then
            if rst_i then
                active_ff <= '0';
                addr_counter_ff <= (others => '0');
            else
                active_ff <= active_nxt;
                addr_counter_ff <= addr_counter_nxt;

                command_ff <= command_nxt;
                addr_reg <= addr_i;
                en_reg <= en_i;
                we_reg <= we_i;
            end if;
        end if;
    end process;

    bram: process (clk_i) is
    begin
        if rising_edge(clk_i) then
            bram_rdata <= ram(to_integer(unsigned(addr_counter_nxt)));
            if bram_write then
                ram(to_integer(unsigned(addr_counter_ff))) <= bram_wdata;
            end if;
        end if;
    end process;

    comb: process (all) is
        variable addr_counter_nxt_var : std_ulogic_vector(ADDR_WIDTH-1 downto 0);
    begin
        active_nxt <= active_ff;
        addr_counter_nxt_var := addr_counter_ff;

        -- Default BRAM
        bram_write <= '0';
        bram_wdata <= (others => '0');

        -- Default pass through
        addr_o <= addr_i;
        clk_o <= clk_i;
        rst_o <= rst_i;
        din_o <= din_i;
        dout_o <= dout_i;
        en_o <= en_i;
        we_o <= we_i;

        if (and addr_reg) and en_reg then
            -- Overwrite read with fsm state
            dout_o <= (0 => active_ff, others => '0');

            -- Check if writing
            if (or we_reg) then
                active_nxt <= '1';
                command_nxt <= SET;
                if din_i(0) then
                    command_nxt <= COPY;

                    -- Alredy perform first read here
                    addr_counter_nxt_var := (others => '0');
                    addr_o <= addr_counter_nxt_var;
                    en_o <= '1';
                    we_o <= (others => '0');
                end if;
            end if;
        end if;

        if active_ff then
            addr_counter_nxt_var := std_ulogic_vector(unsigned(addr_counter_ff) + 1);
            if (and addr_counter_ff) then
                -- Counter reached end of dmem
                active_nxt <= '0';
            end if;

            if command_ff = SET then
                -- Reset active, copy BRAM to dmem everywhere
                addr_o <= addr_counter_ff;
                din_o <= bram_rdata;
                en_o <= '1';
                we_o <= (others => '1');
            elsif command_ff = COPY then
                -- Read dmem and copy to BRAM
                addr_o <= addr_counter_nxt_var;
                din_o <= (others => '0');
                en_o <= '1';
                we_o <= (others => '0');

                bram_wdata <= dout_i;
                bram_write <= '1';
            end if;
        end if;

        addr_counter_nxt <= addr_counter_nxt_var;
    end process;

end architecture;