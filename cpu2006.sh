yum install libstdc++-devel.i686 -y 
mkdir cpu2006
cd cpu2006
wget http://172.19.106.68/software/spec/cpu2006_install/cpu2006.1.2.ic14.0.linux64.for.OEMs.16jan2014.tar
wget http://172.19.106.68/software/spec/cpu2006_install/cpu2006-1.2.tar
tar -xvf cpu2006-1.2.tar
chmod 775 install.sh
./install.sh -f
tar -xvf cpu2006.1.2.ic14.0.linux64.for.OEMs.16jan2014.tar
rm -f official-ws-avx2-smt-on-rate.sh
wget http://172.19.106.68/software/spec/cpu2006_install/official-ws-avx2-smt-on-rate.sh
chmod 775 official-ws-avx2-smt-on-rate.sh
cd config
rm -f cpu2006.1.2.ic14.0.linux64.ws.avx2.rate.15aug2013.cfg
wget http://172.19.106.68/software/spec/cpu2006_install/cpu2006_config.zip
unzip cpu2006_config.zip
cd ..
./official-ws-avx2-smt-on-rate.sh
