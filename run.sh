#!/bin/bash

# Run a Tor Relay node

docker run -d \
--network=tor_network \
-v /etc/localtime:/etc/localtime:ro \
-v $PWD/tor_data:/var/lib/tor \
--restart always \
-p 9001:9001 \
wlkx/docker-tor-relay