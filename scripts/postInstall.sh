#!/bin/bash
systemctl enable minecraft.service
systemctl enable minecraft-backup.timer
systemctl start minecraft-backup.timer
mkdir -p /minecraft
chown minecraft:minecraft /minecraft
chmod 0751 /minecraft