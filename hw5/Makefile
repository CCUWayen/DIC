tb:=div_tb.v
dst:=div.v

rtl: 
	cd build; \
	cp ../img.dat ../img_Combine.dat ../img_X.dat ../img_Y.dat .; \
	ncverilog ../testfixture.v ../SOBEL.v \
	+nc64bit \
	+access+r \
	+notimingcheck
rtl2: 
	cd build; \
	cp ../Cipher_1.dat ../Cipher_2.dat ../Key_1.dat ../Key_2.dat ../Plain_1.dat ../Plain_2.dat; \
	ncverilog ../testfixture2.v ../RC4.v \
	+nc64bit \
	+access+r \
	+notimingcheck

nWave:
	cd build; \
	nWave &
