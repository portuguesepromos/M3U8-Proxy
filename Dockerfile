# Base image with Node.js
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the TypeScript code
RUN npm run build

# Expose the desired port (update if needed)
EXPOSE 3000

# Set the command to run your application
CMD ["npm", "start"]
