yum -y install gcc
yum -y install gcc-c++
yum -y install libstdc++-devel-4.8.5-36.el7.x86_64
yum -y install gcc-gfortran
wget http://172.19.106.68/software/benchmarking/cpu/cpu2017.compiled.tar.gz
tar -xvf cpu2017.compiled.tar.gz
cd cpu2017
./hope-avx512-smt-on-rate.sh
