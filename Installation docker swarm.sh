#/bin/bash

if [ "$(id -u)" != "0" ]; then
   sudo bash "$0"
   exit $?
fi

 yum update -y 
#Can update the /etc/hosts file on each node  
echo "172.16.29.7 swarmmaster  
172.16.29.9  workernode1" > /etc/hosts  
   
# Need to configure hostname on each node as per /etc/hosts file   
hostnamectl set-hostname swarmmaster  
hostnamectl set-hostname swarmslave 
yum install wget -y  

# Install Docker Engine  
wget https://download.docker.com/linux/centos/docker-ce.repo -O /etc/yum.repos.d/docker.repo  

# Install Docker CE  
yum install docker-ce –y  

# Start Docker service and enable it  
systemctl start docker  
systemctl enable docker  
systemctl start firewalld 

# You will need to open ports 7946, 4789, 2376, 2377 and 80 on the firewall for a swarm cluster to work properly  
firewall-cmd --permanent --add-port=2376/tcp  
firewall-cmd --permanent --add-port=2377/tcp  
firewall-cmd --permanent --add-port=7946/tcp  
firewall-cmd --permanent --add-port=80/tcp  
firewall-cmd --permanent --add-port=7946/udp  
firewall-cmd --permanent --add-port=4789/udp
 
# Reload the firewall  
firewall-cmd --reload  

# Reload Docker service 
systemctl restart docker  
 
# This command will make your node as a manager node and advertising it’s IP  
docker swarm init --advertise-addr 192.168.0.102  

# Remember the token from the above output!  
docker node ls  

# Launch a webserver service  
docker service create -p 80:80 --name webservice --replicas 3 httpd  
