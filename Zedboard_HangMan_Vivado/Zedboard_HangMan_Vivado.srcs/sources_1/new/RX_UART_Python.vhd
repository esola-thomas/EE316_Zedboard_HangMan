----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/09/2023 01:22:46 PM
-- Design Name: 
-- Module Name: RX_UART_Python - Behavioral
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

entity RX_UART_Python is
    Port (  clk : in STD_LOGIC; 
            RX : in STD_LOGIC;
            reset_n : in STD_LOGIC; 
            LCD_1 : out STD_LOGIC_VECTOR (127 downto 0) := x"5F202020202020202020202020202020";
            LCD_2 : out STD_LOGIC_VECTOR (127 downto 0) := x"20202020202020202020202020202020";
            LCD_USER_reset : out STD_LOGIC := '1';
            o_segment : out STD_LOGIC_VECTOR (3 downto 0) := "0010"
            );
end RX_UART_Python;

architecture Behavioral of RX_UART_Python is

    signal count : integer range 0 to 256 := 1;

    signal RX_data_reg : STD_LOGIC_VECTOR (7 downto 0) := (others => '1');
    signal new_data : STD_LOGIC;
    signal error : STD_LOGIC;

    type state_type is (idle, LCD_get_data_1, LCD_get_data_2, LCD_write_data, segment); 
    signal state : state_type := idle;
    
    signal LUT_bit : STD_LOGIC_VECTOR (3 downto 0);
    
    component UART_RX_master is 
        generic(baud_rate : integer := 9600;
                clock_freq : integer := 100000000);
        Port (  RX : in std_logic;
                clk : in std_logic;
                reset_n : in std_logic;
                new_data : out std_logic;
                RX_data : out std_logic_vector(7 downto 0);
                error : out std_logic
        );
    end component UART_RX_master;

    component LUT_charhex_bit is
        port (  hex_i : in STD_LOGIC_VECTOR (7 downto 0);
                bit_o : out STD_LOGIC_VECTOR (3 downto 0));
    end component LUT_charhex_bit;
begin

    RX_master_inst : UART_RX_master
        generic map (baud_rate => 9600, clock_freq => 100000000)
        port map (RX => RX, clk => clk, reset_n => '1', new_data => new_data, RX_data => RX_data_reg, error => error);

    LUT_inst : LUT_charhex_bit port map (hex_i => RX_data_reg, bit_o => LUT_bit);

    process (clk, new_data, reset_n) begin

        if (reset_n = '0') then
            LCD_1 <= x"5F202020202020202020202020202020";
            LCD_2 <= x"20202020202020202020202020202020";
            state <= idle;
            count <= 1;
            LCD_USER_reset <= '0';
            o_segment <= "0010";
        elsif rising_edge(new_data) then    
            case state is
                when idle => 
                    count <= 1;
                    LCD_USER_reset <= '1';
                    -- Stay on Idle until a new data is received
                    if (RX_data_reg = X"41") then -- go to 7 segment display <= Recives char A
                        state <= segment;

                    elsif (RX_data_reg = X"42") then -- go to LCD display row 1 <= Recives char B
                        count <= 16;
                        state <= LCD_get_data_1;
                    elsif (RX_data_reg = X"43") then -- go to LCD display row 2 <= Recives char C
                        count <= 16;
                        state <= LCD_get_data_2;
                    end if;

                when LCD_get_data_1 =>
                    LCD_1((8*count)-1 downto 8*(count-1)) <= RX_data_reg;
                    count <= count - 1;
                    if (count = 0) then
                        state <= LCD_write_data;
                    else
                        state <= LCD_get_data_1;
                    end if;

                when LCD_get_data_2 =>
                    LCD_2((8*count)-1 downto 8*(count-1)) <= RX_data_reg;
                    count <= count - 1;
                    if (count = 0) then
                        state <= LCD_write_data;
                    else
                        state <= LCD_get_data_2;
                    end if;

                when LCD_write_data =>
                    LCD_USER_reset <= '0';
                    state <= idle;

                when segment =>
                    o_segment <= LUT_bit;
                    state <= idle;
            end case;
        end if;
    end process;
end Behavioral;
