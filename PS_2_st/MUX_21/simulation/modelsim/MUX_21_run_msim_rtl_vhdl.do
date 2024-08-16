transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/rudra/VHDL_Codes/PS_2_st/MUX_21/Gates.vhdl}
vcom -93 -work work {C:/Users/rudra/VHDL_Codes/PS_2_st/MUX_21/DUT.vhdl}
vcom -93 -work work {C:/Users/rudra/VHDL_Codes/PS_2_st/MUX_21/MUX_21.vhd}

vcom -93 -work work {C:/Users/rudra/VHDL_Codes/PS_2_st/MUX_21/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
