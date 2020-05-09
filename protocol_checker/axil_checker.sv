`ifndef AXIL_CHECKER
`define AXIL_CHECKER

interface axil_checker #(
		parameter [0:0] OPT_READ_SIDEEFFECTS = 1,
		parameter integer C_AXI_DATA_WIDTH	= 32,
		parameter integer C_AXI_ADDR_WIDTH	= 8
	)
	(
	
	input logic  								AXI_ACLK,
	input logic  								AXI_ARESETN,
	
	// Read address    M -> S
	input logic [C_AXI_ADDR_WIDTH-1 : 0] 		AXI_ARADDR,
	input logic [2:0] 						AXI_ARPROT,
	input logic  								AXI_ARVALID,
	input logic  								AXI_ARREADY
		
	);
	
	property check_arrdy;
		@(posedge AXI_ACLK) AXI_ARVALID |-> AXI_ARREADY;
	endproperty
	
	check_arrdy_inst: assert property (check_arrdy);
	
endinterface : axil_checker


`endif
