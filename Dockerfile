FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

RUN npm install -g nodemon


# Copy the rest of the application code to the working directory
COPY . .

# Expose the port that the application will run on
EXPOSE 3001

# Start the application
CMD ["npm", "start"]