sudo yum -y update
sudo yum -y install wget curl openssh-server telnet mlocate man vim mutt traceroute

# Update locate db
sudo /usr/bin/updatedb

# Install root certificates
sudo yum -y install ca-certificates
