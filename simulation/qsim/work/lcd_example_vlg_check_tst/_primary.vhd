library verilog;
use verilog.vl_types.all;
entity lcd_example_vlg_check_tst is
    port(
        e               : in     vl_logic;
        lcd_blon        : in     vl_logic;
        lcd_data        : in     vl_logic_vector(7 downto 0);
        lcd_on          : in     vl_logic;
        ledr            : in     vl_logic;
        rs              : in     vl_logic;
        rw              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end lcd_example_vlg_check_tst;
