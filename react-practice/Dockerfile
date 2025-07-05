# Setup practice React app with Docker
FROM node:lts-alpine

# Set up initial files
WORKDIR /app
COPY app/package*.json ./

# Install npm
RUN npm install

# Copy source code
# This will allow caching the npm install step
COPY app .

# Expose the port and launch the app
EXPOSE 3000
CMD ["npm", "start"]
