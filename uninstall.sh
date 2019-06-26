#!/bin/bash

echo "Removing Wildfly \n"
sudo systemctl stop wildfly
sudo systemctl disable wildfly
sudo rm /etc/systemd/system/wildfly.service
sudo systemctl daemon-reload
sudo systemctl reset-failed
sudo userdel -r -f wildfly
echo "Removed Wildfly \n"