FROM node:18-alpine
WORKDIR /app
COPY package.json ./
COPY yarn.lock ./

RUN yarn install --frozen-lockfile

copy *.html ./
copy *.json ./
COPY *.ts ./
COPY ./src src
COPY ./public public

