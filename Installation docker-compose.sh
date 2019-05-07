#/bin/bash
if [ "$(id -u)" != "0" ]; then
   sudo bash "$0"
   exit $?
fi
#Installation docker-compose  
curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o   /usr/local/bin/docker-compose    
chmod +x /usr/local/bin/docker-compose 

# Check version  
docker-compose --version  
docker image pull docker/ucp:3.1.7  




