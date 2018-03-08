# Define from what image we want to build form 
FROM node:carbon
# Createa a direcotry to hold the application code inside the image ,
# this will be the working directory for you appplication

WORKDIR /usr/src/app


#Install app dependencies
COPY package*.json ./


RUN npm install
# if you are building your code for production 
# RUN npm install --only=production

# Bundle app source
COPY . .

# app binds to pport 8080 so you'll use the EXPOSE instruction to have it mapped by the docker daemon:

EXPOSE 8080

# Define the command to run app using CMD which defines your runtime.

CMD ["npm", "start"]
