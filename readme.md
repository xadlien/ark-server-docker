# Ark Survival Dedicated Server in Docker
## Build
```
docker build -t ark:latest .
```
## Required Volumes
To launch a server with custom configs you will need to mount a folder.
* save data to /ark/ShooterGame/Saved  
An example of the folder is included in this repo. Every map you turn on will need to have the same folder mounted so that clustering is possible. (Traveling between maps you host)

Please see the `docker-compose.yml` file for an example.  

## Resource Requirements
The only part about this that stresses computers would be memory. Each map you start up will take anywhere from 6GB to 8GB to run. If you want to run multiple maps I recommend at least 32 GB of RAM on your system. I use an 8GB game server and can run a single map just fine. 

## Start up the container
```
docker-compose up -d
```

## Stop Server
```
docker-compose down
```
