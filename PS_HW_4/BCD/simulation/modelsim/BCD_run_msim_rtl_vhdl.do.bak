transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS_HW_4/BCD/Gates.vhdl}
vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS_HW_4/BCD/DUT.vhdl}
vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS_HW_4/BCD/XOR_PS.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS_HW_4/BCD/OR_PS.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS_HW_4/BCD/FOURBIT_AS.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS_HW_4/BCD/AND_PS.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS_HW_4/BCD/BCD.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS_HW_4/BCD/HA.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS_HW_4/BCD/FA.vhd}

vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS_HW_4/BCD/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
