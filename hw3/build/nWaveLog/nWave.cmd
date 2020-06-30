wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/wayen/DIC/hw3/build/cs.fsdb}
wvResizeWindow -win $_nWave1 0 23 1920 1137
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvGetSignalSetScope -win $_nWave1 "/test"
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/clk} \
{/test/pattern_num\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvGetSignalClose -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectGroup -win $_nWave1 {G2}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/clk} \
{/test/pattern_num\[31:0\]} \
{/test/top/X\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/clk} \
{/test/pattern_num\[31:0\]} \
{/test/top/X\[7:0\]} \
{/test/top/sum\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/clk} \
{/test/pattern_num\[31:0\]} \
{/test/top/X\[7:0\]} \
{/test/top/sum\[11:0\]} \
{/test/top/reg_sum\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/clk} \
{/test/pattern_num\[31:0\]} \
{/test/top/X\[7:0\]} \
{/test/top/sum\[11:0\]} \
{/test/top/reg_sum\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 4 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 4 5 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 110440.463447 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 120029.168294 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 120515.904581 -snap {("G1" 5)}
wvSelectGroup -win $_nWave1 {G2}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/clk} \
{/test/pattern_num\[31:0\]} \
{/test/top/X\[7:0\]} \
{/test/top/sum\[11:0\]} \
{/test/top/reg_sum\[11:0\]} \
{/test/top/ans\[12:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 115453.847199 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 114967.110913 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 119347.737493 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 110683.831590 -snap {("G1" 5)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/clk} \
{/test/pattern_num\[31:0\]} \
{/test/top/X\[7:0\]} \
{/test/top/sum\[11:0\]} \
{/test/top/reg_sum\[11:0\]} \
{/test/top/ans\[12:0\]} \
{/test/top/Y\[9:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 130737.366601 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 7 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/clk} \
{/test/pattern_num\[31:0\]} \
{/test/top/X\[7:0\]} \
{/test/top/sum\[11:0\]} \
{/test/top/reg_sum\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/top/ans\[12:0\]} \
{/test/top/Y\[9:0\]} \
{/test/top/tmp_out\[0:7\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvExpandBus -win $_nWave1 {("G3" 1)}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectSignal -win $_nWave1 {( "G3" 2 3 4 5 6 7 8 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 8)}
wvSetCursor -win $_nWave1 134923.298666 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 130055.935800 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 129666.546770 -snap {("G1" 4)}
wvSelectSignal -win $_nWave1 {( "G3" 8 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvSetPosition -win $_nWave1 {("G3" 9)}
wvSetPosition -win $_nWave1 {("G3" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/clk} \
{/test/pattern_num\[31:0\]} \
{/test/top/X\[7:0\]} \
{/test/top/sum\[11:0\]} \
{/test/top/reg_sum\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/top/ans\[12:0\]} \
{/test/top/Y\[9:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/test/top/tmp_out\[0\]\[7:0\]} \
{/test/top/tmp_out\[1\]\[7:0\]} \
{/test/top/tmp_out\[2\]\[7:0\]} \
{/test/top/tmp_out\[3\]\[7:0\]} \
{/test/top/tmp_out\[4\]\[7:0\]} \
{/test/top/tmp_out\[5\]\[7:0\]} \
{/test/top/tmp_out\[6\]\[7:0\]} \
{/test/top/tmp_out\[7\]\[7:0\]} \
{/test/top/buff\[0:8\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSetPosition -win $_nWave1 {("G3" 9)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvExpandBus -win $_nWave1 {("G4" 1)}
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSelectGroup -win $_nWave1 {G4}
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSetPosition -win $_nWave1 {("G4" 1)}
wvCollapseBus -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 2 3 4 5 6 7 8 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 2 3 4 5 6 7 8 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSelectGroup -win $_nWave1 {G5}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/clk} \
{/test/pattern_num\[31:0\]} \
{/test/top/X\[7:0\]} \
{/test/top/sum\[11:0\]} \
{/test/top/reg_sum\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/top/ans\[12:0\]} \
{/test/top/Y\[9:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/test/top/tmp_out\[0\]\[7:0\]} \
{/test/top/tmp_out\[1\]\[7:0\]} \
{/test/top/tmp_out\[2\]\[7:0\]} \
{/test/top/tmp_out\[3\]\[7:0\]} \
{/test/top/tmp_out\[4\]\[7:0\]} \
{/test/top/tmp_out\[5\]\[7:0\]} \
{/test/top/tmp_out\[6\]\[7:0\]} \
{/test/top/tmp_out\[7\]\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/test/top/flag\[0:8\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSetPosition -win $_nWave1 {("G4" 1)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvExpandBus -win $_nWave1 {("G4" 1)}
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvSetPosition -win $_nWave1 {("G4" 11)}
wvSetPosition -win $_nWave1 {("G4" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/clk} \
{/test/pattern_num\[31:0\]} \
{/test/top/X\[7:0\]} \
{/test/top/sum\[11:0\]} \
{/test/top/reg_sum\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/top/ans\[12:0\]} \
{/test/top/Y\[9:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/test/top/tmp_out\[0\]\[7:0\]} \
{/test/top/tmp_out\[1\]\[7:0\]} \
{/test/top/tmp_out\[2\]\[7:0\]} \
{/test/top/tmp_out\[3\]\[7:0\]} \
{/test/top/tmp_out\[4\]\[7:0\]} \
{/test/top/tmp_out\[5\]\[7:0\]} \
{/test/top/tmp_out\[6\]\[7:0\]} \
{/test/top/tmp_out\[7\]\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/test/top/flag\[0:8\]} \
{/test/top/flag\[0\]} \
{/test/top/flag\[1\]} \
{/test/top/flag\[2\]} \
{/test/top/flag\[3\]} \
{/test/top/flag\[4\]} \
{/test/top/flag\[5\]} \
{/test/top/flag\[6\]} \
{/test/top/flag\[7\]} \
{/test/top/flag\[8\]} \
{/test/top/tmp_flag\[0:7\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 11 )} 
wvSetPosition -win $_nWave1 {("G4" 11)}
wvSetPosition -win $_nWave1 {("G4" 11)}
wvSetPosition -win $_nWave1 {("G4" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/clk} \
{/test/pattern_num\[31:0\]} \
{/test/top/X\[7:0\]} \
{/test/top/sum\[11:0\]} \
{/test/top/reg_sum\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/top/ans\[12:0\]} \
{/test/top/Y\[9:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/test/top/tmp_out\[0\]\[7:0\]} \
{/test/top/tmp_out\[1\]\[7:0\]} \
{/test/top/tmp_out\[2\]\[7:0\]} \
{/test/top/tmp_out\[3\]\[7:0\]} \
{/test/top/tmp_out\[4\]\[7:0\]} \
{/test/top/tmp_out\[5\]\[7:0\]} \
{/test/top/tmp_out\[6\]\[7:0\]} \
{/test/top/tmp_out\[7\]\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/test/top/flag\[0:8\]} \
{/test/top/flag\[0\]} \
{/test/top/flag\[1\]} \
{/test/top/flag\[2\]} \
{/test/top/flag\[3\]} \
{/test/top/flag\[4\]} \
{/test/top/flag\[5\]} \
{/test/top/flag\[6\]} \
{/test/top/flag\[7\]} \
{/test/top/flag\[8\]} \
{/test/top/tmp_flag\[0:7\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 11 )} 
wvSetPosition -win $_nWave1 {("G4" 11)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvExpandBus -win $_nWave1 {("G5" 1)}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvGetSignalSetScope -win $_nWave1 "/test/top/c1"
wvSetPosition -win $_nWave1 {("G5" 11)}
wvSetPosition -win $_nWave1 {("G5" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/clk} \
{/test/pattern_num\[31:0\]} \
{/test/top/X\[7:0\]} \
{/test/top/sum\[11:0\]} \
{/test/top/reg_sum\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/top/ans\[12:0\]} \
{/test/top/Y\[9:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/test/top/tmp_out\[0\]\[7:0\]} \
{/test/top/tmp_out\[1\]\[7:0\]} \
{/test/top/tmp_out\[2\]\[7:0\]} \
{/test/top/tmp_out\[3\]\[7:0\]} \
{/test/top/tmp_out\[4\]\[7:0\]} \
{/test/top/tmp_out\[5\]\[7:0\]} \
{/test/top/tmp_out\[6\]\[7:0\]} \
{/test/top/tmp_out\[7\]\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/test/top/flag\[0:8\]} \
{/test/top/flag\[0\]} \
{/test/top/flag\[1\]} \
{/test/top/flag\[2\]} \
{/test/top/flag\[3\]} \
{/test/top/flag\[4\]} \
{/test/top/flag\[5\]} \
{/test/top/flag\[6\]} \
{/test/top/flag\[7\]} \
{/test/top/flag\[8\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/test/top/tmp_flag\[0:7\]} \
{/test/top/tmp_flag\[0\]} \
{/test/top/tmp_flag\[1\]} \
{/test/top/tmp_flag\[2\]} \
{/test/top/tmp_flag\[3\]} \
{/test/top/tmp_flag\[4\]} \
{/test/top/tmp_flag\[5\]} \
{/test/top/tmp_flag\[6\]} \
{/test/top/tmp_flag\[7\]} \
{/test/top/c1/valid1} \
{/test/top/c1/valid2} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G5" 10 11 )} 
wvSetPosition -win $_nWave1 {("G5" 11)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 10)}
wvSetPosition -win $_nWave1 {("G5" 11)}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 2)}
wvSetPosition -win $_nWave1 {("G6" 2)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvGetSignalSetScope -win $_nWave1 "/test/top/c1"
wvSetPosition -win $_nWave1 {("G6" 3)}
wvSetPosition -win $_nWave1 {("G6" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/clk} \
{/test/pattern_num\[31:0\]} \
{/test/top/X\[7:0\]} \
{/test/top/sum\[11:0\]} \
{/test/top/reg_sum\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/top/ans\[12:0\]} \
{/test/top/Y\[9:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/test/top/tmp_out\[0\]\[7:0\]} \
{/test/top/tmp_out\[1\]\[7:0\]} \
{/test/top/tmp_out\[2\]\[7:0\]} \
{/test/top/tmp_out\[3\]\[7:0\]} \
{/test/top/tmp_out\[4\]\[7:0\]} \
{/test/top/tmp_out\[5\]\[7:0\]} \
{/test/top/tmp_out\[6\]\[7:0\]} \
{/test/top/tmp_out\[7\]\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/test/top/flag\[0:8\]} \
{/test/top/flag\[0\]} \
{/test/top/flag\[1\]} \
{/test/top/flag\[2\]} \
{/test/top/flag\[3\]} \
{/test/top/flag\[4\]} \
{/test/top/flag\[5\]} \
{/test/top/flag\[6\]} \
{/test/top/flag\[7\]} \
{/test/top/flag\[8\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/test/top/tmp_flag\[0:7\]} \
{/test/top/tmp_flag\[0\]} \
{/test/top/tmp_flag\[1\]} \
{/test/top/tmp_flag\[2\]} \
{/test/top/tmp_flag\[3\]} \
{/test/top/tmp_flag\[4\]} \
{/test/top/tmp_flag\[5\]} \
{/test/top/tmp_flag\[6\]} \
{/test/top/tmp_flag\[7\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/test/top/c1/valid1} \
{/test/top/c1/valid2} \
{/test/top/c1/valid} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G6" 3 )} 
wvSetPosition -win $_nWave1 {("G6" 3)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 41275.237110 -snap {("G5" 8)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
