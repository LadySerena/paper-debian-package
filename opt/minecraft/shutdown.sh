#!/usr/bin/env bash
minecraftPath="/opt/minecraft"
rconConfigPath="$minecraftPath/rcon-config.yaml"
worldName="world"
time=$(date +%s)
humanDate=$(date -R)
echo "$humanDate shutting down minecraft server"
echo "$time backing up world $worldName"
rcon-cli --config $rconConfigPath say server is being shutdown
rcon-cli --config $rconConfigPath save-off
sleep 5
rcon-cli --config $rconConfigPath save-all
sleep 10
tar -czvf "$minecraftPath/world-$time.tar.gz" "$minecraftPath/$worldName"
gsutil cp "$minecraftPath/world-$time.tar.gz" gs://tiede-minecraft-world-bucket/
echo "uploaded world backup"
rcon-cli --config $rconConfigPath save-on
rcon-cli --config $rconConfigPath stop
sleep 10
