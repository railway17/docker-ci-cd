FROM nginx:alpine
COPY static /usr/share/nginx/html
LABEL maintainer = "railway17@outlook.com"