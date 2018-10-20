library verilog;
use verilog.vl_types.all;
entity lcd_example is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        rw              : out    vl_logic;
        rs              : out    vl_logic;
        e               : out    vl_logic;
        lcd_on          : out    vl_logic;
        lcd_blon        : out    vl_logic;
        lcd_data        : out    vl_logic_vector(7 downto 0);
        ledr            : out    vl_logic
    );
end lcd_example;
