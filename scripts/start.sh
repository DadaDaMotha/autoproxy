#!/usr/bin/env bash

EXTERNAL_NETWORK="proxy-tier"

if [[ -z $(docker network list | grep $EXTERNAL_NETWORK) ]]; then
		echo "External proxy not found, creating it..."
		docker network create --attachable $EXTERNAL_NETWORK
    fi

if [[ -z $(docker volume list | grep html) ]]; then
		echo "html volume not found, creating it..."
		docker volume create --name html
	fi

if [[ -z $(docker volume list | grep certs) ]]; then
		echo "certs volume not found, creating it..."
		docker volume create --name certs
	fi

if [[ -z $(docker volume list | grep vhost.d) ]]; then
		echo "certs volume not found, creating it..."
		docker volume create --name vhost.d
	fi

exec forego start -r


