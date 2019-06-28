#!/bin/bash

CYAN="\033[0;36"
GREEN="\033[0;32m"

echo -e "${CYAN} Would you like to install JDK/JRE? [y/n]"
read installjava

if [ $installjava = "y" ]
then
        echo -e "${CYAN} Installing JDK/JRE \n"
        sudo apt install -y wget openjdk-8-jdk-headless openjdk-8-jre-headless
        echo -e "${GREEN} Installed JDK/JRE \n"
fi