#!/usr/bin/env bash
minecraftPath="/minecraft-data"
rconConfigPath="/opt/minecraft/rcon-config.yaml"
worldName="world"
time=$(date +%s)
humanDate=$(date -R)
echo "$humanDate shutting down minecraft server"
echo "$time backing up world $worldName"
rcon-cli --config $rconConfigPath say server is being shutdown for backups please reconnect in 10 minutes
sleep 10
rcon-cli --config $rconConfigPath stop
sleep 90
tar -czvf "/minecraft-backup/world-$time.tar.gz" "$minecraftPath/"
gsutil cp "/minecraft-backup/world-$time.tar.gz" gs://tiede-minecraft-world-bucket/
echo "uploaded world backup"