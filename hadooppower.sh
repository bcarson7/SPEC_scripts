yum install java-1.7.0-openjdk glibc.i686 -y
mkdir specpower
cd specpower
wget http://172.19.106.68/software/benchmarking/specpower/ssj.zip
unzip ssj.zip
cd ssj
wget  http://172.19.106.68/software/benchmarking/specpower/hadoop.sh
chmod 775 hadoop.sh
./hadoop.sh
