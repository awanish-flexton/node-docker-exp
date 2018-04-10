# Existing node image on docker-hub
FROM node:carbon

# Clone the repository into the docker container
# Public repo access
RUN git clone https://github.com/awanish-flexton/node-docker-exp.git

# Setting working directory to repository root
WORKDIR node-docker-exp

# Getting updated data
RUN git pull

# For switch to new branch
RUN git checkout master

# Install app dependencies
RUN npm install

# Server configurations
EXPOSE 8080
CMD [ "npm", "start" ]
