FROM node:18-alpine

ARG BACKEND_URL

WORKDIR /app

COPY package.json /app/package.json
COPY yarn.lock /app/yarn.lock

RUN npm pkg delete scripts.prepare && \
    yarn install --immutable --immutable-cache --check-cache && \
    yarn cache clean

COPY . .

RUN echo "VITE_BACKEND_URL=${BACKEND_URL}" > /app/.env

RUN yarn build
