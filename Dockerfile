FROM node:lts-alpine3.22
COPY . .
RUN npm cache clean --force && npm install && npm run build
