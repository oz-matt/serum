interface axilite_int #(
		parameter integer C_AXI_DATA_WIDTH = 32,
		parameter integer C_AXI_ADDR_WIDTH = 8
	);


	logic AXI_ACLK;
	logic AXI_ARESETN;

	// Read address    M -> S
	logic [C_AXI_ADDR_WIDTH-1 : 0] AXI_ARADDR;
	logic [2:0]                    AXI_ARPROT;
	logic                          AXI_ARVALID;
	logic                          AXI_ARREADY;

	// Read data    S -> M
	logic [C_AXI_DATA_WIDTH-1 : 0] AXI_RDATA;
	logic [1:0]                    AXI_RRESP;
	logic                          AXI_RVALID;
	logic                          AXI_RREADY;

	// Write address   M -> S
	logic [C_AXI_ADDR_WIDTH-1 : 0] AXI_AWADDR;
	logic [2:0]                    AXI_AWPROT;
	logic                          AXI_AWVALID;
	logic                          AXI_AWREADY;

	// Write data    M -> S
	logic [C_AXI_DATA_WIDTH-1 : 0]   AXI_WDATA;
	logic [(C_AXI_DATA_WIDTH/8)-1:0] AXI_WSTRB;
	logic                            AXI_WVALID;
	logic                            AXI_WREADY;

	// Write response    S -> M
	logic [1:0] AXI_BRESP;
	logic       AXI_BVALID;
	logic       AXI_BREADY;


	modport master(
		input AXI_ACLK,
		input AXI_ARESETN,

		// Read address    M -> S
		output AXI_ARADDR,
		output AXI_ARPROT,
		output AXI_ARVALID,
		input AXI_ARREADY,

		// Read data    S -> M
		input AXI_RDATA,
		input AXI_RRESP,
		input AXI_RVALID,
		output AXI_RREADY,

		// Write address   M -> S
		output AXI_AWADDR,
		output AXI_AWPROT,
		output AXI_AWVALID,
		input AXI_AWREADY,

		// Write data    M -> S
		output AXI_WDATA,
		output AXI_WSTRB,
		output AXI_WVALID,
		input AXI_WREADY,

		// Write response    S -> M
		input AXI_BRESP,
		input AXI_BVALID,
		output AXI_BREADY

	);
	modport slave(
		input AXI_ACLK,
		input AXI_ARESETN,

		// Read address    M -> S
		input AXI_ARADDR,
		input AXI_ARPROT,
		input AXI_ARVALID,
		output AXI_ARREADY,

		// Read data    S -> M
		output AXI_RDATA,
		output AXI_RRESP,
		output AXI_RVALID,
		input AXI_RREADY,

		// Write address   M -> S
		input AXI_AWADDR,
		input AXI_AWPROT,
		input AXI_AWVALID,
		output AXI_AWREADY,

		// Write data    M -> S
		input AXI_WDATA,
		input AXI_WSTRB,
		input AXI_WVALID,
		output AXI_WREADY,

		// Write response    S -> M
		output AXI_BRESP,
		output AXI_BVALID,
		input AXI_BREADY

	);

	axil_checker#(32,8) axil_checker_inst (
		.AXI_ACLK   (AXI_ACLK   ),
		.AXI_ARESETN(AXI_ARESETN),
		.AXI_ARADDR (AXI_ARADDR ),
		.AXI_ARVALID(AXI_ARVALID),
		.AXI_ARREADY(AXI_ARREADY),
		.AXI_RDATA  (AXI_RDATA  ),
		.AXI_RVALID (AXI_RVALID ),
		.AXI_RREADY (AXI_RREADY ),
		.AXI_AWADDR (AXI_AWADDR ),
		.AXI_AWVALID(AXI_AWVALID),
		.AXI_AWREADY(AXI_AWREADY),
		.AXI_WDATA  (AXI_WDATA  ),
		.AXI_WVALID (AXI_WVALID ),
		.AXI_WREADY (AXI_WREADY ),
		.AXI_BVALID (AXI_BVALID ),
		.AXI_BREADY(AXI_BREADY));

endinterface : axilite_int
