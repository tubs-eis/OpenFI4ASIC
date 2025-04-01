library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library fault_injection;

entity reset_top is
    generic (
        C_S_AXI_DATA_WIDTH : integer := 32;
        C_S_AXI_ADDR_WIDTH : integer := 5
    );
    port(
        -- User Ports
        main_clk      : in  std_ulogic;
        rst_o         : out std_ulogic;

        -- AXI Ports
        S_AXI_ACLK    : in  std_ulogic;
        S_AXI_ARESETN : in  std_ulogic;
        S_AXI_AWADDR  : in  std_ulogic_vector(C_S_AXI_ADDR_WIDTH - 1 downto 0);
        S_AXI_AWPROT  : in  std_ulogic_vector(2 downto 0);
        S_AXI_AWVALID : in  std_ulogic;
        S_AXI_AWREADY : out std_ulogic;
        S_AXI_WDATA   : in  std_ulogic_vector(C_S_AXI_DATA_WIDTH - 1 downto 0);
        S_AXI_WSTRB   : in  std_ulogic_vector((C_S_AXI_DATA_WIDTH / 8) - 1 downto 0);
        S_AXI_WVALID  : in  std_ulogic;
        S_AXI_WREADY  : out std_ulogic;
        S_AXI_BRESP   : out std_ulogic_vector(1 downto 0);
        S_AXI_BVALID  : out std_ulogic;
        S_AXI_BREADY  : in  std_ulogic;
        S_AXI_ARADDR  : in  std_ulogic_vector(C_S_AXI_ADDR_WIDTH - 1 downto 0);
        S_AXI_ARPROT  : in  std_ulogic_vector(2 downto 0);
        S_AXI_ARVALID : in  std_ulogic;
        S_AXI_ARREADY : out std_ulogic;
        S_AXI_RDATA   : out std_ulogic_vector(C_S_AXI_DATA_WIDTH - 1 downto 0);
        S_AXI_RRESP   : out std_ulogic_vector(1 downto 0);
        S_AXI_RVALID  : out std_ulogic;
        S_AXI_RREADY  : in  std_ulogic
    );
end entity;

architecture rtl of reset_top is
    signal data_i : std_ulogic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal w_en   : std_ulogic;
begin

    read_write_axi_inst: entity fault_injection.read_write_axi
     generic map(
        C_S_AXI_DATA_WIDTH => C_S_AXI_DATA_WIDTH,
        C_S_AXI_ADDR_WIDTH => C_S_AXI_ADDR_WIDTH
    )
     port map(
        data_o => data_i,
        data_i => (others => '0'),
        flag_w => w_en,
        --unused output: flag_r => ,
        --unused output: w_addr_o => ,
        --unused output: r_addr_o => ,
        S_AXI_ACLK => S_AXI_ACLK,
        S_AXI_ARESETN => S_AXI_ARESETN,
        S_AXI_AWADDR => S_AXI_AWADDR,
        S_AXI_AWPROT => S_AXI_AWPROT,
        S_AXI_AWVALID => S_AXI_AWVALID,
        S_AXI_AWREADY => S_AXI_AWREADY,
        S_AXI_WDATA => S_AXI_WDATA,
        S_AXI_WSTRB => S_AXI_WSTRB,
        S_AXI_WVALID => S_AXI_WVALID,
        S_AXI_WREADY => S_AXI_WREADY,
        S_AXI_BRESP => S_AXI_BRESP,
        S_AXI_BVALID => S_AXI_BVALID,
        S_AXI_BREADY => S_AXI_BREADY,
        S_AXI_ARADDR => S_AXI_ARADDR,
        S_AXI_ARPROT => S_AXI_ARPROT,
        S_AXI_ARVALID => S_AXI_ARVALID,
        S_AXI_ARREADY => S_AXI_ARREADY,
        S_AXI_RDATA => S_AXI_RDATA,
        S_AXI_RRESP => S_AXI_RRESP,
        S_AXI_RVALID => S_AXI_RVALID,
        S_AXI_RREADY => S_AXI_RREADY
    );

    periph_reset_router_inst: entity fault_injection.periph_reset_router
     port map (
        clk         =>  S_AXI_ACLK,
        rst         =>  S_AXI_ARESETN,
        main_clk    =>  main_clk,
        w_en        =>  w_en,
        rst_i       =>  data_i(0),
        rst_o       =>  rst_o
     );

end architecture;