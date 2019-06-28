#!/bin/bash

CYAN="\033[0;36"
GREEN="\033[0;32m"

echo -e "${CYAN} Starting Wildfly \n"
sudo systemctl start wildfly
echo -e "${GREEN} Starting Wildfly \n"