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
    GENERIC (	baud_rate : integer := 9600;        -- This can be changed to 115200 if needed
                clock_freq : integer := 100000000;  -- This needs to be adjusted to the clk frequency of the board
                data_bytes : integer := 1           -- How many bytes of data to send at a time
                ); 
    Port ( clk : in STD_LOGIC;
           reset_n : in STD_LOGIC;
           tx_data : in STD_LOGIC_VECTOR (7*data_bytes downto 0);
           sending : out STD_LOGIC := '0';
           TX : out STD_LOGIC);
end UART_TX_user_logic;

architecture Behavioral of UART_TX_user_logic is
    
    signal sending_reg, new_data, clear_new_data : STD_LOGIC := '0';
    signal TX_ena, TX_busy : STD_LOGIC;
    signal TX_data_reg : std_logic_vector(7*data_bytes downto 0);
    signal current_byte : integer range 1 to data_bytes := 1; -- This will be used to multiply 8 (bites in byte) *  current_byte to get the correct bit to send
    
    type send_data_steps_type is (idle, send_byte, next_byte);
    signal send_data_steps : send_data_steps_type := idle;

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
    
begin

    TX_master_inst : UART_TX_master port map (reset_n => reset_n, clk=> clk, ena=> TX_ena, idata=> TX_data_reg, busy =>TX_busy, TX=>TX);

    -- Potentially add clock enabler to trigger this process
    new_data_process : process (tx_data, clear_new_data) begin 
        if (clear_new_data = '1') then
            new_data <= '0';
        else
            new_data <= '1';
        end if;
    end process new_data_process;

    master_control : process (clk, reset_n) begin
        if reset_n = '0' then
            sending_reg <= '0';
            TX_ena <= '0';
            TX_data_reg <= (others => '0');
            current_byte <= 1;
            send_data_steps <= idle;
            clear_new_data <= '0';
        elsif (rising_edge(clk)) then
            case send_data_steps is
                when idle        => 
                    if (new_data = '1') then
                        current_byte <= 1;
                        send_data_steps <= send_byte;
                        clear_new_data <= '1';
                    else
                        clear_new_data <= '0';
                        sending_reg <= '0';
                        TX_ena <= '0';
                    end if;
                when send_byte   => 
                        TX_data_reg <= tx_data((current_byte*8)-1 downto (current_byte*8)-8);
                        sending_reg <= '1';
                        TX_ena <= '1';
                        if(TX_busy = '0') then
                            send_data_steps <= next_byte;
                        end if;
                when next_byte   => 
                    clear_new_data <= '0';
                    if (current_byte = data_bytes) then
                        send_data_steps <= idle;
                    else
                        current_byte <= current_byte + 1;
                        send_data_steps <= send_byte;
                    end if;
            end case; 
        end if;

    end process master_control;


    sending <= sending_reg;
end Behavioral;
