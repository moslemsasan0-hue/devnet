#!/bin/sh
set -e

echo "Starting Xray..."
echo "Xray will listen on 0.0.0.0:8443"

exec xray run -config /etc/xray/config.json
