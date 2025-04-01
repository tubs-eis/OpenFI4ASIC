library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library fault_injection;

entity clk_gate_top is
    generic (
        C_S_AXI_DATA_WIDTH : integer := 32;
        C_S_AXI_ADDR_WIDTH : integer := 6
    );
    port(
        -- User Ports
        clk_o : out std_ulogic;
        clk_enabled_o : out std_ulogic;

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
end clk_gate_top;

architecture rtl of clk_gate_top is

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

    clk_gate_inst: entity fault_injection.clk_gate
     port map(
        clk_i => S_AXI_ACLK,
        clk_o => clk_o,
        mode_i => clk_mode,
        count_i => clk_count,
        set_count_i => clk_w_count,
        enable_i => clk_en,
        enabled_o => clk_enabled_o,
        callback_o => clk_callback
    );

    clk_router_inst: entity fault_injection.clk_router
     port map(
        clk => S_AXI_ACLK,
        rst => S_AXI_ARESETN,
        data_i => w_data,
        w_addr_i => w_addr,
        r_addr_i => r_addr,
        clk_callback => clk_callback,
        data_o => r_data,
        w_en => w_en,
        r_en => r_en,
        clk_w_count => clk_w_count,
        clk_en => clk_en,
        clk_mode => clk_mode,
        clk_count => clk_count
    );

end architecture;