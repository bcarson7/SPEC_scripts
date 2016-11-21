yum install -y sysbench
yum install -y mariadb-server
systemctl start mariadb
mysqladmin -u root password tester
mysql -u root -ptester -e "CREATE DATABASE sysbench;"
mysql -u root -ptester -e "CREATE USER 'sysbench'@'localhost' IDENTIFIED BY 'tester';"
mysql -u root -ptester -e "GRANT ALL PRIVILEGES ON *.* TO 'sysbench'@'localhost' IDENTIFIED  BY 'tester';"
sysbench --test=oltp --db-driver=mysql --oltp-table-size=10000000 --mysql-db=sysbench --mysql-user=sysbench --mysql-password=tester prepare
