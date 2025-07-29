#!/bin/bash
# Restart a service if it's not active
SERVICE=$1
if systemctl is-active --quiet "$SERVICE"; then
  echo "$SERVICE is running."
else
  echo "$SERVICE is not active. Restarting..."
  sudo systemctl restart "$SERVICE"
fi
