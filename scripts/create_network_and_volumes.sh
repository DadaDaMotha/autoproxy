#!/usr/bin/env bash
sudo docker network create --attachable proxy-tier
sudo docker volume create --name html
sudo docker volume create --name certs
sudo docker volume create --name vhost.d

