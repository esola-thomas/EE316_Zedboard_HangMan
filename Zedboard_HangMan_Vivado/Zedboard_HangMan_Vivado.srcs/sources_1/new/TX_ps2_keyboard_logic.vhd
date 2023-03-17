----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/16/2023 01:12:54 PM
-- Design Name: 
-- Module Name: TX_ps2_keyboard_logic - Behavioral
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

entity TX_ps2_keyboard_logic is
    Port ( clk : in STD_LOGIC;
           ps2_new : in STD_LOGIC;
           p2_code : in STD_LOGIC_VECTOR (7 downto 0);
           reset_n : in STD_LOGIC;
           TX : out STD_LOGIC);
end TX_ps2_keyboard_logic;

architecture Behavioral of TX_ps2_keyboard_logic is

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

    signal busy, ena : std_logic := '0';
    signal idata, idata_reg : std_logic_vector(7 downto 0) := (others => '0');

begin

    TX_master_inst : UART_TX_master
        generic map (
            baud_rate => 9600,
            clock_freq => 100000000)
        port map (
            reset_n => reset_n,
            clk => clk,
            ena => ena,
            idata => idata,
            busy => busy,
            TX => TX);

    process (clk, reset_n, ps2_new) begin
        if (reset_n = '0') then
            ena <= '0';
            idata <= (others => '0');
        else
            if (rising_edge(ps2_new)) then
                idata <= p2_code;
            end if;
            if (rising_edge(clk)) then
                if (idata_reg = idata) then -- Last data has already been sent
                    ena <= '0';
                else
                    ena <= '1';
                    if (busy = '1') then -- COnfirmation that new data is being transmitted
                        idata_reg <= idata;
                    end if;
                end if;
            end if;
        end if;
    end process;
end Behavioral;
