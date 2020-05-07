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
verdiWindowWorkMode -win $_Verdi_1 -transactionDebug
evbOpenFSDB -win $_evbWnd4 -f "/home/work/Desktop/serum/novas.fsdb"
evbHierTree -win $_evbWnd4 -select "\$trans_root/uvm_test_top/env/agent/mon"
evbHierTree -win $_evbWnd4 -click2
evbSelect -win $_evbWnd4 -streamId 0 -id 8
verdiDockWidgetSetCurTab -dock windowDock_tAnalyzer_5
verdiDockWidgetFix -dock windowDock_tBrowser_4
verdiWindowWorkMode -win $_Verdi_1 -interactiveDebug
verdiWindowWorkMode -win $_Verdi_1 -transactionDebug
verdiDockWidgetSetCurTab -dock windowDock_tAnalyzer_5
verdiDockWidgetSetCurTab -dock windowDock_tRelation_6
verdiDockWidgetMaximize -dock windowDock_tBrowser_4
verdiDockWidgetRestore -dock windowDock_tBrowser_4
verdiDockWidgetMaximize -dock windowDock_tBrowser_4
verdiWindowBeWindow -win $_tBrowser_4
verdiWindowWorkMode -win $_Verdi_1 -interactiveDebug
verdiWindowBeWindow -win $_nWave3
wvResizeWindow -win $_nWave3 0 28 316 287
wvResizeWindow -win $_nWave3 284 273 844 557
wvSetCursor -win $_nWave3 1092.470572 -snap {("G1" 3)}
srcActiveTrace "simpletb.vif.AXI_ARREADY" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 100 -TraceValue 0
srcHBSelect "simpletb.patrec_inst" -win $_nTrace1
wvSetCursor -win $_nWave3 1397.346081 -snap {("G1" 2)}
wvSetCursor -win $_nWave3 1930.878220 -snap {("G1" 2)}
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvSetCursor -win $_nWave3 1167.883549 -snap {("G1" 0)}
wvZoomIn -win $_nWave3
wvSetCursor -win $_nWave3 1100.000000
wvSetCursor -win $_nWave3 1100.000000
evbHierTree -win $_evbWnd4 -select "\$trans_root/uvm_test_top/env/agent/drv"
evbHierTree -win $_evbWnd4 -click2
evbHierTree -win $_evbWnd4 -select \
           "\$trans_root/uvm_test_top/env/agent/drv_side_sequencer"
evbHierTree -win $_evbWnd4 -click2
evbSyncViewRange -win $_evbWnd4 -on
evbZoomOutH -win $_evbWnd4
evbZoomOutH -win $_evbWnd4
evbZoomInH -win $_evbWnd4
evbZoomInH -win $_evbWnd4
evbZoomInH -win $_evbWnd4
evbMarkTransWave -win $_evbWnd4 -on
evbZoomOutH -win $_evbWnd4
evbZoomOutH -win $_evbWnd4
evbSelect -win $_evbWnd4 -streamId 1 -id 6
evbSelect -win $_evbWnd4 -streamId 1 -id 13
evbSelect -win $_evbWnd4 -streamId 3 -id 12
evbSelect -win $_evbWnd4 -streamId 3 -id 5
evbSelect -win $_evbWnd4 -streamId 1 -id 16
evbSelect -win $_evbWnd4 -streamId 3 -id 15
evbZoomOutV -win $_evbWnd4
evbZoomOutV -win $_evbWnd4
evbZoomInV -win $_evbWnd4
evbZoomOutH -win $_evbWnd4
evbZoomOutH -win $_evbWnd4
evbSelect -win $_evbWnd4 -streamId 3 -id 18
evbSelect -win $_evbWnd4 -streamId 1 -id 22
evbSelect -win $_evbWnd4 -streamId 2 -id 3
evbSelect -win $_evbWnd4 -streamId 1 -id 25
evbSelect -win $_evbWnd4 -streamId 0 -id 27
evbSelect -win $_evbWnd4 -streamId 3 -id 24
evbHierTree -win $_evbWnd4 -select "\$trans_root/uvm_test_top/env/agent/mon"
evbHierTree -win $_evbWnd4 -click2
evbHierTree -win $_evbWnd4 -select "\$trans_root/uvm_test_top/env/scbd"
evbHierTree -win $_evbWnd4 -click2
evbSelect -win $_evbWnd4 -streamId 5 -id 28
evbSelect -win $_evbWnd4 -streamId 5 -id 30
evbSelect -win $_evbWnd4 -streamId 5 -id 28
evbSelect -win $_evbWnd4 -streamId 5 -id 30
evbSyncCursorTime -win $_evbWnd4 -on
wvSetCursor -win $_nWave3 5178.932077 -snap {("G2" 0)}
wvSetCursor -win $_nWave3 8202.470457 -snap {("G2" 0)}
wvSetCursor -win $_nWave3 7064.901562 -snap {("G1" 3)}
wvSetCursor -win $_nWave3 4460.467512 -snap {("G1" 3)}
wvSetCursor -win $_nWave3 7903.110222 -snap {("G1" 3)}
wvSetCursor -win $_nWave3 8022.854316 -snap {("G1" 3)}
