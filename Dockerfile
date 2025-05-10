# Use NodeJS base image
FROM node:22-slim

# Set the working directory inside the container
WORKDIR /usr/src/app

# Install the app dependencies
COPY package*.json ./
RUN npm install

# Copy the app's source code to the container
COPY . .

# Expose the port that your app will run on (Node.js server port)
EXPOSE 8080

# Start your app using Node.js
CMD ["node", "server.js"]