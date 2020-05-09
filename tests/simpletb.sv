
module simpletb;
	import axil_if_c::*;
	import uvm_pkg::*;
	import prenv::*;
	
	mdriver_int#(1,32,8) vif();
	
	master_wrapper master_wrapper_inst(.io(vif.slave));
	
	initial begin
		vif.clk = 0;
		forever #10 vif.clk = ~vif.clk;
	end
	
	initial begin
		uvm_config_db#(virtual mdriver_int#(1,32,8))::set(null, "*", "vif", vif);
  		$timeformat(-9, 1, "ns", 10);
		run_test();
	end
	
	
	function void placebyte(bit[7:0] nbyte);
		$display("sent %b at %t", nbyte, $time());
	endfunction
	
endmodule