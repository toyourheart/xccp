#!/bin/sh

jq . /root/config.json.tp
envsubst < /root/config.json.tp > /root/config.json
v2ray -config /root/config.json
