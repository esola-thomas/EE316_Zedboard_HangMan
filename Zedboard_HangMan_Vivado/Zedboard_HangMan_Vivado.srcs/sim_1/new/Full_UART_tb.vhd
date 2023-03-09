----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2023 12:16:37 AM
-- Design Name: 
-- Module Name: Full_UART_tb - Behavioral
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

entity Full_UART_tb is
--  Port ( );
end Full_UART_tb;

architecture Behavioral of Full_UART_tb is

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

    signal clk : std_logic := '0';
    signal reset_n : std_logic := '0';
    signal ena : std_logic := '0';
    signal idata : std_logic_vector(7 downto 0) := (others => '0');
    signal busy : std_logic := '0';
    signal TX : std_logic := '0';
    signal RX : std_logic := '0';
    signal new_data : std_logic := '0';
    signal RX_data : std_logic_vector(7 downto 0) := (others => '0');
    signal error : std_logic := '0';
begin

    DUT_RX : UART_RX_master generic map(baud_rate => 9600, clock_freq => 100000000) port map(RX => RX, clk => clk, reset_n => reset_n, new_data => new_data,  RX_data => RX_data, error => error);
    DUT_TX : UART_TX_master generic map(baud_rate => 9600, clock_freq => 100000000) port map(reset_n => reset_n, clk => clk, ena => ena, idata => idata, busy => busy, TX => TX);

    clk <= not clk after 5 ns;

    idata <= X"A5";
    RX <= TX;

    process begin 
        reset_n <= '0';
        ena <= '0';
        wait for 500 us;
        reset_n <= '1';
        ena <= '0';
        wait for 500 us;
        reset_n <= '1';
        ena <= '1';
        wait for 1000 us;
        reset_n <= '1';
        wait for 200 us;
        ena <= '0';
    end process;
end Behavioral;
