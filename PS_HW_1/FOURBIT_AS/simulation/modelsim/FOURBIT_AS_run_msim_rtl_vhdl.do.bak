transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS_HW_1/FOURBIT_AS/Gates.vhdl}
vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS_HW_1/FOURBIT_AS/DUT.vhdl}
vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS_HW_1/FOURBIT_AS/XOR_PS.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS_HW_1/FOURBIT_AS/OR_PS.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS_HW_1/FOURBIT_AS/AND_PS.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS_HW_1/FOURBIT_AS/FOURBIT_AS.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS_HW_1/FOURBIT_AS/HA.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS_HW_1/FOURBIT_AS/FA.vhd}

vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS_HW_1/FOURBIT_AS/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
