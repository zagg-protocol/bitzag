#NOTE setup ggc-min-heapsize w.r.t your system configuration, this cannot be more that the amount of free memory of your machine. refer to http://man7.org/linux/man-pages/man1/gcc.1.html


./autogen.sh


--disable-zmq  
--without-miniupnpc
./configure --disable-wallet
./configure --without-gui
./configure CXXFLAGS="--param ggc-min-expand=1 --param ggc-min-heapsize= 65536"

./configure --enable-hardening
./configure --disable-hardening


./configure --disable-zmq --disable-wallet --without-gui --without-miniupnpc CXXFLAGS="--param ggc-min-expand=1 --param ggc-min-heapsize= 65536" # this will not working

./configure CXXFLAGS="--param ggc-min-expand=1 --param ggc-min-heapsize=65536" --disable-zmq --disable-wallet --without-gui --without-miniupnpc  # this is working


./configure --disable-wallet --without-gui --without-miniupnpc # this is working 

    
make -j 8 // 8 is the number of cores you have in your pc 


## Errors while building

Note*: I got these errors on running `./configure` command with Ubuntu 16.04. 

### Error: No working boost sleep implementation found.
 
Fix : `sudo apt-get install libboost-all-dev`


### Error: libevent not found

Fix : `sudo apt install libevent-dev`

Now run the `./configure` and `./make` commands

