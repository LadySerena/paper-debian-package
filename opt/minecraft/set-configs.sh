#!/usr/bin/env bash

#gcloud get secrets ....

rcon_password=$(gcloud secrets versions access "latest" --secret="rcon-password")

sed -e "s/{{rcon_password}}/$rcon_password/g" /opt/minecraft/rcon-config.yaml.template >/opt/minecraft/rcon-config.yaml
sed -e "s/{{rcon_password}}/$rcon_password/g" /opt/minecraft/server.properties.template >/opt/minecraft/server.properties
