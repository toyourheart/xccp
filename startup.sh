#!/bin/sh

set -e

# Download and install V2Ray
curl -L -H "Cache-Control: no-cache" -o /v2ray.zip https://github.com/v2ray/v2ray-core/releases/latest/download/v2ray-linux-64.zip

mkdir /usr/bin/v2ray

unzip /v2ray.zip -d /usr/bin/v2ray

# Remove /v2ray.zip and other useless files
rm -rf /v2ray.zip /usr/bin/v2ray/*.sig /usr/bin/v2ray/doc /usr/bin/v2ray/*.json /usr/bin/v2ray/*.dat /usr/bin/v2ray/sys*

# V2Ray new configuration
envsubst < /root/config.json.tp > /root/config.json
/usr/bin/v2ray/v2ray -config /root/config.json
