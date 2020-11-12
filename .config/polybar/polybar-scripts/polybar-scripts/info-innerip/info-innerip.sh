#!/bin/sh

# enp7s0
# wlp6s0u1u2
ipaddr=$(ip addr show  wlp4s0 | grep 'inet ' | awk '{print $2}' | cut -f1 -d'/')
echo "IP:$ipaddr"
