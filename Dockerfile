FROM node:14-alpine as build
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build

FROM nginx:stable-alpine
COPY  --from=build /app/build /usr/share/nginx/html
EXPOSE 80
LABEL maintainer = "railway17@outlook.com"