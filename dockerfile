FROM node:14-alpine
WORKDIR /app
COPY package.json /app/
RUN npm install
RUN apt-get update && apt-get install -y postgresql-client
COPY app.js .
RUN echo "<h1>Welcome to my web application</h1><p>This is a new message!</p>" >> index.html
EXPOSE 3000
CMD [ "npm", "start" ]
