#!/bin/bash

GREEN="\033[0;32m"

echo -e "${GREEN} Creating Wildfly User"
sudo useradd --create-home wildfly
sudo usermod --shell /bin/bash wildfly

echo -e "${GREEN} Downloading Wildfly"
sudo wget https://download.jboss.org/wildfly/17.0.0.Final/wildfly-17.0.0.Final.tar.gz

echo -e "${GREEN} Extracting Wildfly"
sudo tar -xvf wildfly-17.0.0.Final.tar.gz
sudo rm -f wildfly-17.0.0.Final.tar.gz

sudo mv ./wildfly-17.0.0.Final /home/wildflyFinal

echo -e "${GREEN} Installing Wildfly Service Script"
sudo cp ./wildfly.service /etc/systemd/system/
sudo systemctl daemon-reload
echo -e "${GREEN} Finished Installing Wildfly"