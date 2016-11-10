yum install java-1.7.0-openjdk glibc.i686 -y
mkdir specpower
cd specpower
wget http://172.19.106.68/software/benchmarking/specpower/ssj.zip
unzip ssj.zip
cd ssj
wget  http://172.19.106.68/software/benchmarking/specpower/dedicated.sh
wget  http://172.19.106.68/software/benchmarking/specpower/runssj-2s-6c-6t-dell.sh
chmod 775 ceph.sh runssj-2s-6c-6t-dell.sh
./dedicated.sh
