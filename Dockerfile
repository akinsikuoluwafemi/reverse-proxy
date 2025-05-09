# Use NodeJS base image
FROM nginx:alpine

# Create app directory in Docker
WORKDIR /usr/src/app

# Copy nginx configuration file into the Docker image
COPY nginx.conf /etc/nginx/nginx.conf

# Copy app from local environment into the Docker image
COPY . .

# Bind the port that the image will run on: Set the API’s port number
EXPOSE 8080

# Define the Docker image's behavior at runtime : Define Docker’s behavior when the image is run
CMD ["node", "server.js"]