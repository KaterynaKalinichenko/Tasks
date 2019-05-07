## Docker task 

<<<<<<< HEAD
**Installation docker**  
  
`sudo yum check-update`  

`curl -fsSL https://get.docker.com/ | sh`  

`sudo systemctl start docker`  

`sudo systemctl status docker`  

`sudo systemctl enable docker`  

`sudo usermod -aG docker $(whoami)`  

`sudo usermod -aG docker vagrant`    
=======
## Installation docker  
###### We can check updates  
`sudo yum check-update`  

`curl -fsSL https://get.docker.com/ | sh`  
###### start docker  
`sudo systemctl start docker`  
###### check status  
`sudo systemctl status docker`  

`sudo systemctl enable docker`  
###### add user to docker group to use docker command without sudo 
`sudo usermod -aG docker $(whoami)`  
>>>>>>> a33d0aa0b84b4a0e3caac1bd525a7c55612404a5
  
## Installation docker-compose  
`sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o   /usr/local/bin/docker-compose`  

`sudo chmod +x /usr/local/bin/docker-compose`  
<<<<<<< HEAD

=======
###### check version  
>>>>>>> a33d0aa0b84b4a0e3caac1bd525a7c55612404a5
`docker-compose --version`  

`sudo docker image pull docker/ucp:3.1.7`  
  
<<<<<<< HEAD
## ** Installation docker swarm **  
  
`sudo yum update -y`  
  
######You can update the /etc/hosts file on each node  
=======
## Installation docker swarm    
  
`sudo yum update -y`  
  
###### Can update the /etc/hosts file on each node  
>>>>>>> a33d0aa0b84b4a0e3caac1bd525a7c55612404a5
`echo "172.16.29.7 swarmmaster`  

`172.16.29.9  workernode1" > /etc/hosts`  
  
<<<<<<< HEAD
######You will need to configure hostname on each node as per /etc/hosts file   
=======
###### Need to configure hostname on each node as per /etc/hosts file   
>>>>>>> a33d0aa0b84b4a0e3caac1bd525a7c55612404a5
`hostnamectl set-hostname swarmmaster`  

`hostnamectl set-hostname swarmslave`  

`sudo yum install wget -y`  
  
<<<<<<< HEAD
###**Install Docker Engine**  
`wget https://download.docker.com/linux/centos/docker-ce.repo -O       /etc/yum.repos.d/docker.repo`  
  
######Install Docker CE  

`yum install docker-ce –y`  
  
######Start Docker service and enable it  
=======
### Install Docker Engine  
`wget https://download.docker.com/linux/centos/docker-ce.repo -O       /etc/yum.repos.d/docker.repo`  
  
###### Install Docker CE  

`yum install docker-ce –y`  
  
###### Start Docker service and enable it  
>>>>>>> a33d0aa0b84b4a0e3caac1bd525a7c55612404a5
`systemctl start docker`  

`systemctl enable docker`  

`systemctl start firewalld`  
  
<<<<<<< HEAD
######You will need to open ports 7946, 4789, 2376, 2377 and 80 on the firewall for a swarm cluster to work properly  
=======
###### You will need to open ports 7946, 4789, 2376, 2377 and 80 on the firewall for a swarm cluster to work properly  
>>>>>>> a33d0aa0b84b4a0e3caac1bd525a7c55612404a5
`firewall-cmd --permanent --add-port=2376/tcp`  
`firewall-cmd --permanent --add-port=2377/tcp`  
`firewall-cmd --permanent --add-port=7946/tcp`  
`firewall-cmd --permanent --add-port=80/tcp`  
`firewall-cmd --permanent --add-port=7946/udp`  
`firewall-cmd --permanent --add-port=4789/udp`  
<<<<<<< HEAD
######Reload the firewall  
`firewall-cmd --reload`  
######Reload Docker service  
`systemctl restart docker`  
######This command will make your node as a manager node and advertising it’s IP  
`docker swarm init --advertise-addr 192.168.0.102`  
######Remember the token from the above output!  
`docker node ls`  
######Launch a webserver service  
`docker service create -p 80:80 --name webservice --replicas 3 httpd`  
![alt-текст]()  
=======
###### Reload the firewall  
`firewall-cmd --reload`  
###### Reload Docker service  
`systemctl restart docker`  
###### This command will make your node as a manager node and advertising it’s IP  
`docker swarm init --advertise-addr 192.168.0.102`  
###### Remember the token from the above output!  
`docker node ls`  
###### Launch a webserver service  
`docker service create -p 80:80 --name webservice --replicas 3 httpd`  
![alt-текст]()  
>>>>>>> a33d0aa0b84b4a0e3caac1bd525a7c55612404a5
