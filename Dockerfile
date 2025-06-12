FROM node:current-alpine3.21 
RUN apk add --update --no-cache make g++ sqlite-dev python3 py3-pip && ln -sf python3 /usr/bin/python
COPY . /app
WORKDIR /app
RUN npm cache clean --force && npm ci