library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dual_clock_bram is
    generic (
        ADDR_WIDTH : natural := 9;
        DATA_BYTES : natural := 4;
        ASYNC_PORT_B : boolean := false
    );
    port (
        -- Port A
        addra : in std_ulogic_vector(ADDR_WIDTH-1 downto 0);
        clka : in std_ulogic;
        rsta : in std_ulogic;
        dina : in std_ulogic_vector(DATA_BYTES*8 - 1 downto 0);
        douta : out std_ulogic_vector(DATA_BYTES*8 - 1 downto 0);
        ena : in std_ulogic;
        wea : in std_ulogic_vector(DATA_BYTES-1 downto 0);
        -- Port B
        addrb : in std_ulogic_vector(ADDR_WIDTH-1 downto 0);
        clkb : in std_ulogic;
        rstb : in std_ulogic;
        dinb : in std_ulogic_vector(DATA_BYTES*8 - 1 downto 0);
        doutb : out std_ulogic_vector(DATA_BYTES*8 - 1 downto 0);
        enb : in std_ulogic;
        web : in std_ulogic_vector(DATA_BYTES-1 downto 0)
    );

    attribute KEEP_HIERARCHY : string;
    attribute KEEP_HIERARCHY of dual_clock_bram : entity is "TRUE";

end entity;

architecture rtl of dual_clock_bram is

    type ram_t is array (0 to 2**ADDR_WIDTH-1) of std_ulogic_vector(DATA_BYTES*8 - 1 downto 0);
    signal ram : ram_t := (others => (others => '0'));

    attribute RAM_STYLE : string;
    attribute RAM_STYLE of ram : signal is "distributed";

begin

    gen_ram : if not ASYNC_PORT_B generate

        process (clka, clkb) is
        begin
            if rising_edge(clka) then
                if ena = '1' then
                    douta <= RAM(to_integer(unsigned(addra)));
                    for i in 0 to DATA_BYTES-1 loop
                        if wea(i) = '1' then
                            RAM(to_integer(unsigned(addra)))((i+1)*8-1 downto i*8) <= dina((i+1)*8-1 downto i*8);
                        end if;
                    end loop;
                end if;
            end if;

            if rising_edge(clkb) then
                if enb = '1' then
                    doutb <= RAM(to_integer(unsigned(addrb)));
                    for i in 0 to DATA_BYTES-1 loop
                        if web(i) = '1' then
                            RAM(to_integer(unsigned(addrb)))((i+1)*8-1 downto i*8) <= dinb((i+1)*8-1 downto i*8);
                        end if;
                    end loop;
                end if;
            end if;
        end process;

    else generate

        process (clka, clkb) is
        begin
            if rising_edge(clka) then
                if ena = '1' then
                    douta <= RAM(to_integer(unsigned(addra)));
                end if;

                if ena = '1' and (?? (or wea)) then
                    for i in 0 to DATA_BYTES-1 loop
                        if wea(i) = '1' then
                            RAM(to_integer(unsigned(addra)))((i+1)*8-1 downto i*8) <= dina((i+1)*8-1 downto i*8);
                        end if;
                    end loop;
                elsif enb = '1' and (?? (or web)) then
                    for i in 0 to DATA_BYTES-1 loop
                        if web(i) = '1' then
                            RAM(to_integer(unsigned(addrb)))((i+1)*8-1 downto i*8) <= dinb((i+1)*8-1 downto i*8);
                        end if;
                    end loop;
                end if;
            end if;
        end process;

        doutb <= RAM(to_integer(unsigned(addrb)));

    end generate;

end architecture;