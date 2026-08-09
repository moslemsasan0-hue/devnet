#!/bin/sh
set -e

echo "Starting Nginx..."
nginx -t
nginx

echo "Starting Xray..."
exec xray run -config /etc/xray/config.json
