#!/bin/bash
# Check disk usage and warn if over 80%
THRESHOLD=80
USAGE=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')
if [ "$USAGE" -gt "$THRESHOLD" ]; then
  echo "WARNING: Disk usage is above ${THRESHOLD}%!"
else
  echo "Disk usage is normal (${USAGE}%)."
fi
