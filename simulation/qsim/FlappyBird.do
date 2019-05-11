onerror {quit -f}
vlib work
vlog -work work FlappyBird.vo
vlog -work work FlappyBird.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.test_vlg_vec_tst
vcd file -direction FlappyBird.msim.vcd
vcd add -internal test_vlg_vec_tst/*
vcd add -internal test_vlg_vec_tst/i1/*
add wave /*
run -all
