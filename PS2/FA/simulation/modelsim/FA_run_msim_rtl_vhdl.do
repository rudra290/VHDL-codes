transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS2/FA/Gates.vhdl}
vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS2/FA/DUT.vhdl}
vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS2/FA/AND_PS.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS2/FA/OR_PS.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS2/FA/XOR_PS.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS2/FA/HA.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS2/FA/FA.vhd}

vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS2/FA/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
