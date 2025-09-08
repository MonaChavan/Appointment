# Use official Node.js LTS image
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy source code
COPY . .

# Install express (since no package.json is present)
RUN npm install express

# Expose the service port (defaults to 3001, but configurable via env var)
EXPOSE 3001

# Start the app
CMD ["node", "index.js"]
