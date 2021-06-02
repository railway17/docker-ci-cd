FROM nginx:alpine
WORKDIR /app
COPY ["package.json", "./"] 
RUN npm install
COPY  .  .
CMD ["npm", "run", "build"] 
COPY build /usr/share/nginx/html
LABEL maintainer = "railway17@outlook.com"