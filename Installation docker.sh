#!/bin/bash
#Installation docker  

# We can check updates  
sudo yum check-update  
curl -fsSL https://get.docker.com/ | sh  

# Start docker  
sudo systemctl start docker  

# Check status  
sudo systemctl status docker  
sudo systemctl enable docker  

# Add user to docker group to use docker command without sudo 
sudo usermod -aG docker $(whoami)  
sudo usermod -aG docker vagrant    

   