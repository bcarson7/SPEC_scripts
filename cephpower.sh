yum install java-1.7.0-openjdk glibc.i686 -y
mkdir specpower
cd specpower
wget http://172.19.106.68/software/benchmarking/specpower/ssj.zip
unzip ssj.tar
cd ssj
rm -f runssj.sh
wget  http://172.19.106.68/software/benchmarking/specpower/ceph.sh
chmod 775 ceph.sh
./ceph.sh
