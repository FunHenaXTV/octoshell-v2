#!/bin/sh
podman kill $(docker ps -q)
podman rm $(docker ps -a -q)
podman rmi $(docker images -q) --force
podman -compose down --volumes
