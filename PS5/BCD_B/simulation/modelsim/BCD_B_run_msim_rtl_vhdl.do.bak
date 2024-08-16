transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS5/BCD_B/Gates.vhdl}
vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS5/BCD_B/DUT.vhdl}
vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS5/BCD_B/XOR_PS.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS5/BCD_B/OR_PS.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS5/BCD_B/FOURBIT_AS.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS5/BCD_B/AND_PS.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS5/BCD_B/BCD_B.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS5/BCD_B/HA.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS5/BCD_B/FA.vhd}

vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS5/BCD_B/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
