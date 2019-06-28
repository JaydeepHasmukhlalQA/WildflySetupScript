#!/bin/bash

RED="\033[0;31m"
GREEN="\033[0;32m"


echo -e "${RED} Stopping Wildfly \n"
sudo systemctl stop wildfly
echo -e "${GREEN} Stopping Wildfly \n"