sed -i -e "s#{{RPC_PASSWORD}}#\"$RPC_PASSWORD\"#" /home/transmission-daemon/settings.json
sed -i -e "s#{{RPC_USERNAME}}#\"$RPC_USERNAME\"#" /home/transmission-daemon/settings.json

transmission-daemon -f -g /home/transmission-daemon
