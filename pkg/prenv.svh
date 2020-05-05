package prenv;
	`include "uvm/seq_packet.sv"
	`include "uvm/imon.sv" 
	`include "uvm/omon.sv"
	`include "uvm/seq.sv"
	`include "uvm/driver.sv" 
	`include "uvm/agt.sv"
	`include "uvm/oagt.sv"
	`include "uvm/scoreboard.sv"
	`include "uvm/env.sv" 
	`include "uvm/tbase.sv" 
endpackage

//vcs -sverilog -debug_access+r -ntb_opts uvm-1.2 -timescale=1ns/1ns +vcs+flush+all +warn=all uvm/seq_packet.sv uvm/seq.sv uvm/driver.sv uvm/agt.sv uvm/env.sv uvm/tbase.sv pkg/*.sv *.sv tests/*.sv -top simpletb