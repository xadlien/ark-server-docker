#!/bin/bash
echo "Welcome to docker Ark Server!"
SessionName="ServerName"
port="7777"
queryport="27015"
rconport="32330"
ServerAdminPassword="YourAdminPassword"
maxplayers="50"

# launch
./ShooterGame/Binaries/Linux/ShooterGameServer 'TheIsland?listen?Multihome=0.0.0.0?SessionName=ServerName?MaxPlayers=70?QueryPort=27015?RCONPort=32330?Port=7777?ServerAdminPassword=password' -server -log