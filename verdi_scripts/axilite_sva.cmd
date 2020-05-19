debImport "-ssf" "novas.fsdb"
debLoadSimResult /home/work/Desktop/serum/novas.fsdb
wvCreateWindow
verdiWindowResize -win $_Verdi_1 -2 "25" "1916" "851"
assCtrlInvoke -eval
AssEvalTree -select \
           {simpletb.master_wrapper_inst.vif.axil_checker_inst.axic_raddr_inst}
AssEvalChosen -add \
           {{simpletb.master_wrapper_inst.vif.axil_checker_inst.axic_raddr_inst.AXI4_ERRM_ARVALID_STABLE_inst} {simpletb.master_wrapper_inst.vif.axil_checker_inst.axic_raddr_inst.AXI4_ERRM_ARVALID_RESET_inst} {simpletb.master_wrapper_inst.vif.axil_checker_inst.axic_raddr_inst.AXI4_ERRM_ARADDR_STABLE_inst} {simpletb.master_wrapper_inst.vif.axil_checker_inst.axic_raddr_inst.AXI4_ERRS_ARREADY_X_inst} {simpletb.master_wrapper_inst.vif.axil_checker_inst.axic_raddr_inst.AXI4_ERRM_ARADDR_X_inst} {simpletb.master_wrapper_inst.vif.axil_checker_inst.axic_raddr_inst.AXI4_ERRM_ARVALID_X_inst} {simpletb.master_wrapper_inst.vif.axil_checker_inst.axic_raddr_inst.AXI4_RECS_ARREADY_MAX_WAIT_inst} }
psmSetOptions \
           -no_success 1 -flag_race 0 -no_filter 1 -no_cov_fail_filter 1 -Store_Item Assert -reset_filter 1 -display 0
psmCommitAssertions
vdac /home/work/Desktop/serum/novas.fsdb -o /home/work/Desktop/serum/.tmp_evaluate_result.fsdb_1589881357  -write 2 -reset_filter 
assMoveFile -from /home/work/Desktop/serum/.tmp_evaluate_result.fsdb_1589881357 \
           -to /home/work/Desktop/serum/evaluate_result.fsdb
assToolBuildVirFile -virtualFile /home/work/Desktop/serum/evaluate_result.fsdb.vf \
           -fileNum 2 -FileList \
           /home/work/Desktop/serum/novas.fsdb /home/work/Desktop/serum/evaluate_result.fsdb 
debCloseSimResult -IsShowWarn 0
debLoadSimResult /home/work/Desktop/serum/evaluate_result.fsdb.vf
assCtrlClose -eval
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
verdiDockWidgetSetCurTab -dock widgetDock_<Message>
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
assCtrlInvoke -eval
AssEvalChosen -del \
           {{simpletb.master_wrapper_inst.vif.axil_checker_inst.axic_raddr_inst.AXI4_ERRM_ARVALID_STABLE_inst} {simpletb.master_wrapper_inst.vif.axil_checker_inst.axic_raddr_inst.AXI4_ERRM_ARVALID_RESET_inst} {simpletb.master_wrapper_inst.vif.axil_checker_inst.axic_raddr_inst.AXI4_ERRM_ARADDR_STABLE_inst} {simpletb.master_wrapper_inst.vif.axil_checker_inst.axic_raddr_inst.AXI4_ERRS_ARREADY_X_inst} {simpletb.master_wrapper_inst.vif.axil_checker_inst.axic_raddr_inst.AXI4_ERRM_ARADDR_X_inst} {simpletb.master_wrapper_inst.vif.axil_checker_inst.axic_raddr_inst.AXI4_ERRM_ARVALID_X_inst} {simpletb.master_wrapper_inst.vif.axil_checker_inst.axic_raddr_inst.AXI4_RECS_ARREADY_MAX_WAIT_inst} }
AssEvalChosen -Addall
psmSetOptions \
           -no_success 1 -flag_race 0 -no_filter 1 -no_cov_fail_filter 1 -Store_Item Assert -reset_filter 1 -display 0
psmCommitAssertions
vdac /home/work/Desktop/serum/evaluate_result.fsdb.vf -o /home/work/Desktop/serum/.tmp_evaluate_result.fsdb_1589881393  -write 2 -reset_filter 
assMoveFile -from /home/work/Desktop/serum/.tmp_evaluate_result.fsdb_1589881393 \
           -to /home/work/Desktop/serum/evaluate_result.fsdb
assToolBuildVirFile -virtualFile /home/work/Desktop/serum/evaluate_result.fsdb.vf \
           -fileNum 2 -FileList \
           /home/work/Desktop/serum/novas.fsdb /home/work/Desktop/serum/evaluate_result.fsdb 
debCloseSimResult -IsShowWarn 0
debLoadSimResult /home/work/Desktop/serum/evaluate_result.fsdb.vf
assCtrlClose -eval
srcHBSelect "simpletb.master_wrapper_inst.vif.axil_checker_inst.axic_raddr_inst" \
           -win $_nTrace1
srcHBSelect "simpletb.master_wrapper_inst.vif.axil_checker_inst.axic_raddr_inst" \
           -win $_nTrace1
srcHBSelect "simpletb.master_wrapper_inst.vif.axil_checker_inst.axic_raddr_inst" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "simpletb.master_wrapper_inst.vif.axil_checker_inst.axic_raddr_inst" \
           -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "AXI_ACLK" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
srcDeselectAll -win $_nTrace1
srcSelect -signal "AXI_ACLK" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "AXI_ARESETN" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "AXI_ARADDR" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "AXI_ARVALID" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "AXI_ARREADY" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 22 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 29 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 37 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 46 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 53 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 60 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 67 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcHBSelect "simpletb.master_wrapper_inst.vif.axil_checker_inst.axic_rdata_inst" \
           -win $_nTrace1
srcHBSelect "simpletb.master_wrapper_inst.vif.axil_checker_inst.axic_rdata_inst" \
           -win $_nTrace1
srcHBSelect "simpletb.master_wrapper_inst.vif.axil_checker_inst.axic_rdata_inst" \
           -win $_nTrace1
srcHBSelect \
           "simpletb.master_wrapper_inst.vif.axil_checker_inst.axic_rdata_inst.AXI4_ERRS_RDATA_STABLE_inst" \
           -win $_nTrace1
srcHBSelect \
           "simpletb.master_wrapper_inst.vif.axil_checker_inst.axic_rdata_inst.AXI4_ERRS_RDATA_STABLE_inst" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "simpletb.master_wrapper_inst.vif.axil_checker_inst.axic_rdata_inst.AXI4_ERRS_RDATA_STABLE_inst" \
           -delim "."
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 27 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 36 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 36 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 44 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 52 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 59 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 67 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcHBSelect "simpletb.master_wrapper_inst.vif.axil_checker_inst.axic_rdata_inst" \
           -win $_nTrace1
srcHBSelect "simpletb.master_wrapper_inst.vif.axil_checker_inst.axic_waddr_inst" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "simpletb.master_wrapper_inst.vif.axil_checker_inst.axic_waddr_inst" \
           -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -word -line 21 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 28 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 37 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 45 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 52 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 59 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 66 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 66 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcHBSelect "simpletb.master_wrapper_inst.vif.axil_checker_inst.axic_wdata_inst" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "simpletb.master_wrapper_inst.vif.axil_checker_inst.axic_wdata_inst" \
           -delim "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 20 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 28 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 37 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 45 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 53 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 60 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 68 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcHBSelect "simpletb.master_wrapper_inst.vif.axil_checker_inst.axic_wresp_inst" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "simpletb.master_wrapper_inst.vif.axil_checker_inst.axic_wresp_inst" \
           -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -word -line 19 -pos 1 -win $_nTrace1
srcAction -pos 19 1 13 -win $_nTrace1 -name "AXI4_ERRS_BVALID_RESET_inst" \
          -ctrlKey off
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 27 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 34 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 41 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 49 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
verdiWindowWorkMode -win $_Verdi_1 -assertionDebug
verdiDockWidgetMaximize -dock windowDock_nWave_2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
