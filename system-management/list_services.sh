#!/bin/bash
# List all active services
echo "Active systemd services:"
systemctl list-units --type=service --state=active
