FROM node:current-alpine3.21 
COPY . /app
WORKDIR /app
RUN npm cache clean --force && npm ci

