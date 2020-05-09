module master_wrapper(mdriver_int.slave io);
	
	axilite_int#(1,32,8) vif();
	
	assign vif.AXI_ACLK = io.clk;
	assign vif.AXI_ARESETN = io.nreset;
	assign vif.AXI_WDATA = io.si_data;
	
	patrec patrec_inst(.io(vif.slave));
	
	integer clkctr;
	
	always_ff @(posedge io.clk or negedge io.nreset) begin
		if (!io.nreset) begin
			io.so_data <= 0;
			vif.AXI_ARVALID <= 0;
			clkctr <= 0;
		end
		else if (clkctr < 10) begin
			vif.AXI_ARVALID <= 0;
			clkctr <= clkctr + 1;
		end
		else if (clkctr < 15) begin
			clkctr <= clkctr + 1;
			vif.AXI_ARVALID <= 1;
		end
		else
			clkctr <= 0;
	end
	
endmodule