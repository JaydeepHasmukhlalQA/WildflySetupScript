#!/bin/bash

echo "Creating Wildfly User"
sudo useradd --create-home wildfly
sudo usermod --shell /bin/bash wildfly

echo "Downloading Wildfly"
sudo wget https://download.jboss.org/wildfly/17.0.0.Final/wildfly-17.0.0.Final.tar.gz
sudo tar -xvf wildfly-17.0.0.Final.tar.gz
sudo rm -f wildfly-17.0.0.Final.tar.gz

sudo mv ./wildfly-17.0.0.Final /home/wildfly

echo "Installing Wildfly Service Script"
sudo cp ./wildfly.service /etc/systemd/system/
sudo systemctl daemon-reload
echo "Finished Installing Wildfly"