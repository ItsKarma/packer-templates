# Lock root user account
sudo passwd -l root

# Disable ssh as root and cleanup
sudo sed -i -r 's/#PermitRootLogin yes/PermitRootLogin no/g' /etc/ssh/sshd_config
sudo sed -i -r '/PermitRootLogin forced-commands-only/d' /etc/ssh/sshd_config
