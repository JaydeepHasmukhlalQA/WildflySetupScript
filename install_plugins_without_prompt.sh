#!/bin/bash

CYAN="\033[0;36"
GREEN="\033[0;32m"

echo -e "${CYAN} Installing JDK/JRE \n"
sudo apt install -y wget openjdk-8-jdk-headless openjdk-8-jre-headless
echo -e "${GREEN} Installed JDK/JR \n"