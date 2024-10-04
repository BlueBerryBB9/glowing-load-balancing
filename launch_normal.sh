#!/bin/bash

docker compose down

# Select a file so compose.yaml haproxy have a haproxy.cfg in selected
rm ./haproxy/selected/*
cp ./haproxy/roundrobin/haproxy.cfg ./haproxy/selected/

docker compose up -d