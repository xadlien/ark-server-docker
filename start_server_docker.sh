#!/bin/bash
echo "Welcome to docker Ark Server!"
# SessionName="ServerName"
# port="7777"
# queryport="27015"
# rconport="32330"
# ServerAdminPassword="YourAdminPassword"
# maxplayers="50"
"${mapname:=TheIsland}"
"${sessionname:=KnorrFamilyServer}"
"${maxplayers:=10}"
"${clusterid:=genericid}"
altsavedir=$mapname

if [ -z "$clusterid"]; then
    clusterargs=""
else 
    clusterargs=" -clusterid=$clusterid "
fi 


runargs="$mapname?listen?Multihome=0.0.0.0?SessionName=$sessionname?MaxPlayers=$maxplayers?QueryPort=27015?RCONPort=32330?Port=7777?ServerAdminPassword=adminpassword?AllowFlyerCarryPvE=true??AllowFlyingStaminaRecovery=true?ForceFlyerExplosives=true?PreventSpawnAnimations=true?AllowRaidDinoFeeding=true?AltSaveDirectoryName=$altsavedir -server -log -ForceAllowCaveFlyers -crossplay $clusterargs"

# launch
./ShooterGame/Binaries/Linux/ShooterGameServer $runargs