#!/bin/bash

# update server's data
/home/steam/steamcmd/steamcmd.sh \
    +login anonymous \
    +force_install_dir /home/steam/server_data \
    +app_update 996560 \
    +app_update 996560 validate \
    +exit

# copy config files
mv /home/steam/config_gameplay.txt "/home/steam/.config/SCP Secret Laboratory/config/7777"
mv /home/steam/config_remoteadmin.txt "/home/steam/.config/SCP Secret Laboratory/config/7777"


# start the server
cd /home/steam/server_data
./LocalAdmin 7777

exit 0