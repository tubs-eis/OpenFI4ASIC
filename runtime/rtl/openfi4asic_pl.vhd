library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library fault_injection;

entity openfi4asic_pl is
    generic (
        MEM_ADDR_WORDS_LOG2 : integer := 11
    );
    port (
        -- Main clock gate AXI
        main_clk_gate_S_AXI_ACLK    : in std_ulogic;
        main_clk_gate_S_AXI_ARESETN : in std_ulogic;
        main_clk_gate_S_AXI_AWADDR  : in  std_ulogic_vector(6 - 1 downto 0);
        main_clk_gate_S_AXI_AWPROT  : in  std_ulogic_vector(2 downto 0);
        main_clk_gate_S_AXI_AWVALID : in  std_ulogic;
        main_clk_gate_S_AXI_AWREADY : out std_ulogic;
        main_clk_gate_S_AXI_WDATA   : in  std_ulogic_vector(32 - 1 downto 0);
        main_clk_gate_S_AXI_WSTRB   : in  std_ulogic_vector((32 / 8) - 1 downto 0);
        main_clk_gate_S_AXI_WVALID  : in  std_ulogic;
        main_clk_gate_S_AXI_WREADY  : out std_ulogic;
        main_clk_gate_S_AXI_BRESP   : out std_ulogic_vector(1 downto 0);
        main_clk_gate_S_AXI_BVALID  : out std_ulogic;
        main_clk_gate_S_AXI_BREADY  : in  std_ulogic;
        main_clk_gate_S_AXI_ARADDR  : in  std_ulogic_vector(6 - 1 downto 0);
        main_clk_gate_S_AXI_ARPROT  : in  std_ulogic_vector(2 downto 0);
        main_clk_gate_S_AXI_ARVALID : in  std_ulogic;
        main_clk_gate_S_AXI_ARREADY : out std_ulogic;
        main_clk_gate_S_AXI_RDATA   : out std_ulogic_vector(32 - 1 downto 0);
        main_clk_gate_S_AXI_RRESP   : out std_ulogic_vector(1 downto 0);
        main_clk_gate_S_AXI_RVALID  : out std_ulogic;
        main_clk_gate_S_AXI_RREADY  : in  std_ulogic;

        -- Scan chain clock gate AXI
        scan_clk_gate_S_AXI_ACLK    : in std_ulogic;
        scan_clk_gate_S_AXI_ARESETN : in std_ulogic;
        scan_clk_gate_S_AXI_AWADDR  : in  std_ulogic_vector(6 - 1 downto 0);
        scan_clk_gate_S_AXI_AWPROT  : in  std_ulogic_vector(2 downto 0);
        scan_clk_gate_S_AXI_AWVALID : in  std_ulogic;
        scan_clk_gate_S_AXI_AWREADY : out std_ulogic;
        scan_clk_gate_S_AXI_WDATA   : in  std_ulogic_vector(32 - 1 downto 0);
        scan_clk_gate_S_AXI_WSTRB   : in  std_ulogic_vector((32 / 8) - 1 downto 0);
        scan_clk_gate_S_AXI_WVALID  : in  std_ulogic;
        scan_clk_gate_S_AXI_WREADY  : out std_ulogic;
        scan_clk_gate_S_AXI_BRESP   : out std_ulogic_vector(1 downto 0);
        scan_clk_gate_S_AXI_BVALID  : out std_ulogic;
        scan_clk_gate_S_AXI_BREADY  : in  std_ulogic;
        scan_clk_gate_S_AXI_ARADDR  : in  std_ulogic_vector(6 - 1 downto 0);
        scan_clk_gate_S_AXI_ARPROT  : in  std_ulogic_vector(2 downto 0);
        scan_clk_gate_S_AXI_ARVALID : in  std_ulogic;
        scan_clk_gate_S_AXI_ARREADY : out std_ulogic;
        scan_clk_gate_S_AXI_RDATA   : out std_ulogic_vector(32 - 1 downto 0);
        scan_clk_gate_S_AXI_RRESP   : out std_ulogic_vector(1 downto 0);
        scan_clk_gate_S_AXI_RVALID  : out std_ulogic;
        scan_clk_gate_S_AXI_RREADY  : in  std_ulogic;

        -- Scan chain controller AXI
        scan_chain_S_AXI_ACLK    : in std_ulogic;
        scan_chain_S_AXI_ARESETN : in std_ulogic;
        scan_chain_S_AXI_AWADDR  : in  std_ulogic_vector(1 - 1 downto 0);
        scan_chain_S_AXI_AWPROT  : in  std_ulogic_vector(2 downto 0);
        scan_chain_S_AXI_AWVALID : in  std_ulogic;
        scan_chain_S_AXI_AWREADY : out std_ulogic;
        scan_chain_S_AXI_WDATA   : in  std_ulogic_vector(32 - 1 downto 0);
        scan_chain_S_AXI_WSTRB   : in  std_ulogic_vector((32 / 8) - 1 downto 0);
        scan_chain_S_AXI_WVALID  : in  std_ulogic;
        scan_chain_S_AXI_WREADY  : out std_ulogic;
        scan_chain_S_AXI_BRESP   : out std_ulogic_vector(1 downto 0);
        scan_chain_S_AXI_BVALID  : out std_ulogic;
        scan_chain_S_AXI_BREADY  : in  std_ulogic;
        scan_chain_S_AXI_ARADDR  : in  std_ulogic_vector(1 - 1 downto 0);
        scan_chain_S_AXI_ARPROT  : in  std_ulogic_vector(2 downto 0);
        scan_chain_S_AXI_ARVALID : in  std_ulogic;
        scan_chain_S_AXI_ARREADY : out std_ulogic;
        scan_chain_S_AXI_RDATA   : out std_ulogic_vector(32 - 1 downto 0);
        scan_chain_S_AXI_RRESP   : out std_ulogic_vector(1 downto 0);
        scan_chain_S_AXI_RVALID  : out std_ulogic;
        scan_chain_S_AXI_RREADY  : in  std_ulogic;

        -- Reset Controller AXI
        r3s3t_S_AXI_ACLK    : in std_ulogic;
        r3s3t_S_AXI_ARESETN : in std_ulogic;
        r3s3t_S_AXI_AWADDR  : in  std_ulogic_vector(5 - 1 downto 0);
        r3s3t_S_AXI_AWPROT  : in  std_ulogic_vector(2 downto 0);
        r3s3t_S_AXI_AWVALID : in  std_ulogic;
        r3s3t_S_AXI_AWREADY : out std_ulogic;
        r3s3t_S_AXI_WDATA   : in  std_ulogic_vector(32 - 1 downto 0);
        r3s3t_S_AXI_WSTRB   : in  std_ulogic_vector((32 / 8) - 1 downto 0);
        r3s3t_S_AXI_WVALID  : in  std_ulogic;
        r3s3t_S_AXI_WREADY  : out std_ulogic;
        r3s3t_S_AXI_BRESP   : out std_ulogic_vector(1 downto 0);
        r3s3t_S_AXI_BVALID  : out std_ulogic;
        r3s3t_S_AXI_BREADY  : in  std_ulogic;
        r3s3t_S_AXI_ARADDR  : in  std_ulogic_vector(5 - 1 downto 0);
        r3s3t_S_AXI_ARPROT  : in  std_ulogic_vector(2 downto 0);
        r3s3t_S_AXI_ARVALID : in  std_ulogic;
        r3s3t_S_AXI_ARREADY : out std_ulogic;
        r3s3t_S_AXI_RDATA   : out std_ulogic_vector(32 - 1 downto 0);
        r3s3t_S_AXI_RRESP   : out std_ulogic_vector(1 downto 0);
        r3s3t_S_AXI_RVALID  : out std_ulogic;
        r3s3t_S_AXI_RREADY  : in  std_ulogic;

        -- PC Monitor AXI
        pc_monitor_S_AXI_ACLK    : in std_ulogic;
        pc_monitor_S_AXI_ARESETN : in std_ulogic;
        pc_monitor_S_AXI_AWADDR  : in  std_ulogic_vector(1 - 1 downto 0);
        pc_monitor_S_AXI_AWPROT  : in  std_ulogic_vector(2 downto 0);
        pc_monitor_S_AXI_AWVALID : in  std_ulogic;
        pc_monitor_S_AXI_AWREADY : out std_ulogic;
        pc_monitor_S_AXI_WDATA   : in  std_ulogic_vector(32 - 1 downto 0);
        pc_monitor_S_AXI_WSTRB   : in  std_ulogic_vector((32 / 8) - 1 downto 0);
        pc_monitor_S_AXI_WVALID  : in  std_ulogic;
        pc_monitor_S_AXI_WREADY  : out std_ulogic;
        pc_monitor_S_AXI_BRESP   : out std_ulogic_vector(1 downto 0);
        pc_monitor_S_AXI_BVALID  : out std_ulogic;
        pc_monitor_S_AXI_BREADY  : in  std_ulogic;
        pc_monitor_S_AXI_ARADDR  : in  std_ulogic_vector(1 - 1 downto 0);
        pc_monitor_S_AXI_ARPROT  : in  std_ulogic_vector(2 downto 0);
        pc_monitor_S_AXI_ARVALID : in  std_ulogic;
        pc_monitor_S_AXI_ARREADY : out std_ulogic;
        pc_monitor_S_AXI_RDATA   : out std_ulogic_vector(32 - 1 downto 0);
        pc_monitor_S_AXI_RRESP   : out std_ulogic_vector(1 downto 0);
        pc_monitor_S_AXI_RVALID  : out std_ulogic;
        pc_monitor_S_AXI_RREADY  : in  std_ulogic;

        -- BRAM 1 (IMEM) AXI BRAM CTRL Port
        imem_bram_addr_a              : in  std_ulogic_vector(MEM_ADDR_WORDS_LOG2 + 2 - 1 downto 0);
        imem_bram_clk_a               : in  std_ulogic;
        imem_bram_wrdata_a            : in  std_ulogic_vector(31 downto 0);
        imem_bram_rddata_a            : out std_ulogic_vector(31 downto 0);
        imem_bram_en_a                : in  std_ulogic;
        imem_bram_rst_a               : in  std_ulogic;
        imem_bram_we_a                : in  std_ulogic_vector(3 downto 0);

        -- BRAM 2 (DMEM) AXI BRAM CTRL Port
        dmem_bram_addr_a              : in  std_ulogic_vector(MEM_ADDR_WORDS_LOG2 + 2 - 1 downto 0);
        dmem_bram_clk_a               : in  std_ulogic;
        dmem_bram_wrdata_a            : in  std_ulogic_vector(31 downto 0);
        dmem_bram_rddata_a            : out std_ulogic_vector(31 downto 0);
        dmem_bram_en_a                : in  std_ulogic;
        dmem_bram_rst_a               : in  std_ulogic;
        dmem_bram_we_a                : in  std_ulogic_vector(3 downto 0)
    );
end entity;

architecture rtl of openfi4asic_pl is

    -- Memory port attributes
    attribute X_INTERFACE_INFO : string;
    attribute X_INTERFACE_PARAMETER : string;

    attribute X_INTERFACE_INFO of imem_bram_addr_a: signal is "xilinx.com:interface:bram:1.0 IMEM_PORTA ADDR";
    attribute X_INTERFACE_INFO of imem_bram_clk_a: signal is "xilinx.com:interface:bram:1.0 IMEM_PORTA CLK";
    attribute X_INTERFACE_INFO of imem_bram_wrdata_a: signal is "xilinx.com:interface:bram:1.0 IMEM_PORTA DIN";
    attribute X_INTERFACE_INFO of imem_bram_rddata_a: signal is "xilinx.com:interface:bram:1.0 IMEM_PORTA DOUT";
    attribute X_INTERFACE_INFO of imem_bram_en_a: signal is "xilinx.com:interface:bram:1.0 IMEM_PORTA EN";
    attribute X_INTERFACE_INFO of imem_bram_rst_a: signal is "xilinx.com:interface:bram:1.0 IMEM_PORTA RST";
    attribute X_INTERFACE_INFO of imem_bram_we_a: signal is "xilinx.com:interface:bram:1.0 IMEM_PORTA WE";

    attribute X_INTERFACE_INFO of dmem_bram_addr_a: signal is "xilinx.com:interface:bram:1.0 DMEM_PORTA ADDR";
    attribute X_INTERFACE_INFO of dmem_bram_clk_a: signal is "xilinx.com:interface:bram:1.0 DMEM_PORTA CLK";
    attribute X_INTERFACE_INFO of dmem_bram_wrdata_a: signal is "xilinx.com:interface:bram:1.0 DMEM_PORTA DIN";
    attribute X_INTERFACE_INFO of dmem_bram_rddata_a: signal is "xilinx.com:interface:bram:1.0 DMEM_PORTA DOUT";
    attribute X_INTERFACE_INFO of dmem_bram_en_a: signal is "xilinx.com:interface:bram:1.0 DMEM_PORTA EN";
    attribute X_INTERFACE_INFO of dmem_bram_rst_a: signal is "xilinx.com:interface:bram:1.0 DMEM_PORTA RST";
    attribute X_INTERFACE_INFO of dmem_bram_we_a: signal is "xilinx.com:interface:bram:1.0 DMEM_PORTA WE";

    -- Memory port signals
    signal imem_addra : std_ulogic_vector(MEM_ADDR_WORDS_LOG2 - 1 downto 0);
    signal imem_clka  : std_ulogic;
    signal imem_rsta  : std_ulogic;
    signal imem_dina  : std_ulogic_vector(31 downto 0);
    signal imem_douta : std_ulogic_vector(31 downto 0);
    signal imem_ena   : std_ulogic;
    signal imem_wea   : std_ulogic_vector(3 downto 0);

    signal imem_addrb : std_ulogic_vector(MEM_ADDR_WORDS_LOG2 - 1 downto 0);
    signal imem_clkb  : std_ulogic;
    signal imem_rstb  : std_ulogic;
    signal imem_dinb  : std_ulogic_vector(31 downto 0);
    signal imem_doutb : std_ulogic_vector(31 downto 0);
    signal imem_enb   : std_ulogic;
    signal imem_web   : std_ulogic_vector(3 downto 0);

    signal dmem_addra : std_ulogic_vector(MEM_ADDR_WORDS_LOG2 - 1 downto 0);
    signal dmem_clka  : std_ulogic;
    signal dmem_rsta  : std_ulogic;
    signal dmem_dina  : std_ulogic_vector(31 downto 0);
    signal dmem_douta : std_ulogic_vector(31 downto 0);
    signal dmem_ena   : std_ulogic;
    signal dmem_wea   : std_ulogic_vector(3 downto 0);

    signal dmem_addrb : std_ulogic_vector(MEM_ADDR_WORDS_LOG2 - 1 downto 0);
    signal dmem_clkb  : std_ulogic;
    signal dmem_rstb  : std_ulogic;
    signal dmem_dinb  : std_ulogic_vector(31 downto 0);
    signal dmem_doutb : std_ulogic_vector(31 downto 0);
    signal dmem_enb   : std_ulogic;
    signal dmem_web   : std_ulogic_vector(3 downto 0);

    -- Other signals
    signal scan_chain_clk : std_ulogic;
    signal main_clk       : std_ulogic;

    signal core_reset_ni : std_ulogic;

    signal core_imem_addr        : std_ulogic_vector(31 downto 0);
    signal core_imem_ren         : std_ulogic;
    signal core_dmem_addr        : std_ulogic_vector(31 downto 0);
    signal core_dmem_ren         : std_ulogic;
    signal core_dmem_wen         : std_ulogic;
    signal core_dmem_byte_enable : std_ulogic_vector(3 downto 0);

    signal core_scan_in : std_ulogic_vector(0 downto 0);

begin

    -- Instantiate components
    main_clk_gate_inst: entity fault_injection.clk_gate_top
        port map (
            clk_o         => main_clk,
            clk_enabled_o => open,

            S_AXI_ACLK    => main_clk_gate_S_AXI_ACLK,
            S_AXI_ARESETN => main_clk_gate_S_AXI_ARESETN,
            S_AXI_AWADDR  => main_clk_gate_S_AXI_AWADDR,
            S_AXI_AWPROT  => main_clk_gate_S_AXI_AWPROT,
            S_AXI_AWVALID => main_clk_gate_S_AXI_AWVALID,
            S_AXI_AWREADY => main_clk_gate_S_AXI_AWREADY,
            S_AXI_WDATA   => main_clk_gate_S_AXI_WDATA,
            S_AXI_WSTRB   => main_clk_gate_S_AXI_WSTRB,
            S_AXI_WVALID  => main_clk_gate_S_AXI_WVALID,
            S_AXI_WREADY  => main_clk_gate_S_AXI_WREADY,
            S_AXI_BRESP   => main_clk_gate_S_AXI_BRESP,
            S_AXI_BVALID  => main_clk_gate_S_AXI_BVALID,
            S_AXI_BREADY  => main_clk_gate_S_AXI_BREADY,
            S_AXI_ARADDR  => main_clk_gate_S_AXI_ARADDR,
            S_AXI_ARPROT  => main_clk_gate_S_AXI_ARPROT,
            S_AXI_ARVALID => main_clk_gate_S_AXI_ARVALID,
            S_AXI_ARREADY => main_clk_gate_S_AXI_ARREADY,
            S_AXI_RDATA   => main_clk_gate_S_AXI_RDATA,
            S_AXI_RRESP   => main_clk_gate_S_AXI_RRESP,
            S_AXI_RVALID  => main_clk_gate_S_AXI_RVALID,
            S_AXI_RREADY  => main_clk_gate_S_AXI_RREADY
        );

    scan_clk_gate_inst: entity fault_injection.clk_gate_top
        port map (
            clk_o         => scan_chain_clk,
            clk_enabled_o => open,

            S_AXI_ACLK    => scan_clk_gate_S_AXI_ACLK,
            S_AXI_ARESETN => scan_clk_gate_S_AXI_ARESETN,
            S_AXI_AWADDR  => scan_clk_gate_S_AXI_AWADDR,
            S_AXI_AWPROT  => scan_clk_gate_S_AXI_AWPROT,
            S_AXI_AWVALID => scan_clk_gate_S_AXI_AWVALID,
            S_AXI_AWREADY => scan_clk_gate_S_AXI_AWREADY,
            S_AXI_WDATA   => scan_clk_gate_S_AXI_WDATA,
            S_AXI_WSTRB   => scan_clk_gate_S_AXI_WSTRB,
            S_AXI_WVALID  => scan_clk_gate_S_AXI_WVALID,
            S_AXI_WREADY  => scan_clk_gate_S_AXI_WREADY,
            S_AXI_BRESP   => scan_clk_gate_S_AXI_BRESP,
            S_AXI_BVALID  => scan_clk_gate_S_AXI_BVALID,
            S_AXI_BREADY  => scan_clk_gate_S_AXI_BREADY,
            S_AXI_ARADDR  => scan_clk_gate_S_AXI_ARADDR,
            S_AXI_ARPROT  => scan_clk_gate_S_AXI_ARPROT,
            S_AXI_ARVALID => scan_clk_gate_S_AXI_ARVALID,
            S_AXI_ARREADY => scan_clk_gate_S_AXI_ARREADY,
            S_AXI_RDATA   => scan_clk_gate_S_AXI_RDATA,
            S_AXI_RRESP   => scan_clk_gate_S_AXI_RRESP,
            S_AXI_RVALID  => scan_clk_gate_S_AXI_RVALID,
            S_AXI_RREADY  => scan_clk_gate_S_AXI_RREADY
        );

    imem_inst: entity fault_injection.dual_clock_bram
        generic map (
            ADDR_WIDTH => MEM_ADDR_WORDS_LOG2,
            DATA_BYTES => 4
        )
        port map (
            addra => imem_addra,
            clka  => imem_clka,
            rsta  => imem_rsta,
            dina  => imem_dina,
            douta => imem_douta,
            ena   => imem_ena,
            wea   => imem_wea,

            addrb => imem_addrb,
            clkb  => imem_clkb,
            rstb  => imem_rstb,
            dinb  => imem_dinb,
            doutb => imem_doutb,
            enb   => imem_enb,
            web   => imem_web
        );

    dmem_inst: entity fault_injection.dual_clock_bram
        generic map (
            ADDR_WIDTH => MEM_ADDR_WORDS_LOG2,
            DATA_BYTES => 4
        )
        port map (
            addra => dmem_addra,
            clka  => dmem_clka,
            rsta  => dmem_rsta,
            dina  => dmem_dina,
            douta => dmem_douta,
            ena   => dmem_ena,
            wea   => dmem_wea,

            addrb => dmem_addrb,
            clkb  => dmem_clkb,
            rstb  => dmem_rstb,
            dinb  => dmem_dinb,
            doutb => dmem_doutb,
            enb   => dmem_enb,
            web   => dmem_web
        );

    scan_chain_inst: entity fault_injection.scan_chain_top
        generic map (
            SCN_CHN_WIDTH => 1
        )
        port map (
            scn_chn_clk_i => scan_chain_clk,

            scan_chain_o  => core_scan_in,
            done_ff_dbg   => open,
            active_ff_dbg => open,

            S_AXI_ACLK    => scan_chain_S_AXI_ACLK,
            S_AXI_ARESETN => scan_chain_S_AXI_ARESETN,
            S_AXI_AWADDR  => scan_chain_S_AXI_AWADDR,
            S_AXI_AWPROT  => scan_chain_S_AXI_AWPROT,
            S_AXI_AWVALID => scan_chain_S_AXI_AWVALID,
            S_AXI_AWREADY => scan_chain_S_AXI_AWREADY,
            S_AXI_WDATA   => scan_chain_S_AXI_WDATA,
            S_AXI_WSTRB   => scan_chain_S_AXI_WSTRB,
            S_AXI_WVALID  => scan_chain_S_AXI_WVALID,
            S_AXI_WREADY  => scan_chain_S_AXI_WREADY,
            S_AXI_BRESP   => scan_chain_S_AXI_BRESP,
            S_AXI_BVALID  => scan_chain_S_AXI_BVALID,
            S_AXI_BREADY  => scan_chain_S_AXI_BREADY,
            S_AXI_ARADDR  => scan_chain_S_AXI_ARADDR,
            S_AXI_ARPROT  => scan_chain_S_AXI_ARPROT,
            S_AXI_ARVALID => scan_chain_S_AXI_ARVALID,
            S_AXI_ARREADY => scan_chain_S_AXI_ARREADY,
            S_AXI_RDATA   => scan_chain_S_AXI_RDATA,
            S_AXI_RRESP   => scan_chain_S_AXI_RRESP,
            S_AXI_RVALID  => scan_chain_S_AXI_RVALID,
            S_AXI_RREADY  => scan_chain_S_AXI_RREADY
        );

    reset_inst: entity fault_injection.reset_top
        port map (
            main_clk      => main_clk,
            rst_o         => core_reset_ni,
            active_ff_dbg => open,
            done_ff_dbg   => open,

            S_AXI_ACLK    => r3s3t_S_AXI_ACLK,
            S_AXI_ARESETN => r3s3t_S_AXI_ARESETN,
            S_AXI_AWADDR  => r3s3t_S_AXI_AWADDR,
            S_AXI_AWPROT  => r3s3t_S_AXI_AWPROT,
            S_AXI_AWVALID => r3s3t_S_AXI_AWVALID,
            S_AXI_AWREADY => r3s3t_S_AXI_AWREADY,
            S_AXI_WDATA   => r3s3t_S_AXI_WDATA,
            S_AXI_WSTRB   => r3s3t_S_AXI_WSTRB,
            S_AXI_WVALID  => r3s3t_S_AXI_WVALID,
            S_AXI_WREADY  => r3s3t_S_AXI_WREADY,
            S_AXI_BRESP   => r3s3t_S_AXI_BRESP,
            S_AXI_BVALID  => r3s3t_S_AXI_BVALID,
            S_AXI_BREADY  => r3s3t_S_AXI_BREADY,
            S_AXI_ARADDR  => r3s3t_S_AXI_ARADDR,
            S_AXI_ARPROT  => r3s3t_S_AXI_ARPROT,
            S_AXI_ARVALID => r3s3t_S_AXI_ARVALID,
            S_AXI_ARREADY => r3s3t_S_AXI_ARREADY,
            S_AXI_RDATA   => r3s3t_S_AXI_RDATA,
            S_AXI_RRESP   => r3s3t_S_AXI_RRESP,
            S_AXI_RVALID  => r3s3t_S_AXI_RVALID,
            S_AXI_RREADY  => r3s3t_S_AXI_RREADY
        );

    pc_monitor_inst: entity fault_injection.pc_monitor_top
        port map (
            pc_i          => core_imem_addr,

            S_AXI_ACLK    => pc_monitor_S_AXI_ACLK,
            S_AXI_ARESETN => pc_monitor_S_AXI_ARESETN,
            S_AXI_AWADDR  => pc_monitor_S_AXI_AWADDR,
            S_AXI_AWPROT  => pc_monitor_S_AXI_AWPROT,
            S_AXI_AWVALID => pc_monitor_S_AXI_AWVALID,
            S_AXI_AWREADY => pc_monitor_S_AXI_AWREADY,
            S_AXI_WDATA   => pc_monitor_S_AXI_WDATA,
            S_AXI_WSTRB   => pc_monitor_S_AXI_WSTRB,
            S_AXI_WVALID  => pc_monitor_S_AXI_WVALID,
            S_AXI_WREADY  => pc_monitor_S_AXI_WREADY,
            S_AXI_BRESP   => pc_monitor_S_AXI_BRESP,
            S_AXI_BVALID  => pc_monitor_S_AXI_BVALID,
            S_AXI_BREADY  => pc_monitor_S_AXI_BREADY,
            S_AXI_ARADDR  => pc_monitor_S_AXI_ARADDR,
            S_AXI_ARPROT  => pc_monitor_S_AXI_ARPROT,
            S_AXI_ARVALID => pc_monitor_S_AXI_ARVALID,
            S_AXI_ARREADY => pc_monitor_S_AXI_ARREADY,
            S_AXI_RDATA   => pc_monitor_S_AXI_RDATA,
            S_AXI_RRESP   => pc_monitor_S_AXI_RRESP,
            S_AXI_RVALID  => pc_monitor_S_AXI_RVALID,
            S_AXI_RREADY  => pc_monitor_S_AXI_RREADY
        );

    imem_interface_inst: entity fault_injection.imem_interface
        port map (
            ren_i => core_imem_ren,
            en_o  => imem_enb,
            web_o => imem_web
        );

    dmem_interface_inst: entity fault_injection.dmem_interface
        port map (
            ren_i => core_dmem_ren,
            wen_i => core_dmem_wen,
            en_o  => dmem_enb,
            web_i => core_dmem_byte_enable,
            web_o => dmem_web
        );

    -- Instrumented EIS-V instantiation
    eisv_core_wrapper_flt_inst: entity fault_injection.eisv_core_wrapper_flt
        port map (
            clk_i              => main_clk,
            rst_ni             => core_reset_ni,
            imem_addr_o        => core_imem_addr,
            imem_ren_o         => core_imem_ren,
            imem_rdata_i       => imem_doutb,
            imem_ready_i       => '1',
            imem_valid_i       => '1',
            imem_complete_o    => open,
            dmem_addr_o        => core_dmem_addr,
            dmem_ren_o         => core_dmem_ren,
            dmem_rdata_i       => dmem_doutb,
            dmem_wen_o         => core_dmem_wen,
            dmem_wdata_o       => dmem_dinb,
            dmem_byte_enable_o => core_dmem_byte_enable,
            dmem_valid_i       => '1',
            dmem_complete_o    => open,

            clk_scan           => scan_chain_clk,
            scan_in            => core_scan_in,
            scan_out           => open
        );

    -- Assign signals
    imem_addra <= imem_bram_addr_a(imem_addra'high + 2 downto imem_addra'low + 2);
    imem_clka  <= imem_bram_clk_a;
    imem_rsta  <= imem_bram_rst_a;
    imem_dina  <= imem_bram_wrdata_a;
    imem_ena   <= imem_bram_en_a;
    imem_wea   <= imem_bram_we_a;

    imem_bram_rddata_a <= imem_douta;

    imem_addrb <= core_imem_addr(imem_addrb'high + 2 downto imem_addrb'low + 2);
    imem_clkb  <= main_clk;
    imem_rstb   <= '0';
    imem_dinb   <= (others => '0');

    dmem_addra <= dmem_bram_addr_a(dmem_addra'high + 2 downto dmem_addra'low + 2);
    dmem_clka  <= dmem_bram_clk_a;
    dmem_rsta  <= dmem_bram_rst_a;
    dmem_dina  <= dmem_bram_wrdata_a;
    dmem_ena   <= dmem_bram_en_a;
    dmem_wea   <= dmem_bram_we_a;

    dmem_bram_rddata_a <= dmem_douta;

    dmem_addrb <= core_dmem_addr(dmem_addrb'high + 2 downto dmem_addrb'low + 2);
    dmem_clkb  <= main_clk;
    dmem_rstb  <= '0';

end architecture;
