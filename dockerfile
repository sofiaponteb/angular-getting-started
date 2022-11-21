FROM node:16.10 AS build
WORKDIR /dist
RUN npm cache clean --force
COPY . .
RUN npm install
RUN npm run build --prod

EXPOSE 80