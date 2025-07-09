# Use official Node.js image
FROM node:18

# Create app directory
WORKDIR /app

# Copy package and install dependencies
COPY package.json ./
COPY index.js ./
RUN npm install

# Expose port
EXPOSE 8080

# Start app
CMD ["node", "index.js"]
