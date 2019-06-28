#!/bin/bash

CYAN="\033[0;36"
GREEN="\033[0;32m"
RED="\033[0;31m"
NOCOL="\033[0m"

userinput="0"

while [ "$userinput" != "9" ]
do
        echo -e "${GREEN} What would you like to do?"
        echo -e "${CYAN} 1) Install Wildfly"
	echo -e "${CYAN} 2) Update Wildfly"
	echo -e "${CYAN} 3) Remove Wildfly"
        echo -e "${CYAN} 4) Start Wildfly"
        echo -e "${CYAN} 5) Stop Wildfly"
        echo -e "${CYAN} 6) Restart Wildfly"
        echo -e "${CYAN} 7) Enable Wildfly on Startup"
        echo -e "${CYAN} 8) Disable Wildfly on Startup"
        echo -e "${RED} 9) Exit \n"

        read userinput

        case $userinput in
                1)
                ./install_plugin.sh
                ./install.sh ;;

		2)
                ./update.sh ;;

		3)
                ./uninstall.sh ;;

                4)
                ./start.sh ;;

                5)
                ./stop.sh ;;

                6)
                echo -e "${CYAN} Restarting Wildfly..."
                sudo systemctl restart wildfly
                echo "${GREEN} Restarted Wildfly." ;;

                7)
                echo -e "${CYAN} Enabling Wildfly Startup"
                sudo systemctl enable  wildfly
                echo -e "${GREEN} Enabled Wildfly Startup" ;;

                8)
                echo -e "${RED} Disabling Wildfly Startup"
                sudo systemctl disable wildfly
                echo -e "${GREEN} Disabled Wildfly Startup" ;;

                9)
		echo -e "${GREEN} Cya"
		exit ;;
        esac
done


