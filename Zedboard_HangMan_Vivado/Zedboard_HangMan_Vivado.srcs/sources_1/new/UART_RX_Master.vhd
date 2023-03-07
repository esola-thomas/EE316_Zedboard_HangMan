----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2023 11:11:52 PM
-- Design Name: 
-- Module Name: UART_RX_Master - Behavioral
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

entity UART_RX_Master is
    generic(baud_rate : integer := 9600;
            clock_freq : integer := 100000000);
    Port (  RX : in std_logic;
            clk : in std_logic;
            reset_n : in std_logic;
            RX_data : out std_logic_vector(7 downto 0) := (others => '0');
            error : out std_logic
            );
end UART_RX_Master;

architecture Behavioral of UART_RX_Master is

    constant clk_delay : integer := clock_freq / baud_rate;

    type state_type is (idle, start, read_data, stop, error_state);
    signal state : state_type := idle;

    type start_sate_type is (start_trigger, start_trigger_confirmed, start_rising, start_rising_confirmed, get_data);
    signal start_state : start_sate_type := start_trigger;

    signal data_bit : integer range 0 to 8 := 0; -- 8 is the end bit, when 8 is reached RX is terminated
    signal data_reg : std_logic_vector(7 downto 0) := (others => '0');

    signal count : integer := 0;
begin

    rx_process : process (clk) begin
        if rising_edge(clk) then
            if reset_n = '0' then
                state <= idle;
                start_state <= start_trigger;
                data_bit <= 0;
                data_reg <= (others => '0');
                count <= 0;
            else 
                case state is
                    when idle =>
                        if RX = '0' then -- start bit recived
                            state <= start;
                        end if;
                    when start =>
                        case start_state is
                            when start_trigger =>
                                if RX = '0' then
                                    if (count < clk_delay/2) then
                                        count <= count + 1;
                                    else
                                        count <= 0;
                                        start_state <= start_trigger_confirmed;
                                    end if;
                                else -- False alarm
                                    state <= idle;
                                    start_state <= start_trigger;
                                end if;
                            when start_trigger_confirmed =>
                                if (count < clk_delay) then 
                                    count <= count + 1;
                                else
                                    count <= clk_delay;
                                    state <= read_data;
                                    start_state <= start_trigger;
                                end if;
--                                if RX = '1' then
--                                    start_state <= start_rising;
--                                    count <= 0;
--                                else
--                                    if (count = clock_freq) then -- RX has been low for more than a second
--                                        state <= error_state;
--                                    else
--                                        count <= count + 1;
--                                    end if; 
--                                end if;
                            when start_rising =>
                                if RX = '1' then
                                    if (count < clk_delay/2) then
                                        count <= count + 1;
                                    else
                                        count <= 0;
                                        start_state <= start_rising_confirmed;
                                    end if;
                                else -- False alarm
                                    state <= idle;
                                    start_state <= start_trigger;
                            end if;
                            when start_rising_confirmed =>
                                if (count < clk_delay)then
                                    count <= count + 1;
                                else
                                    count <= 0;
                                    start_state <= get_data;
                                end if;
                            when get_data =>
                                state <= read_data;
                                start_state <= start_trigger;
                                count <= clk_delay;

                        end case;
                    when read_data =>
                        if (count < clk_delay) then
                            count <= count + 1;
                        else
                            count <= 0;
                            data_reg(data_bit) <= RX;
                            if (data_bit = 7) then
                                data_bit <= 0;
                                state <= stop;
                            else 
                                data_bit <= data_bit + 1;
                            end if;
                        end if;
                    when stop =>
                        if RX = '1' then
                            state <= idle;
                            count <= 0;
                            RX_data <= data_reg;
                        else -- If signal stays low there is an issue
                            if (count = clock_freq) then -- RX has been low for more than a second
                                state <= error_state;
                            else
                                count <= count + 1;
                            end if; 
                        end if; 
                    when error_state =>
                        if RX = '1' then
                            state <= idle;  
                        end if; -- RX is low, maybe device is not connected
                end case;
            end if;
        end if;
    end process rx_process;

    error <= '1' when state = error_state else '0';
end Behavioral;
