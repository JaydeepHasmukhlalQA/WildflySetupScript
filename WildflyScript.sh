#!/bin/bash

userinput="0"

while [ "$userinput" != "9" ]
do
        echo "What would you like to do?"
        echo "1) Install Wildfly"
	echo "2) Update Wildfly"
	echo "3) Remove Wildfly"
        echo "4) Start Wildfly"
        echo "5) Stop Wildfly"
        echo "6) Restart Wildfly"
        echo "7) Enable Wildfly on Startup"
        echo "8) Disable Wildfly on Startup"
        echo "9) Exit"

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
                echo "Restarting Wildfly..."
                sudo systemctl restart wildfly
                echo "Done"
                ;;

                7)
                echo "Enable Wildfly Startup"
                sudo systemctl enable  wildfly
                ;;

                8)
                echo "Disable Wildfly Startup"
                sudo systemctl disable wildfly
                ;;

                9)
		echo "Cya"
		exit
		;;
        esac
done


