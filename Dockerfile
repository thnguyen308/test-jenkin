FROM node

# Set working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY package.json /app

# Install any needed packages specified in package.json
RUN npm install

# Copy the current directory contents into the container at /app
COPY . /app

# Build the Next.js app
RUN npm run build

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Run app.js when the container launches
CMD ["npm", "run", "start"]