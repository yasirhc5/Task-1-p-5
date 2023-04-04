# assignment-1-part-5

# Step-1 Create a Dockerfile for the web application container which should include the necessary dependencies to run the web application. The web application should display a simple "Hello, World!" message when accessed from a web browser.

# Command To Exec

nano dockerfile

add below content

FROM node:14-alpine
WORKDIR /app
COPY package.json /app/
RUN npm install
COPY app.js .
EXPOSE 3000
CMD [ "npm", "start" ]

# Step-2 Create a Dockerfile for the database container which should include the necessary dependencies to run the database. You can use any database of your choice (e.g. MySQL, PostgreSQL, MongoDB, etc.).

# Command To Exec
nano Dockerfile.db

add below content

FROM postgres:13-alpine
ENV POSTGRES_USER myuser
ENV POSTGRES_PASSWORD mypassword
ENV POSTGRES_DB mydatabase
COPY init.sql /docker-entrypoint-initdb.d/

# Step-3 Create a docker-compose.yml file that defines the two services - web and database. The web service should be linked to the database service using Docker Compose networking.

# Command To Exec
nano docker-compose.yml

and when i executed this got error and was asked to 

ommand 'docker-compose' not found, but can be installed with:
sudo snap install docker          # version 20.10.17, or
sudo apt  install docker-compose  # version 1.29.2-1
See 'snap info docker' for additional versions.

and then i did the above steps too.

# Step-4 Use the docker-compose up command to build and run the application. Verify that the web application is accessible from a web browser and that the database is running.

# Command To Exec
docker-compose up

# Output 
Starting abdul_db_1 ... done
Starting abdul_web_1 ... done
Attaching to abdul_db_1, abdul_web_1
db_1   | 
db_1   | > abdul@1.0.0 start /app
db_1   | > node app.js
db_1   | 
db_1   | Server running at http://0.0.0.0:3000/
web_1  | 
web_1  | > abdul@1.0.0 start /app
web_1  | > node app.js
web_1  | 
web_1  | Server running at http://0.0.0.0:3000/

On Browser i can see hello world too.




