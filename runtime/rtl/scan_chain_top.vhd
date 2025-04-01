library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library fault_injection;

entity scan_chain_top is
    generic (
        SCN_CHN_WIDTH : integer;
        C_S_AXI_DATA_WIDTH : integer := 32;
        C_S_AXI_ADDR_WIDTH : integer := 1
    );
    port(
        -- User Ports
        scan_chain_o : out std_ulogic_vector(SCN_CHN_WIDTH - 1 downto 0);
        scn_chn_clk_i : in std_ulogic;

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
end scan_chain_top;

architecture rtl of scan_chain_top is

    signal w_data : std_ulogic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal r_data : std_ulogic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal w_addr : std_ulogic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    signal r_addr : std_ulogic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    signal w_en : std_ulogic;
    signal r_en : std_ulogic;
    signal clk_callback : std_ulogic;
    signal clk_w_count : std_ulogic;
    signal clk_en : std_ulogic;
    signal clk_mode : std_ulogic;
    signal clk_count : std_ulogic_vector(63 downto 0);

begin

    read_write_axi_inst: entity fault_injection.read_write_axi
     generic map(
        C_S_AXI_DATA_WIDTH => C_S_AXI_DATA_WIDTH,
        C_S_AXI_ADDR_WIDTH => C_S_AXI_ADDR_WIDTH
    )
     port map(
        data_o => w_data,
        data_i => r_data,
        flag_w => w_en,
        flag_r => r_en,
        w_addr_o => w_addr,
        r_addr_o => r_addr,
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

    scan_chain_router_inst: entity fault_injection.scan_chain_router
     generic map(
        SCN_CHN_WIDTH => SCN_CHN_WIDTH
    )
     port map(
        clk => S_AXI_ACLK,
        rst => S_AXI_ARESETN,
        scn_chn_clk => scn_chn_clk_i,
        data_i => w_data(SCN_CHN_WIDTH - 1 downto 0),
        w_addr_i => w_addr,
        w_en => w_en,
        scan_chain_o => scan_chain_o
    );

end architecture;