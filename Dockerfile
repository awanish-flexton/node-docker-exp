FROM node:carbon

# Clone the repository into the docker container
RUN git clone https://github.com/awanish-flexton/node-docker-exp.git

# Setting working directory to repository root
WORKDIR node-docker-exp

# Install app dependencies
RUN npm install

EXPOSE 8080
CMD [ "npm", "start" ]
