#!/bin/bash

docker compose down

rm ./haproxy/selected/*
cp ./haproxy/source/haproxy.cfg ./haproxy/selected

echo "Building dockers..."
echo ""
docker compose up -d
echo ""
echo "Building done !"

echo "Starting test: Source : Client always go on the same server"
echo "http:/localhost:80 - 6 times"

for i in {1..6}
do
    echo "Number: $i"
    curl http://localhost:80
done

rm ./haproxy/selected/*
docker compose down

echo "Done !"