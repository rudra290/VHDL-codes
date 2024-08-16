transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {primeN.vho}

vcom -93 -work work {C:/Users/rudra/VHDL Codes/PS3/primeN/Testbench.vhdl}

vsim -t 1ps -L maxv -L gate_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
