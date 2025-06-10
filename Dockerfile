FROM node:current-alpine3.21 
COPY . /app
WORKDIR /app
RUN rm -rf node_modules package-lock.json && npm cache clean --force && npm ci

