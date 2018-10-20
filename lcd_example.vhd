LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY lcd_example IS
  PORT(
      clk       : IN  STD_LOGIC;  --system clock
		reset     : IN  STD_LOGIC;
		start     : IN  STD_LOGIC;
      rw, rs, e, lcd_on, lcd_blon : OUT STD_LOGIC;  --read/write, setup/data, and enable for lcd
      lcd_data  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)); --data signals for lcd
END lcd_example;

ARCHITECTURE behavior OF lcd_example IS
  SIGNAL   lcd_enable : STD_LOGIC := '0';
  SIGNAL   lcd_bus    : STD_LOGIC_VECTOR(9 DOWNTO 0):="0000000000";
  SIGNAL   lcd_busy   : STD_LOGIC := '1';
  SIGNAL   char       : INTEGER RANGE 0 TO 80 := 0;
  SIGNAL   address    : STD_LOGIC_VECTOR(6 DOWNTO 0):="0000000";

  COMPONENT lcd_controller IS
    PORT(
       clk        : IN  STD_LOGIC; --system clock
       reset_n    : IN  STD_LOGIC; --active low reinitializes lcd
       lcd_enable : IN  STD_LOGIC; --latches data into lcd controller
       lcd_bus    : IN  STD_LOGIC_VECTOR(9 DOWNTO 0); --data and control signals
       busy       : OUT STD_LOGIC; --lcd controller busy/idle feedback
       rw, rs, e  : OUT STD_LOGIC; --read/write, setup/data, and enable for lcd
       lcd_data   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)); --data signals for lcd
  END COMPONENT;
  
  COMPONENT ROM IS
	PORT
	(
		address	   : IN STD_LOGIC_VECTOR (6 DOWNTO 0);
		clock		   : IN STD_LOGIC  := '1';
		q	       	: OUT STD_LOGIC_VECTOR (9 DOWNTO 0));
  END COMPONENT;
  
  COMPONENT contador IS
  PORT(
      clk        : IN  STD_LOGIC;  --system clock
		reset      : IN  STD_LOGIC;
		start      : IN  STD_LOGIC;
		lcd_busy   : IN  STD_LOGIC;
		lcd_enable : OUT STD_LOGIC; 
      address    : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)); --data signals for lcd
  END COMPONENT;
  
  
BEGIN

  --instantiate the lcd controller
  U0: lcd_controller
    PORT MAP(clk => clk, reset_n => reset, lcd_enable => lcd_enable, lcd_bus => lcd_bus, 
             busy => lcd_busy, rw => rw, rs => rs, e => e, lcd_data => lcd_data);
  
  U1: ROM
    PORT MAP(address => address, clock => clk, q => lcd_bus);
  
  U2: contador
    PORT MAP(clk => clk, reset => reset, start => start, lcd_busy => lcd_busy, lcd_enable => lcd_enable,
				 address => address);
  
  lcd_on <= '1';
  lcd_blon <= '1';
  
END behavior;
