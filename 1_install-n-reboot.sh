#!/bin/bash

# Update packages
sudo yum -y update
# Install email tools
# sudo yum -y install mailx
# sudo yum -y install sendmail
# Install docker
sudo yum -y install docker
sudo systemctl enable docker
sudo service docker start
sudo usermod -a -G docker ec2-user
sudo reboot
