#!/usr/bin/env bash
mkdir -p /minecraft-data
chown minecraft:minecraft /minecraft-data
mkdir -p /minecraft-backup
chown minecraft:minecraft /minecraft-backup
chmod 0751 /minecraft-data
chmod 0751 /minecraft-backup
systemctl enable minecraft.service
systemctl enable minecraft-backup.timer
systemctl start minecraft-backup.timer