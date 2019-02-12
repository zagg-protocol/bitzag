# change the heapsize according to your system
./configure CXXFLAGS="--param ggc-min-expand=1 --param ggc-min-heapsize=32768" \
	--disable-zmq  \
	--disable-wallet \
	--without-gui \
	--without-miniupnpc \
	--with-utils=no \
	--disable-util-cli \
	--disable-util-tx \
	--disable-libs \
	--disable-tests \
	--disable-bench

