----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/03/2023 02:15:48 PM
-- Design Name: 
-- Module Name: blinky - Behavioral
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

entity blinky is
    Port ( GCLK : in STD_LOGIC;
        LD0 : out STD_LOGIC := '0');
end blinky;

architecture Behavioral of blinky is
signal count : integer := 0;
signal LED_state : std_logic := '0';
begin

process (GCLK) begin
    if (rising_edge(GCLK)) then
        if (count < 100000000) then
            count <= count + 1;
        else 
            count <= 0;
            LED_state <= not LED_state;
        end if; 
    end if;
end process;

LD0 <= LED_state;

end Behavioral;
