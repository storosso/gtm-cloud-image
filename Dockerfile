# Use official Node.js image
FROM node:18

# Create app directory
WORKDIR /app

# Copy package and install dependencies
COPY package*.json ./
RUN npm install

# Copy app source
COPY . .

# Expose port
EXPOSE 8080

# Start app
CMD ["npm", "start"]




