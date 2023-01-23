#!/bin/bash

services=(radarr sonarr jackett qbittorrent jellyfin)

for service in ${services[@]}
do
  if [[ "$1" == "stop" ]]
  then
    docker compose -f ./$service/docker-compose.yml down
  else
    docker compose -f ./$service/docker-compose up -d
  fi
done
