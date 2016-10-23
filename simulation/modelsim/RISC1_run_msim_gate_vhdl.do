transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {RISC1.vho}

vcom -93 -work work {/home/virtualgod/Altera/RISC1/testbench_regfile.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /regFile=RISC1_vhd.sdo -L maxv -L gate_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
