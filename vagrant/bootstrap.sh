#instalando e habilitando MySQL

sudo yum -y install wget
sudo wget https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm
sudo rpm -ivh mysql57-community-release-el7-9.noarch.rpm
sudo yum -y install mysql-server
