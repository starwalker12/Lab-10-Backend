# Use official Node.js image
FROM node:18

# Create app directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy rest of the backend code
COPY . .

# Expose the port (use the port your backend server uses, usually 3000)
EXPOSE 3000

# Start the server
CMD ["npm", "start"]

