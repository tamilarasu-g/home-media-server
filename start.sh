#!/bin/bash

services=(radarr sonarr jackett qbittorrent jellyfin)

for service in ${services[@]}
do
  docker compose -f ./$service/docker-compose.yml up -d
done
