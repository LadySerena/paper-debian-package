#!/usr/bin/env bash
systemctl enable minecraft.service
mkdir -p /minecraft-data
chown minecraft:minecraft /minecraft-data
chmod 0751 /minecraft-data