tb:=div_tb.v
dst:=div.v

rtl: 
	cd build; \
	cp ../in.dat ../out.dat ../out_golden.dat; \
	ncverilog ../testfixture.v ../CS.v \
	+nc64bit \
	+access+r \
	+notimingcheck

nWave:
	cd build; \
	nWave &
