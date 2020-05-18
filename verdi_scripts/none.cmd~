debImport "-i" "-simflow" "-simBin" "./simv" "-simDelim" \
          "+ntb_random_seed=1 -a simv.log +UVM_TESTNAME=test_base +UVM_VERBOSITY=UVM_MEDIUM + + +UVM_TR_RECORD +UVM_LOG_RECORD +UVM_VERDI_TRACE"
srcTBInvokeSim
verdiDockWidgetSetCurTab -dock widgetDock_<Decl._Tree>
verdiDockWidgetSetCurTab -dock widgetDock_<Inst._Tree>
srcHBSelect "simpletb.vif" -win $_nTrace1
srcHBSelect "simpletb.vif" -win $_nTrace1
srcHBSelect "simpletb.vif" -win $_nTrace1
srcSetScope -win $_nTrace1 "simpletb.vif" -delim "."
wvCreateWindow
srcDeselectAll -win $_nTrace1
srcSelect -signal "AXI_ACLK" -win $_nTrace1
srcAction -pos 9 11 3 -win $_nTrace1 -name "AXI_ACLK" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -signal "vif.AXI_ACLK" -line 12 -pos 1
srcAddSelectedToWave -win $_nTrace1
srcHBSelect "simpletb.vif" -win $_nTrace1
srcHBSelect "simpletb.vif" -win $_nTrace1
srcSetScope -win $_nTrace1 "simpletb.vif" -delim "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "AXI_ARVALID" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "AXI_ARREADY" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcTBRunSim
