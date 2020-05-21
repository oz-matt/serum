module simpletb;

	mdriver_int#(32,8) vif();

	master_wrapper master_wrapper_inst(.io(vif.slave));

	initial begin
		vif.clk = 0;
		forever #1 vif.clk = ~vif.clk;
	end

	initial begin
		$fsdbDumpfile("novas.fsdb");
		$fsdbDumpvars();
		$fsdbDumpon;
		//#500
		//$finish;
	end

	initial begin
		uvm_config_db#(virtual mdriver_int#(32,8))::set(null, "*", "vif", vif); 
		$timeformat(-9, 1, "ns", 10); 
		run_test();
	end

endmodule