simSetSimulator "-vcssv" -exec "simv" -args -uvmDebug on
debImport "-sverilog" "-ntb_opts" "uvm-1.2" "./patrec.sv" \
          "./axi_lite_int.sv" "./pkg/prenv.svh" "./pkg/axil_if_c.sv" \
          "./tests/simpletb.sv" "./uvm/tbase.sv" "-l" "simv.log" \
          "+UVM_TESTNAME=test_base" "+UVM_VERBOSITY=UVM_MEDIUM" "+" "+" \
          "+UVM_TR_RECORD" "+UVM_LOG_RECORD" "+ntb_random_seed=1"
debLoadSimResult \
           ./novas.fsdb
wvCreateWindow
srcHBSelect "simpletb.vif" -win $_nTrace1
wvAddSubGroup -win $_nWave2 -holdpost {vif(axilite_int#(1,32,8))}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1/vif(axilite_int#(1,32,8))" 0)}
srcHBSelect "simpletb.vif" -win $_nTrace1
wvSetPosition -win $_nWave2 {("G2" 0)}
wvAddSubGroup -win $_nWave2 -holdpost {vif(axilite_int(1,32,8))}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2/vif(axilite_int(1,32,8))" 0)}
wvAddSignal -win $_nWave2 "/simpletb/vif/AXI_ACLK" \
           "/simpletb/vif/AXI_ARESETN" \
           "/simpletb/vif/AXI_ARVALID" \
           "/simpletb/vif/AXI_ARREADY"
wvSetPosition -win $_nWave2 {("G2/vif(axilite_int(1,32,8))" 0)}
wvSetPosition -win $_nWave2 {("G2/vif(axilite_int(1,32,8))" 8)}
wvSetPosition -win $_nWave2 {("G2/vif(axilite_int(1,32,8))" 8)}
wvSetPosition -win $_nWave2 {("G2" 0)}
verdiWindowResize -win Verdi_1 "213" "221" "983" "693"
verdiWindowResize -win Verdi_1 "213" "221" "983" "832"
wvSelectSignal -win $_nWave2 {( "G2/vif(axilite_int(1,32,8))" 8 )} 
wvSelectSignal -win $_nWave2 {( "G2/vif(axilite_int(1,32,8))" 8 )} 
wvSetPosition -win $_nWave2 {("G2/vif(axilite_int(1,32,8))" 8)}
wvExpandBus -win $_nWave2 {("G2/vif(axilite_int(1,32,8))" 8)}
wvZoomAll -win $_nWave2
