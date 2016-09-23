#!/bin/bash
# Run this once to setup a separate docker network to host your tor docker container(s), don't use it for any other containers on the same host
docker network create --driver bridge tor_network