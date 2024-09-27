FROM node:16.7.0-alpine

WORKDIR /app
COPY package.json package-lock.json ./
RUN set -x && npm cache verify && npm ci
COPY . .
CMD [ "/app/docker-entrypoint.sh" ]
