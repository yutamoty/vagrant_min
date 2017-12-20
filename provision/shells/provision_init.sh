##### yum update all
sudo yum -y update

##### yum install bash-completion vim-enhanced git
sudo yum install -y bash-completion vim-enhanced wget git

##### selinux disable
sudo setenforce 0
sudo sed -i 's/^SELINUX=enforcing/SELINUX=disabled/' /etc/selinux/config

##### set timezone
sudo timedatectl set-timezone Asia/Tokyo

##### postfix setting
sudo sed -i 's/^inet_protocols = all/inet_protocols = ipv4/' /etc/postfix/main.cf
sudo systemctl restart postfix
