transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/rudra/VHDL_Codes/Quiz_N/Quiz2/Scan_Chain_Files/Scan_Chain_Files/v_jtag/synthesis/v_jtag.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL_Codes/Quiz_N/Quiz2/Scan_Chain_Files/Scan_Chain_Files/v_jtag/synthesis/v_jtag.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL_Codes/Quiz_N/Quiz2/Scan_Chain_Files/Scan_Chain_Files/TopLevel.vhdl}
vcom -93 -work work {C:/Users/rudra/VHDL_Codes/Quiz_N/Quiz2/MUX2_1.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL_Codes/Quiz_N/Quiz2/Gates.vhdl}
vcom -93 -work work {C:/Users/rudra/VHDL_Codes/Quiz_N/Quiz2/DUT.vhdl}
vcom -93 -work work {C:/Users/rudra/VHDL_Codes/Quiz_N/Quiz2/SHIFTR.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL_Codes/Quiz_N/Quiz2/XOR_PS.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL_Codes/Quiz_N/Quiz2/OR_PS.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL_Codes/Quiz_N/Quiz2/AND_PS.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL_Codes/Quiz_N/Quiz2/Quiz.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL_Codes/Quiz_N/Quiz2/HA.vhd}
vcom -93 -work work {C:/Users/rudra/VHDL_Codes/Quiz_N/Quiz2/FA.vhd}

vcom -93 -work work {C:/Users/rudra/VHDL_Codes/Quiz_N/Quiz2/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
