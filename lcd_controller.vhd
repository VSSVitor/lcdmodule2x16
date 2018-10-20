LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY lcd_controller IS
  PORT(
    clk        : IN    STD_LOGIC;  --system clock
    reset_n    : IN    STD_LOGIC;  --active low reinitializes lcd
    lcd_enable : IN    STD_LOGIC;  --latches data into lcd controller
    lcd_bus    : IN    STD_LOGIC_VECTOR(9 DOWNTO 0);  --data and control signals
    busy       : OUT   STD_LOGIC := '1';  --lcd controller busy/idle feedback
    rw, rs, e  : OUT   STD_LOGIC;  --read/write, setup/data, and enable for lcd
    lcd_data   : OUT   STD_LOGIC_VECTOR(7 DOWNTO 0)); --data signals for lcd
END lcd_controller;

ARCHITECTURE controller OF lcd_controller IS
  TYPE CONTROL IS(power_up, initialize, ready, send);
  SIGNAL    state      : CONTROL;
  CONSTANT  freq       : INTEGER := 50; --system clock frequency in MHz
BEGIN
  PROCESS(clk)
    VARIABLE clk_count : INTEGER := 0; --event counter for timing
  BEGIN
  IF(clk'EVENT and clk = '1') THEN
    
      CASE state IS
        
        --wait 50 ms to ensure Vdd has risen and required LCD wait is met
        WHEN power_up =>
          busy <= '1';
          IF(clk_count < (50000 * freq)) THEN    --wait 50 ms
            clk_count := clk_count + 1;
            state <= power_up;
          ELSE                                   --power-up complete
            clk_count := 0;
            rs <= '0';
            rw <= '0';
            lcd_data <= "00110000";
            state <= initialize;
          END IF;
          
        --cycle through initialization sequence  
        WHEN initialize =>
          busy <= '1';
          clk_count := clk_count + 1;
          IF(clk_count < (10 * freq)) THEN       --function set
            lcd_data <= "00111100";      --2-line mode, display on
            --lcd_data <= "00110100";    --1-line mode, display on
            --lcd_data <= "00110000";    --1-line mdoe, display off
            --lcd_data <= "00111000";    --2-line mode, display off
            e <= '1';
            state <= initialize;
          ELSIF(clk_count < (60 * freq)) THEN    --wait 50 us
            lcd_data <= "00000000";
            e <= '0';
            state <= initialize;
          ELSIF(clk_count < (70 * freq)) THEN    --display on/off control
            lcd_data <= "00001100";      --display on, cursor off, blink off
            --lcd_data <= "00001101";    --display on, cursor off, blink on
            --lcd_data <= "00001110";    --display on, cursor on, blink off
            --lcd_data <= "00001111";    --display on, cursor on, blink on
            --lcd_data <= "00001000";    --display off, cursor off, blink off
            --lcd_data <= "00001001";    --display off, cursor off, blink on
            --lcd_data <= "00001010";    --display off, cursor on, blink off
            --lcd_data <= "00001011";    --display off, cursor on, blink on            
            e <= '1';
            state <= initialize;
          ELSIF(clk_count < (120 * freq)) THEN   --wait 50 us
            lcd_data <= "00000000";
            e <= '0';
            state <= initialize;
          ELSIF(clk_count < (130 * freq)) THEN   --display clear
            lcd_data <= "00000001";
            e <= '1';
            state <= initialize;
          ELSIF(clk_count < (2130 * freq)) THEN  --wait 2 ms
            lcd_data <= "00000000";
            e <= '0';
            state <= initialize;
          ELSIF(clk_count < (2140 * freq)) THEN  --entry mode set
            lcd_data <= "00000110";      --increment mode, entire shift off
            --lcd_data <= "00000111";    --increment mode, entire shift on
            --lcd_data <= "00000100";    --decrement mode, entire shift off
            --lcd_data <= "00000101";    --decrement mode, entire shift on
            e <= '1';
            state <= initialize;
          ELSIF(clk_count < (2200 * freq)) THEN  --wait 60 us
            lcd_data <= "00000000";
            e <= '0';
            state <= initialize;
          ELSE                                   --initialization complete
            clk_count := 0;
            busy <= '0';
            state <= ready;
          END IF;    
       
        --wait for the enable signal and then latch in the instruction
        WHEN ready =>
          IF(lcd_enable = '1') THEN
            busy <= '1';
            rs <= lcd_bus(9);
            rw <= lcd_bus(8);
            lcd_data <= lcd_bus(7 DOWNTO 0);
            clk_count := 0;            
            state <= send;
          ELSE
            busy <= '0';
            rs <= '0';
            rw <= '0';
            lcd_data <= "00000000";
            clk_count := 0;
            state <= ready;
          END IF;
        
        --send instruction to lcd        
        WHEN send =>
        busy <= '1';
        IF(clk_count < (50 * freq)) THEN  --do not exit for 50us
           busy <= '1';
           IF(clk_count < freq) THEN      --negative enable
            e <= '0';
           ELSIF(clk_count < (14 * freq)) THEN  --positive enable half-cycle
            e <= '1';
           ELSIF(clk_count < (27 * freq)) THEN  --negative enable half-cycle
            e <= '0';
           END IF;
           clk_count := clk_count + 1;
           state <= send;
        ELSE
          clk_count := 0;
          state <= ready;
        END IF;

      END CASE;    
    
      --reset
      IF(reset_n = '0') THEN
          state <= power_up;
      END IF;
    
    END IF;
  END PROCESS;
END controller;
