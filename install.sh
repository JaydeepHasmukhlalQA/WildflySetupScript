#!/bin/bash

CYAN="\033[0;36"
GREEN="\033[0;32m"
RED="\033[0;31m"
NOCOL="\033[0m"

WILDFLY_VERSION="17.0.0.Final"
WILDFLY_FILENAME="wildfly-$WILDFLY_VERSION"
WILDFLY_ARCHIVE="$WILDFLY_FILENAME.tar.gz"
WILDFLY_DOWNLOAD_LINK="http://download.jboss.org/wildfly/$WILDFLY_VERSION/$WILDFLY_ARCHIVE"

echo -e "${CYAN} Creating Wildfly User. \n"
sudo useradd --create-home wildfly
sudo usermod --shell /bin/bash wildfly

echo -e "${CYAN} Downloading Wildfly. ${GREEN} $WILDFLY_DOWNLOAD_LINK \n"
sudo wget -q $WILDFLY_DOWNLOAD_LINK
echo -e "${GREEN} Finished downloading Wildfly. \n"

echo -e "${CYAN} Extracting Wildfly. \n"
sudo tar -xvf $WILDFLY_ARCHIVE
sudo rm -f $WILDFLY_ARCHIVE
echo -e "${GREEN} Finished extracting Wildfly. \n"

sudo mv ./$WILDFLY_FILENAME /home/wildfly/wildflyFinal

echo -e "${CYAN} Installing Wildfly Service Script. \n"
sudo cp ./wildfly.service /etc/systemd/system/
sudo systemctl daemon-reload
echo -e "${GREEN} Finished Installing Wildfly. \n"