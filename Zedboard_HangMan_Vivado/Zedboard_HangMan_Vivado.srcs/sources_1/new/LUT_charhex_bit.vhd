----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/09/2023 02:16:38 PM
-- Design Name: 
-- Module Name: LUT_charhex_bit - Behavioral
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

entity LUT_charhex_bit is
    Port ( hex_i : in STD_LOGIC_VECTOR (7 downto 0);
           bit_o : out STD_LOGIC_VECTOR (3 downto 0));
end LUT_charhex_bit;

architecture Behavioral of LUT_charhex_bit is
begin
    bit_o <=    "0000" when hex_i = X"30" else  -- 0
                "0001" when hex_i = X"31" else  -- 1
                "0010" when hex_i = X"32" else  -- 2
                "0011" when hex_i = X"33" else  -- 3   
                "0100" when hex_i = X"34" else  -- 4
                "0101" when hex_i = X"35" else  -- 5
                "0110" when hex_i = X"35" else  -- 6
                "1111";
end Behavioral;
