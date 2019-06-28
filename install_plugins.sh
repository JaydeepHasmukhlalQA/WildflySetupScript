#!/bin/bash

echo "Would you like to install JDK/JRE? [y/n]"
read installjava

if [ $installjava = "y" ]
then
        echo "Installing JDK/JRE"
        sudo apt install -y wget openjdk-8-jdk-headless openjdk-8-jre-headless
fi