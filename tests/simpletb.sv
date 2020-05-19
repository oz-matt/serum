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
		#50
		$finish;
	end

	initial begin
		vif.nreset <= 0; //Start in reset to initialize registers
		#4
		vif.nreset <= 1;

		vif.execute_write('hf3, 'hb4b4b4b4);
		vif.execute_read('hf3); //Value then avilable in vif.so_data

		$display("Read data: %X", vif.so_data);

	end

endmodule