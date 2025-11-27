# Use official Node.js LTS image
FROM node:18-alpine

# Set working directory inside container
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package.json package-lock.json ./
RUN npm install --production

# Copy the app source code
COPY src ./src
COPY server.js ./

# Expose port 3000
EXPOSE 3000

# Start the app
CMD ["node", "server.js"]
