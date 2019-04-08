#!/usr/bin/env bash
docker network create --attachable proxy-tier
docker volume create --name html
docker volume create --name certs
docker volume create --name vhost.d

