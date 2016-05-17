yum install java-1.7.0-openjdk glibc.i686 -y
mkdir specpower
cd specpower
wget http://172.19.106.68/software/benchmarking/specpower/ssj.tar
tar -xvf ssj.tar
cd ssj
rm -f runssj.sh
wget  http://172.19.106.68/software/benchmarking/specpower/ceph.ssj
chmod 775 runssj.sh

