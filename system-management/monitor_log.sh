#!/bin/bash
# Tail logs from a specified file
LOGFILE=$1
if [ -z "$LOGFILE" ]; then
  echo "Usage: $0 /path/to/logfile"
  exit 1
fi
tail -f "$LOGFILE"
