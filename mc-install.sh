#!/usr/bin/env bash

sudo apt-get update -y
sudo apt install /repo/build/distributions/paper-mc_1.15.2-1_amd64.deb -y
sudo systemctl start minecraft