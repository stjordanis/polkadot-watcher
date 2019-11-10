FROM node:10.15.3-alpine

WORKDIR /app

COPY ./package.json ./yarn.lock ./src ./

RUN apk add --no-cache make gcc g++ python3 && \
  yarn && \
  apk del make gcc g++ python3

ENTRYPOINT ["yarn", "start"]
