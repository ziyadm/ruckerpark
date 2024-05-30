FROM node:21

WORKDIR /app/frontend

COPY package*.json ./

RUN npm install

COPY code/. ./

COPY public/. ./public

COPY babel.config.js tsconfig.json webpack.config.js ./