----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2023 03:37:11 PM
-- Design Name: 
-- Module Name: UART_TX_user_logic - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity UART_TX_user_logic is
    GENERIC (	baud_rate : integer := 9600;
                clock_freq : integer := 100000000); 
    Port ( clk : in STD_LOGIC;
           reset_n : in STD_LOGIC;
           tx_data : in STD_LOGIC_VECTOR (7 downto 0);
           tx : out STD_LOGIC);
end UART_TX_user_logic;

architecture Behavioral of UART_TX_user_logic is
    signal TX_idata : std_logic_vector (7 downto 0);
    signal TX_ena, TX_busy : STD_LOGIC;
    signal TX_sending_data : std_logic := '0';
    component UART_TX_master is
        generic (
            baud_rate : integer := 9600;
            clock_freq : integer := 100000000); 
		port (
		reset_n			: in std_logic; 
		clk				: in std_logic; 
		ena 			: in std_logic;	
		idata			: in std_logic_vector(7 downto 0);
		busy 			: out std_logic := '0';
		TX	    		: out std_logic
		);
    end component;
    
    signal TX_data_busy : STD_LOGIC := '0';
    signal TX_data_reg : STD_LOGIC_VECTOR (1023 downto 0) := (others => '0');
    signal TX_data_address_r : integer range 0 to 1023 := 7; -- Counter for read register
    signal TX_data_address_w : integer range 0 to 1023 := 7; -- Counter for write register
    signal adjust_r_w_address : std_logic := '0';
    signal TX_data_byte_count : integer range 0 to 128 := 0;
    signal TX_data_byte_sent_count : integer range 0 to 128 := 0;
begin

-- Instantiate UART_TX_master
UART_TX_master_inst : UART_TX_master
    generic map (baud_rate => baud_rate, clock_freq => clock_freq)
    port map (reset_n => reset_n, clk => clk, ena => TX_ena, idata => TX_idata, busy => TX_busy, TX => tx);

-- Add to register data to be sent
process (tx_data) begin 
    if (TX_data_address_r > 7) then
        adjust_r_w_address <= '1';
        -- Remove bytes that have been sent from reg
        TX_data_reg (TX_data_address_w-TX_data_address_r downto 0) <= TX_data_reg (TX_data_address_w downto TX_data_address_r+1);
    end if;
    TX_data_reg (TX_data_address_w downto TX_data_address_w - 8) <= tx_data;
    TX_data_address_w <= TX_data_address_w + 8;
end process;

-- Send data
process (clk, reset_n, adjust_r_w_address) begin
    if (adjust_r_w_address = '1') then
        TX_data_address_r <= 7;
    end if;
    if (reset_n = '0') then
        TX_data_byte_count <= 0;
        TX_data_address_r <= 7;
        TX_data_busy <= '0';
    elsif (clk'event and clk = '1') then
        -- if TX master is low and there is data to send
        if (TX_busy = '0' and TX_data_byte_count > 0) then
            TX_ena <= '1';
            TX_idata <= TX_data_reg (TX_data_address_r downto TX_data_address_r - 8);
            TX_data_address_r <= TX_data_address_r + 8;
            TX_data_byte_sent_count <= TX_data_byte_sent_count + 1;
            TX_sending_data <= '1';
        elsif (TX_sending_data = '1') then 
            TX_ena <= '1';
            if (TX_busy = '0') then 
                TX_sending_data <= '0';
            end if; 
        else 
            TX_ena <= '0';
        end if;
    end if;
end process;
end Behavioral;
