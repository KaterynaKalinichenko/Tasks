#/bin/bash
#Installation docker-compose  
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o   /usr/local/bin/docker-compose    
sudo chmod +x /usr/local/bin/docker-compose 

# Check version  
docker-compose --version`  
sudo docker image pull docker/ucp:3.1.7`  




