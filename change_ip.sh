#!/bin/bash
#
# Ask for input on network configuration
read -p "Enter the static IP of the server in CIDR notation: " staticip
cat > /etc/netplan/00-installer-config.yaml <<EOF
network:                                                                                     
  ethernets:                                                                                 
    ens18:                                                                                   
      addresses:                                                                             
      - 192.168.2.$staticip/24                                                                     
      gateway4: 192.168.2.101                                                                
      nameservers:                                                                           
        addresses:                                                                           
        - 1...                                                                       
        - 1...                                                                       
        - 8.8.8.8                                                                            
        search: []
  version: 2
EOF
sudo netplan apply
echo "==========================="
