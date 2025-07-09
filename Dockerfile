FROM node:18

# Create app directory
WORKDIR /app

# Install dependencies
COPY . .

RUN npm install

# Expose GTM Server port
EXPOSE 8080

# Start GTM Server
CMD ["npm", "start"]
