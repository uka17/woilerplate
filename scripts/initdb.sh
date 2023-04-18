#!/bin/bash
set -e
export PGPASSWORD=postgres

#Create initial docker containers (postgres), apply initial db structure to postgres
echo "Create network..."
docker network create -d bridge --subnet=172.18.0.0/16 woilerplate-network
echo "Launching postgres container..."
docker run --network=woilerplate-network --ip=172.18.0.2 --name postgres -e POSTGRES_PASSWORD=$PGPASSWORD -d postgres
echo "Creating empty database..."
sleep 3
psql -h 172.18.0.2 -p 5432 -U postgres -c 'create database woilerplate'