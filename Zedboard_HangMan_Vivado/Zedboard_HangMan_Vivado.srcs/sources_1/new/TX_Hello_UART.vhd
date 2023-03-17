----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2023 11:06:37 AM
-- Design Name: 
-- Module Name: TX_Hello_UART - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TX_Hello_UART is
    generic ( message_length : integer := 21);
    Port ( clk : in STD_LOGIC;
           reset_n : in STD_LOGIC;
           TX : out STD_LOGIC);
end TX_Hello_UART;

architecture Behavioral of TX_Hello_UART is

    -- Signals for UART_TX_master component
    signal ena, busy : std_logic := '0';
    signal idata : std_logic_vector(7 downto 0);
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

    constant message : std_logic_vector((message_length*8)-1 downto 0) := X"48656C6C6F204A756E696F72204C6162203A290D0A"; -- Add this at the end to \r\n
    signal message_index : integer range 0 to message_length := message_length;

    type sending_state_type is (idle, sending, next_char);
    signal sending_state : sending_state_type := idle;
    
    constant time_max : integer := 1000000000;
    signal time_delay : integer := time_max;
begin
    
    -- Instantiate UART_TX_master component
    UART_TX_master_inst : UART_TX_master
        generic map (baud_rate => 9600, clock_freq => 100000000)
        port map (reset_n => reset_n, clk => clk, ena => ena, idata => idata, busy => busy, TX => TX);
    process (clk, reset_n) begin

        if (reset_n = '0') then
            message_index <= 1;
            time_delay <= 0;
            sending_state <= idle;
        elsif (rising_edge(clk)) then
            case sending_state is 
                when idle =>
                    if (time_delay >= time_max) then 
                        idata <= message((8 * message_index)-1 downto (8 * message_index)-8);
                        ena <= '1';
                        if (busy = '1') then 
                            sending_state <= sending;
                            time_delay <= 0;
                            ena <= '0';
                        end if;
                    else
                        time_delay <= time_delay + 1;
                        ena <= '0';
                    end if;
                when sending =>
                    if (busy = '0') then
                        message_index <= message_index - 1;
                        sending_state <= next_char;
                        ena <= '0';
                    else -- busy = '1'
                        ena <= '0';
                    end if; -- Wait for busy to go low
                when next_char =>
                    if (message_index = 0) then
                        sending_state <= idle;
                        time_delay <= 0;
                        message_index <= message_length;
                    else
                        idata <= message((8 * message_index)-1 downto (8 * message_index)-8);
                        ena <= '1';
                        if (busy = '1') then 
                            sending_state <= sending;
                            time_delay <= 0;
                            ena <= '0';
                        end if;

                    end if;
            end case;
        end if;
    end process;
end Behavioral;
