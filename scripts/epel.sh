# install official epel package
# @see https://fedoraproject.org/wiki/EPEL
sudo rpm --import https://fedoraproject.org/static/0608B895.txt
sudo rpm -Uvh https://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
sudo yum -y update
