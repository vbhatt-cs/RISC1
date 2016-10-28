transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/virtualgod/Altera/RISC1/controlpath.vhdl}
vcom -93 -work work {/home/virtualgod/Altera/RISC1/memPackage.vhd}
vcom -93 -work work {/home/virtualgod/Altera/RISC1/datapathComponents.vhd}
vcom -93 -work work {/home/virtualgod/Altera/RISC1/finalComponents.vhd}
vcom -93 -work work {/home/virtualgod/Altera/RISC1/DataPath_RISC.vhd}
vcom -93 -work work {/home/virtualgod/Altera/RISC1/Comparator.vhd}
vcom -93 -work work {/home/virtualgod/Altera/RISC1/regFile.vhd}
vcom -93 -work work {/home/virtualgod/Altera/RISC1/dataRegister.vhd}
vcom -93 -work work {/home/virtualgod/Altera/RISC1/alu.vhd}
vcom -93 -work work {/home/virtualgod/Altera/RISC1/memory.vhd}
vcom -93 -work work {/home/virtualgod/Altera/RISC1/RISC1.vhd}
vcom -93 -work work {/home/virtualgod/Altera/RISC1/PE.vhd}

vcom -93 -work work {/home/virtualgod/Altera/RISC1/testbench_full.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  Testbench_full

add wave *
view structure
view signals
run -all
