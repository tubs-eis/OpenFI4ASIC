library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity read_write_axi is
    generic (
        C_S_AXI_DATA_WIDTH : integer := 32;
        C_S_AXI_ADDR_WIDTH : integer := 5
    );
    port(
        data_o   : out std_ulogic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);        
        data_i   : in  std_ulogic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        flag_w   : out std_ulogic;
        flag_r   : out std_ulogic;
        w_addr_o : out std_ulogic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        r_addr_o : out std_ulogic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);

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
end read_write_axi;

architecture rtl of read_write_axi is

    --types
    type read_fsm_state_t is (ADDR, SEND_DATA);
    type write_fsm_state_t is (ADDR, RECEIVE_DATA, WRITE_DATA, RESPONSE);

    --flip-flops
    signal read_fsm_state_ff, read_fsm_state_nxt    : read_fsm_state_t;
    
    signal read_address_ff : std_ulogic_vector(C_S_AXI_ADDR_WIDTH - 1 downto 0);
    signal read_address_nxt : std_ulogic_vector(C_S_AXI_ADDR_WIDTH - 1 downto 0);
    
    
    signal write_fsm_state_ff, write_fsm_state_nxt  : write_fsm_state_t;
    
    signal write_address_ff : std_ulogic_vector(C_S_AXI_ADDR_WIDTH - 1 downto 0);
    signal write_address_nxt : std_ulogic_vector(C_S_AXI_ADDR_WIDTH - 1 downto 0);

    signal write_data_ff : std_ulogic_vector(C_S_AXI_DATA_WIDTH - 1 downto 0);
    signal write_data_nxt : std_ulogic_vector(C_S_AXI_DATA_WIDTH - 1 downto 0);

begin

    seq : process (S_AXI_ACLK)
    begin
        if (rising_edge(S_AXI_ACLK)) then
            if (S_AXI_ARESETN = '0') then
                read_fsm_state_ff <= ADDR;
                read_address_ff <= (others => '0');
                
                write_fsm_state_ff <= ADDR;
                write_address_ff <= (others => '0');
                write_data_ff <= (others => '0');
            else 
                read_fsm_state_ff <= read_fsm_state_nxt;
                read_address_ff <= read_address_nxt;
                
                write_fsm_state_ff <= write_fsm_state_nxt;
                write_address_ff <= write_address_nxt;
                write_data_ff <= write_data_nxt;
            end if;
        end if;
    end process;

    axi_read : process (all) is
    begin
        
        read_fsm_state_nxt <= read_fsm_state_ff;
        read_address_nxt <= read_address_ff;

        S_AXI_ARREADY <= '0';
        S_AXI_RDATA <= (others => '0');
        S_AXI_RRESP <= (others => '0');
        S_AXI_RVALID <= '0';

        case (read_fsm_state_ff) is
            when ADDR =>
                S_AXI_ARREADY <= '1';
                if (S_AXI_ARVALID = '1') then
                    read_address_nxt <= S_AXI_ARADDR;
                    read_fsm_state_nxt <= SEND_DATA;
                end if;
            when SEND_DATA =>
                S_AXI_RVALID <= '1';
                S_AXI_RDATA <= data_i;

                if (S_AXI_RREADY = '1') then
                    read_fsm_state_nxt <= ADDR;
                end if;
        end case;

    end process;
    
    axi_write : process (all)
    begin       
        write_fsm_state_nxt <= write_fsm_state_ff;
        write_address_nxt <= write_address_ff;
        write_data_nxt <= write_data_ff;

        S_AXI_AWREADY <= '0';
        S_AXI_WREADY <= '0';
        S_AXI_BRESP <= (others => '0');
        S_AXI_BVALID <= '0';

        case (write_fsm_state_ff) is
            when ADDR =>
                S_AXI_AWREADY <= '1';
                if (S_AXI_AWVALID = '1') then
                    write_address_nxt <= S_AXI_AWADDR;
                    write_fsm_state_nxt <= RECEIVE_DATA;
                end if;

            when RECEIVE_DATA =>
                S_AXI_WREADY <= '1';
                if (S_AXI_WVALID = '1') then
                    write_data_nxt <= S_AXI_WDATA;
                    write_fsm_state_nxt <= WRITE_DATA;
                end if;

            when WRITE_DATA =>
                write_fsm_state_nxt <= RESPONSE;

            when RESPONSE =>
                S_AXI_BVALID <= '1';
                if (S_AXI_BREADY = '1') then
                    write_fsm_state_nxt <= ADDR;
                end if;
        end case;
    end process;

    data_o <= write_data_ff;
    flag_w <= '1' when write_fsm_state_ff = WRITE_DATA else '0';
    flag_r <= '1' when read_fsm_state_ff = SEND_DATA else '0';
    w_addr_o <= write_address_ff;
    r_addr_o <= read_address_ff;

end rtl;
