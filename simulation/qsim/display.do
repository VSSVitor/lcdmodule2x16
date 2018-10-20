onerror {quit -f}
vlib work
vlog -work work display.vo
vlog -work work display.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.lcd_example_vlg_vec_tst
vcd file -direction display.msim.vcd
vcd add -internal lcd_example_vlg_vec_tst/*
vcd add -internal lcd_example_vlg_vec_tst/i1/*
add wave /*
run -all
