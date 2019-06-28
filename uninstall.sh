#!/bin/bash

GREEN="\033[0;32m"
RED="\033[0;31m"

echo "${RED} Removing Wildfly \n"
sudo systemctl stop wildfly
sudo systemctl disable wildfly
sudo rm /etc/systemd/system/wildfly.service
sudo systemctl daemon-reload
sudo systemctl reset-failed
echo "${GREEN} Removed Wildfly \n"