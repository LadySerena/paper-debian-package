#!/usr/bin/env bash

if [ "$#" -ne 1 ]; then
  echo "please specify the world name to backup"
  exit 1
fi
minecraftPath="/minecraft-data"
rconConfigPath="$minecraftPath/rcon-config.yaml"
worldName="$1"
time=$(date +%s)
humanDate=$(date -R)
echo "$time backing up world $worldName"
rcon-cli --config $rconConfigPath say server is being backed up
rcon-cli --config $rconConfigPath save-off
rcon-cli --config $rconConfigPath save-all
tar -czvf "$minecraftPath/world-$time.tar.gz" "$minecraftPath"
gsutil cp "$minecraftPath/world-$time.tar.gz" gs://tiede-minecraft-world-bucket/
rcon-cli --config $rconConfigPath save-on
rcon-cli --config $rconConfigPath "say server data backed up at $humanDate"
