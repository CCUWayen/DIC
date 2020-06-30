tb:=div_tb.v
dst:=div.v

rtl: 
	cd build; \
	ncverilog ../div_tb.v ../div.v \
	+nc64bit \
	+access+r ;

nWave:
	cd build; \
	nWave &
