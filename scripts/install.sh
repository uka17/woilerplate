#!/bin/bash
 
echo "Enter parameters for woilerplate configuration"
read -p "Database string (default: 'postgres://postgres:postgres@172.18.0.2:5432/woilerplate'):" database
if [ -z "$database" ]
then
  database="postgres://postgres:postgres@172.18.0.2:5432/woilerplate"
fi
read -p "JWT secret (default: secretjwt):" jwtsecret
if [ -z "$jwtsecret" ]
then
  jwtsecret="secretjwt"
fi

FILE=".env"
if [ -f "$FILE" ]; then
  echo "$FILE already exist. Skiping."
else 
  echo "Creating '.env' file..."
  echo "DB=\"${database}\"" >> $FILE
  echo "JWT_SECRET=\"${jwtsecret}\"" >> $FILE
  echo "ENV=\"DEV\"" >> $FILE
  echo "Done"
fi

FILE="Dockerfile"
if [ -f "$FILE" ]; then
  echo "$FILE already exist. Skiping."
else 
  echo "Creating 'Dockerfile' file..."
  echo "# syntax=docker/dockerfile:1" >> $FILE
  echo "FROM node:19-alpine as build" >> $FILE
  echo "ENV DB=\"${database}\"" >> $FILE
  echo "ENV JWT_SECRET=\"${jwtsecret}\"" >> $FILE
  echo "ENV ENV=\"DEV\"" >> $FILE
  echo "WORKDIR /app" >> $FILE
  echo "COPY [\"package.json\", \"package-lock.json*\", \"./\"]" >> $FILE
  echo "RUN npm install" >> $FILE
  echo "COPY . .  " >> $FILE
  echo "#Generate swagger content" >> $FILE
  echo "RUN npm run swagger" >> $FILE
  echo "#Update text" >> $FILE
  echo "RUN npm run text" >> $FILE
  echo "RUN npx tsc" >> $FILE
  echo "CMD node out/index.js" >> $FILE
  echo "Done"
fi