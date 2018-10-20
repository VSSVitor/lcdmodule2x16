LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY contador IS
  PORT(
      clk        : IN  STD_LOGIC;  --system clock
		reset      : IN  STD_LOGIC;
		start      : IN  STD_LOGIC;
		lcd_busy   : IN  STD_LOGIC;
		lcd_enable : OUT STD_LOGIC:='0'; 
      address    : OUT STD_LOGIC_VECTOR(6 DOWNTO 0):="0000000"); --data signals for lcd
END contador;

ARCHITECTURE behavior OF contador IS
  SIGNAL   lcd_e		 : STD_LOGIC := '0';
  SIGNAL   EN		    : STD_LOGIC := '0';
  SIGNAL   char       : INTEGER RANGE 0 TO 80 := 1;
  
BEGIN
  PROCESS(clk)
  BEGIN
    IF(clk'EVENT AND clk = '1' AND EN = '1') THEN
      IF(lcd_busy = '0' AND lcd_e = '0' AND char <80) THEN
				char <= char + 1;
				address <= std_logic_vector(to_unsigned(char, 7));
				lcd_e <= '1';
      ELSE
        lcd_e <= '0';
      END IF;
    END IF;
    IF(reset = '0') THEN
        char <= 1;
		  EN <= '0';
    END IF;	 
    IF (start = '0') THEN
		  EN <= '1';
    END IF;
  END PROCESS;
  lcd_enable <= lcd_e;
END behavior;
