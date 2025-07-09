# Use official Node.js image
FROM node:18

# Create app directory
WORKDIR /app

# Copy only needed files
COPY package.json ./
COPY index.js ./

# Install dependencies
RUN npm install

# Expose port
EXPOSE 8080

# Start app
CMD ["npm", "start"]
