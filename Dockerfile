# syntax=docker/dockerfile:1
FROM node:19-alpine as build
ENV DB="postgres://postgres:postgres@172.18.0.2:5432/woilerplate"
ENV JWT_SECRET="Rick Sanchez"
ENV ENV="DEV"
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install
COPY . .  
#Generate swagger content
RUN npm run swagger
RUN npx tsc
CMD node out/index.js

