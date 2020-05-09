`ifndef MDRIVER_INT
`define MDRIVER_INT

interface mdriver_int #(
		parameter [0:0] OPT_READ_SIDEEFFECTS = 1,
		parameter integer C_AXI_DATA_WIDTH	= 32,
		parameter integer C_AXI_ADDR_WIDTH	= 8
	);
	
	logic										clk;
	logic										nreset;
	logic[C_AXI_ADDR_WIDTH-1:0]					si_address;
	logic[C_AXI_DATA_WIDTH-1:0]					si_data;
	logic[C_AXI_DATA_WIDTH-1:0]					so_data;
	logic										we;
	
	modport master
	(
		input									clk,
		input									nreset,
		output 									si_address,
		output 									si_data,
		input 									so_data,
		output 									we
	);
	
	modport slave
	(
		input									clk,
		input									nreset,
		input 									si_address,
		input 									si_data,
		output 									so_data,
		input 									we
	);
	
endinterface : mdriver_int

`endif
