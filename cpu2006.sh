yum install libstdc++-devel.i686 -y
yum install numactl -y
mkdir cpu2006
cd cpu2006
wget http://172.19.106.68/software/benchmarking/cpu/cpu2006.1.2.ic14.0.linux64.for.OEMs.16jan2014.tar
wget http://172.19.106.68/software/benchmarking/cpu/cpu2006-1.2.tar
wget http://172.19.106.68/software/benchmarking/cpu/uninstall.sh
wget http://172.19.106.68/software/benchmarking/cpu/version.txt
tar -xvf cpu2006-1.2.tar
chmod 775 install.sh
./install.sh -f
tar -xvf cpu2006.1.2.ic14.0.linux64.for.OEMs.16jan2014.tar
rm -f official-ws-avx2-smt-on-rate.sh
wget http://172.19.106.68/software/benchmarking/cpu/official-ws-avx2-smt-on-rate.sh
chmod 775 official-ws-avx2-smt-on-rate.sh
cd config
rm -f cpu2006.1.2.ic14.0.linux64.ws.avx2.rate.15aug2013.cfg
#wget http://172.19.106.68/software/benchmarking/cpu/HyveDed/cpu2006_config.zip
wget http://172.19.106.68/software/benchmarking/cpu/Huawei_XH321_4116_256GB/cpu2006_config.zip
unzip cpu2006_config.zip
cd ../..
cp *.py cpu2006/result
cd cpu2006
./official-ws-avx2-smt-on-rate.sh
