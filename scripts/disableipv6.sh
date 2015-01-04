# Disable ipv6 from the running system
sudo sysctl -w net.ipv6.conf.default.disable_ipv6=1
sudo sysctl -w net.ipv6.conf.all.disable_ipv6=1

# Disable ipv6 from starting on reboot
sudo sed -i '$anet.ipv6.conf.all.disable_ipv6 = 1' /etc/sysctl.conf
sudo sed -i '$anet.ipv6.conf.default.disable_ipv6 = 1' /etc/sysctl.conf

# To avoid issues with X forwarding
sudo sed -i 's/#AddressFamily any/AddressFamily inet/g' /etc/ssh/sshd_config
sudo sed -i '/#listenAddress 0.0.0.0/s/^#//' /etc/ssh/sshd_config

# To avoid issues with postfix:
sudo sed -i '/localhost6/s/^/#/' /etc/hosts
sudo sed -i '/inet_interfaces = localhost/s/^/#/' /etc/postfix/main.cf
sudo sed -i '/inet_interfaces = localhost/a inet_interfaces = 127.0.0.1' /etc/postfix/main.cf
