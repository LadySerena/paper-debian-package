#!/usr/bin/env bash

sudo apt-get update -y
sudo apt install /repo/build/distributions/paper-mc_1.16.1-2_amd64.deb -y
sudo systemctl start minecraft
