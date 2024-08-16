transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS21/MUX44_1/MUX4_1.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS21/MUX44_1/MUX2_1.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS21/MUX44_1/DUT.vhdl}
vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS21/MUX44_1/MUX44_1.vhd}

vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS21/MUX44_1/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
