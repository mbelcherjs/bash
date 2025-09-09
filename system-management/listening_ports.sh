#!/bin/bash
# Check if a service is listening on a port
host="myapp.internal"
port=443
if nc -zv $host $port 2>/dev/null; then
  echo "✅ $host:$port is reachable"
else
  echo "❌ $host:$port is not reachable"
fi
