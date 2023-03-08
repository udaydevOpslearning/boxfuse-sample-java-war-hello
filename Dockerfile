# Use an existing Node.js image as the base image
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the application files into the container
COPY package*.json ./
COPY index.js ./

# Install the dependencies
RUN npm install

# Expose port 3000 for the web server
EXPOSE 3000

# Start the web server
CMD ["npm", "start"]
