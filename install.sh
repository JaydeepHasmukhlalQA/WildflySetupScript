#!/bin/bash

echo "Would you like to install JDK/JRE? [y/n]"
read installjava

if [ $installjava = "y" ]
then
        echo "Installing JDK/JRE \n"
        sudo apt install -y wget openjdk-8-jdk openjdk-8-jre
fi

wildflyDownloadLink="https://download.jboss.org/wildfly/17.0.0.Final/wildfly-17.0.0.Final.tar.gz"
wildflyTarName="wildfly-17.0.0.Final.tar.gz"
wildflyFolderName="wildfly-17.0.0.Final"

echo "Creating Wildfly User \n"
sudo useradd --create-home wildfly
sudo usermod --shell /bin/bash wildfly

echo "Downloading Wildfly \n"
sudo wget $wildflyDownloadLink
tar -xf $wildflyTarName

sudo mv ./$wildflyFolderName /home/wildfly
sudo rm $wildflyTarName

echo "Installing Wildfly Service Script \n"
sudo cp ./wildfly.service /etc/systemd/system/
sudo systemctl daemon-reload
echo "Finished Installing Wildfly \n"