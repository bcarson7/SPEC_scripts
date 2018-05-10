yum install -y docker
systemctl enable docker.service
systemctl start docker
docker pull veyesecurity/phoronix
