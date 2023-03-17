library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity lcd_user is
    generic(input_clk: integer := 100_000_000);
    port(
        reset: in std_logic;
        clk: in std_logic;
        row1: in std_logic_vector(127 downto 0);
        row2: in std_logic_vector(127 downto 0);
        lcd_data: out std_logic_vector(7 downto 0);
        lcd_rs: out std_logic;
        lcd_en: out std_logic;
		lcd_on: out std_logic;
		lcd_blon: out std_logic;
		lcd_rw: out std_logic;
		SDA: inout std_logic;
		SCL: inout std_logic
    );
end lcd_user;

architecture Behavioral of lcd_user is
component i2c_master is
    generic(
        input_clk: integer := 50_000_000;
        bus_clk: integer := 400_000);
    port (
        clk: in std_logic;
        reset_n: in std_logic;
        ena: in std_logic;
        addr: in std_logic_vector(6 downto 0);
        rw: in std_logic;
        data_wr: in std_logic_vector(7 downto 0);
        busy: out std_logic;
        data_rd: out std_logic_vector(7 downto 0);
        ack_error: out std_logic;
        sda: inout std_logic;
        scl: inout std_logic
    );
end component;


-- LCD
signal lcd_address: std_logic_vector(7 downto 0) := x"27";
signal rs_pre: std_logic;
signal LCD_EN_reg: std_logic;
signal data: std_logic_vector(7 downto 0);
signal reset_n: std_logic;

-- state machine
TYPE writestate_type IS(start, ready, data_valid, busy_high, repeat, pause, do_nothing);
signal writestate: writestate_type := start;

-- i2c
signal bytecount: integer range 0 to 41 := 0;
signal i2c_data: std_logic_vector(7 downto 0);
signal nibble: std_logic;
signal i2c_enable: std_logic;
signal i2c_busy: std_logic;
signal enable_cnt: integer range 0 to 2;
signal pause_cnt: integer range 0 to input_clk / 2;
signal pause_max: integer range 0 to input_clk / 2;

begin

    -- I2C
    i2c_master_inst: i2c_master
    GENERIC MAP(
         input_clk => input_clk,  
         bus_clk   => 50_000) 
    port map (
        clk => clk,
        reset_n => reset_n,
        ena => i2c_enable,
        addr => lcd_address(6 downto 0),
        rw => '0',
        data_wr => i2c_data,
        busy => i2c_busy,
        data_rd => open,
        ack_error => open,
        sda => SDA,
        scl => SCL
    );

    process(bytecount)
    begin
         case bytecount is
            -- Initialize
            when 0 =>
                data <= x"33";
                rs_pre <= '0';
            when 1 =>
                data <= x"32";
                rs_pre <= '0';
            when 2 =>
                data <= x"28";
                rs_pre <= '0';
            when 3 =>
                data <= x"06";
                rs_pre <= '0';
            when 4 =>
                data <= x"01";
                rs_pre <= '0';
            when 5 =>
                data <= x"0F";
                rs_pre <= '0';
            when 6 =>
                data <= x"0C";
                rs_pre <= '0';
            when 7 =>
                data <= x"80";
                rs_pre <= '0';
            -- First line
            when 8 =>
                data <= row1(127 downto 120);
                rs_pre <= '1';
            when 9 =>
                data <= row1(119 downto 112);
                rs_pre <= '1';
            when 10 =>
                data <= row1(111 downto 104);
                rs_pre <= '1';
            when 11 =>
                data <= row1(103 downto 96);
                rs_pre <= '1';
            when 12 =>
                data <= row1(95 downto 88);
                rs_pre <= '1';
            when 13 =>
                data <= row1(87 downto 80);
                rs_pre <= '1';
            when 14 =>
                data <= row1(79 downto 72);
                rs_pre <= '1';
            when 15 =>
                data <= row1(71 downto 64);
                rs_pre <= '1';
            when 16 =>
                data <= row1(63 downto 56);
                rs_pre <= '1';
            when 17 =>
                data <= row1(55 downto 48);
                rs_pre <= '1';
            when 18 =>
                data <= row1(47 downto 40);
                rs_pre <= '1';
            when 19 =>
                data <= row1(39 downto 32);
                rs_pre <= '1';
            when 20 =>
                data <= row1(31 downto 24);
                rs_pre <= '1';
            when 21 =>
                data <= row1(23 downto 16);
                rs_pre <= '1';
            when 22 =>
                data <= row1(15 downto 8);
                rs_pre <= '1';
            when 23 =>
                data <= row1(7 downto 0);
                rs_pre <= '1';
            -- Second line
            when 24 =>
                data <= x"C0";
                rs_pre <= '0';
            when 25 =>
                data <= row2(127 downto 120);
                rs_pre <= '1';
            when 26 =>
                data <= row2(119 downto 112);
                rs_pre <= '1';
            when 27 =>
                data <= row2(111 downto 104);
                rs_pre <= '1';
            when 28 =>
                data <= row2(103 downto 96);
                rs_pre <= '1';
            when 29 =>
                data <= row2(95 downto 88);
                rs_pre <= '1';
            when 30 =>
                data <= row2(87 downto 80);
                rs_pre <= '1';
            when 31 =>
                data <= row2(79 downto 72);
                rs_pre <= '1';
            when 32 =>
                data <= row2(71 downto 64);
                rs_pre <= '1';
            when 33 =>
                data <= row2(63 downto 56);
                rs_pre <= '1';
            when 34 =>
                data <= row2(55 downto 48);
                rs_pre <= '1';
            when 35 =>
                data <= row2(47 downto 40);
                rs_pre <= '1';
            when 36 =>
                data <= row2(39 downto 32);
                rs_pre <= '1';
            when 37 =>
                data <= row2(31 downto 24);
                rs_pre <= '1';
            when 38 =>
                data <= row2(23 downto 16);
                rs_pre <= '1';
            when 39 =>
                data <= row2(15 downto 8);
                rs_pre <= '1';
            when 40 =>
                data <= row2(7 downto 0);
                rs_pre <= '1';
            when others =>
                data <= x"20";
                rs_pre <= '0';
        end case;
    end process;

    process(clk)
    begin
        if rising_edge(clk) then
            if(reset = '0') then
                reset_n <= '0';
                writestate <= start;
                bytecount <= 0;
				i2c_enable <= '0';
                LCD_EN_reg <= '0';
                nibble <= '0';
                enable_cnt <= 0;
            else
				reset_n <= '1';
                case writestate is
                    when start =>
                        i2c_enable <= '0';
                        writestate <= ready;
                        pause_cnt <= 0;
                        if enable_cnt = 1 then
                            LCD_EN_reg <= '1';
                        else
                            LCD_EN_reg <= '0';
                        end if;
                        if nibble = '1' then
                            i2c_data <= data(3 downto 0) & '1' & LCD_EN_reg & '0' & rs_pre;
                        else
                            i2c_data <= data(7 downto 4) & '1' & LCD_EN_reg & '0' & rs_pre;
                        end if;

                    when ready =>
                        if i2c_busy = '0' then
                            i2c_enable <= '1';
                            writestate <= data_valid;
                        end if;

                    when data_valid =>
                        if i2c_busy = '1' then
                            i2c_enable <= '0';
                            writestate <= busy_high;
                        end if;

                    when busy_high =>
                        if(i2c_busy = '0') then
                            writestate <= repeat;
                         end if;

                    when repeat =>
                        if enable_cnt < 2 then
                            LCD_EN_reg <= not LCD_EN_reg;
                            enable_cnt <= enable_cnt + 1;
                            writestate <= start;
                        else
                            LCD_EN_reg <= '0';
                            enable_cnt <= 0;
                            writestate <= pause;
                        end if;
                        case(bytecount) is
                            when 0 => pause_max <= input_clk / 200;
                            when 1 => pause_max <= input_clk / 200;
                            when 39 => pause_max <= input_clk / 5;
                            when others => pause_max <= input_clk / 1000;
                        end case;

                    when pause =>
                        if pause_cnt < pause_max then
                            pause_cnt <= pause_cnt + 1;
                        else
                            pause_cnt <= 0;
                            if nibble = '1' then
                                nibble <= '0';
                                enable_cnt <= 0;
                                if(bytecount = 41) then
                                    writestate <= do_nothing;
                                else
                                    bytecount <= bytecount + 1;
                                    writestate <= pause;
                                end if;
                            else
                                nibble <= '1';
                                writestate <= pause;
                            end if;
                            if bytecount /= 41 then
                                writestate <= start;
                            end if;
                        end if;

                    when do_nothing =>
                        bytecount <= 0;
                        LCD_EN_reg <= '0';
                        i2c_enable <= '0';
                        enable_cnt <= 0;
                        nibble <= '0';

                    when others => null;
                end case;
            end if;
        end if;
    end process;
end Behavioral;