# Use official Node.js image
FROM node:18

# Create app directory
WORKDIR /app

# Install dependencies
RUN npm install

# Copy the rest of the source code
COPY . .

# Run the app
CMD ["node", "index.js"]
