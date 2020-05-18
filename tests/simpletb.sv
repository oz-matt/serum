module simpletb;

  mdriver_int#(32,8) vif();

  master_wrapper master_wrapper_inst(.io(vif.slave));

  initial begin
    vif.clk = 0;
    forever #1 vif.clk = ~vif.clk;
  end

  integer data = 0;

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;

    vif.nreset <= 1; //Toggle reset at start to initialize registers
    #1
    vif.nreset <= 0;
    #1
    vif.nreset <= 1;

    vif.execute_write('hf3, 'hb4b4b4b4);
    vif.execute_read('hf3); //Value then avilable in vif.so_data

    $display("Read data: %X", vif.so_data);

    #20;

    $finish;

  end

endmodule