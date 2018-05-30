#! /bin/bash

startclient(){
	java -jar ~/sheepit-client.jar --no-systray -login zocker_160 -password 2nuZxTC1bxmkeFETiqK0RDpqKqYBcjb9EFAOH2CH
}

downloadclient(){
	wget https://www.sheepit-renderfarm.com/media/applet/client-latest.php -O ~/sheepit-client.jar
}


echo "###### Made by zocker_160 ;)########"
echo ""
echo "Starting script....................."
sleep 10
echo ""
echo "Downloading latest client..........."
echo ""

downloadclient

## This is quick and very dirty, here's a lot to impove and optimise ;)

echo ""
echo "Starting........................"

if startclient
then
	echo ""
else
	echo ""
	echo "there was an error..... :("
	echo ""
	
	until [[ "$TRY" == 'n' ]]; do
		read -p "Do you want to try it again? [Y/n]: " -e -i Y TRY
		if [[ "$TRY" == 'Y' ]]; then
			downloadclient			
			if startclient
			then
				echo ""
			else
				echo ""
				echo "meh....error again......."
			fi
		fi
	done
	echo "EXITING........................"
	exit 1
fi

$SHELL
