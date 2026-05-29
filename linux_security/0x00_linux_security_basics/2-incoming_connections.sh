#!/usr/bin/env bash
sudo ufw --force enable
sudo ufw default deny incoming
sudo ufw allow 80/tcp
echo "Rules updated"
