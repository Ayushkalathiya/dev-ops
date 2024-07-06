# Use the official Node.js 14 image as the base image
FROM node:20-alpine

# Create a directory where our app will be placed
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container at /usr/src/app
COPY package*.json ./

# Install dependencies
RUN npm install

COPY . .

# Expose the port your app runs in
EXPOSE 3000

# Serve the app
CMD [ "npm", "start" ]