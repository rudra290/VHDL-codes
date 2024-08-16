transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/rudra/VHDL_Codes/Quiz/MP43/Gates.vhdl}
vcom -93 -work work {C:/Users/rudra/VHDL_Codes/Quiz/MP43/DUT.vhdl}
vcom -93 -work work {C:/Users/rudra/VHDL_Codes/Quiz/MP43/XOR_PS.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL_Codes/Quiz/MP43/OR_PS.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL_Codes/Quiz/MP43/AND_PS.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL_Codes/Quiz/MP43/MP43.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL_Codes/Quiz/MP43/HA.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL_Codes/Quiz/MP43/FA.vhd}

vcom -93 -work work {C:/Users/rudra/VHDL_Codes/Quiz/MP43/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
