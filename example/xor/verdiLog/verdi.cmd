debImport "-f" "run.f"
debLoadSimResult /home/yangsiqi/coding/example/xor/top_tb.fsdb
wvCreateWindow
verdiDockWidgetSetCurTab -dock widgetDock_<Decl._Tree>
srcTBBTreeSelect -win $_nTrace1 -path "testbench"
srcTBBTreeSelect -win $_nTrace1 -path "testbench"
srcTBBTreeSelect -win $_nTrace1 -path "testbench"
srcTBBTreeSelect -win $_nTrace1 -path "testbench"
srcTBBTreeSelect -win $_nTrace1 -path "testbench"
srcTBTreeAction -win $_nTrace1 -path "testbench"
srcTBBTreeSelect -win $_nTrace1 -path "testbench"
srcTBBTreeSelect -win $_nTrace1 -path "testbench"
srcTBBTreeSelect -win $_nTrace1 -path "testbench"
srcTBTreeAction -win $_nTrace1 -path "testbench"
srcTBBTreeSelect -win $_nTrace1 -path "xorgate"
srcTBBTreeSelect -win $_nTrace1 -path "xorgate"
srcTBBTreeSelect -win $_nTrace1 -path "xorgate"
srcTBBTreeSelect -win $_nTrace1 -path "xorgate"
srcTBTreeAction -win $_nTrace1 -path "xorgate"
srcTBBTreeSelect -win $_nTrace1 -path "mux21"
srcTBBTreeSelect -win $_nTrace1 -path "mux21"
srcTBTreeAction -win $_nTrace1 -path "mux21"
srcTBBTreeSelect -win $_nTrace1 -path "xorgate"
srcTBBTreeSelect -win $_nTrace1 -path "xorgate"
srcTBTreeAction -win $_nTrace1 -path "xorgate"
srcTBBTreeSelect -win $_nTrace1 -path "testbench"
srcTBBTreeSelect -win $_nTrace1 -path "testbench"
srcTBTreeAction -win $_nTrace1 -path "testbench"
verdiDockWidgetSetCurTab -dock widgetDock_<Inst._Tree>
srcHBSelect "testbench.top.ins1" -win $_nTrace1
verdiDockWidgetSetCurTab -dock windowDock_OneSearch
verdiDockWidgetSetCurTab -dock widgetDock_<Message>
verdiDockWidgetSetCurTab -dock windowDock_OneSearch
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
srcHBSelect "testbench.top.ins1" -win $_nTrace1
srcHBSelect "testbench.top.ins2" -win $_nTrace1 -add
srcHBDrag -win $_nTrace1
wvRenameGroup -win $_nWave2 {G1} {ins1}
wvAddSignal -win $_nWave2 "/testbench/top/ins1/a" "/testbench/top/ins1/b" \
           "/testbench/top/ins1/select" "/testbench/top/ins1/y"
wvSetPosition -win $_nWave2 {("ins1" 0)}
wvSetPosition -win $_nWave2 {("ins1" 4)}
wvSetPosition -win $_nWave2 {("ins1" 4)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvRenameGroup -win $_nWave2 {G2} {ins2}
wvAddSignal -win $_nWave2 "/testbench/top/ins2/a" "/testbench/top/ins2/b" \
           "/testbench/top/ins2/select" "/testbench/top/ins2/y"
wvSetPosition -win $_nWave2 {("ins2" 0)}
wvSetPosition -win $_nWave2 {("ins2" 4)}
wvSetPosition -win $_nWave2 {("ins2" 4)}
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 5
wvSetCursor -win $_nWave2 0.945860 -snap {("ins1" 0)}
wvSetCursor -win $_nWave2 1.344895 -snap {("ins1" 2)}
wvSetCursor -win $_nWave2 1.965615 -snap {("ins1" 3)}
wvSetCursor -win $_nWave2 6.458451 -snap {("ins1" 3)}
wvSelectSignal -win $_nWave2 {( "ins1" 1 )} 
wvScrollDown -win $_nWave2 2
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
wvSetCursor -win $_nWave2 4.182475 -snap {("ins1" 3)}
wvSetCursor -win $_nWave2 159.165505
wvSetCursor -win $_nWave2 38.187788
wvSetCursor -win $_nWave2 26.701617
wvSetCursor -win $_nWave2 26.701617
wvSetCursor -win $_nWave2 2.763685 -snap {("ins1" 4)}
srcActiveTrace "testbench.top.ins1.y" -win $_nTrace1 -TraceByDConWave -TraceTime \
           0 -TraceValue 0
wvSetCursor -win $_nWave2 2.763685 -snap {("ins1" 4)}
wvSetCursor -win $_nWave2 2.216859 -snap {("ins2" 0)}
wvZoom -win $_nWave2 1.034534 4.404161
wvSetCursor -win $_nWave2 0.019489 -snap {("ins1" 2)}
wvSetCursor -win $_nWave2 0.229969 -snap {("ins1" 2)}
wvScrollDown -win $_nWave2 5
wvScrollUp -win $_nWave2 5
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 0.198787 -snap {("ins1" 2)}
wvZoom -win $_nWave2 0.699651 0.715242
wvZoom -win $_nWave2 1.046094 1.057661
wvSetCursor -win $_nWave2 1.710640 -snap {("ins2" 0)}
wvSetCursor -win $_nWave2 1.183745 -snap {("ins1" 4)}
wvSetCursor -win $_nWave2 0.086177 -snap {("ins1" 4)}
wvSetCursor -win $_nWave2 0.079815 -snap {("ins2" 0)}
wvSetCursor -win $_nWave2 0.148062 -snap {("ins2" 0)}
wvSetCursor -win $_nWave2 0.282244 -snap {("ins1" 4)}
wvSetCursor -win $_nWave2 0.043378 -snap {("ins1" 2)}
wvSetCursor -win $_nWave2 0.075188 -snap {("ins1" 3)}
