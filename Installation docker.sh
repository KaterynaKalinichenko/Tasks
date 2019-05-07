#!/bin/bash
#Installation docker  
if [ "$(id -u)" != "0" ]; then
   sudo bash "$0"
   exit $?
fi

# We can check updates  
yum check-update  
curl -fsSL https://get.docker.com/ | sh  

# Start docker  
 systemctl start docker  

# Check status  
 systemctl status docker  
 systemctl enable docker  

# Add user to docker group to use docker command without sudo 
 usermod -aG docker $(whoami)  
 usermod -aG docker vagrant    

   