#!/bin/sh
set -e

echo "Starting Xray..."
echo "Listening on Railway port: ${PORT}"

sed "s/__PORT__/${PORT}/g" \
    /etc/xray/config.json > /tmp/config.json

exec xray run -config /tmp/config.json
