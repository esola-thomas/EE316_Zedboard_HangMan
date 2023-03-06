----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2023 10:51:39 PM
-- Design Name: 
-- Module Name: UART_TX_master_tb - Behavioral
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

entity UART_TX_master_tb is
--  Port ( );
end UART_TX_master_tb;

architecture Behavioral of UART_TX_master_tb is

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

    signal clk, reset_n, ena, busy, TX : std_logic := '0';
    signal idata : std_logic_vector(7 downto 0);

begin

    dut : UART_TX_master 
        port map (  reset_n => reset_n, 
                    clk => clk, 
                    ena => ena, 
                    idata => idata, 
                    busy => busy, 
                    TX => TX);

    clk <= not clk after 20 ns;

    process begin

        reset_n <= '0';
        wait for 100 ns;
        reset_n <= '1';
        ena <= '0';
        idata <= X"AB";
        wait for 1 ms;
        reset_n <= '1';
        ena <= '1';
        idata <= X"AB";
        wait for 1 ms;
        reset_n <= '1';
        ena <= '0';
        idata <= X"AB";
        wait for 1 ms;
        wait;
    end process;
end Behavioral;
