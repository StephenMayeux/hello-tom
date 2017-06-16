# Define from what image we want to build from
FROM node:boron

# Create and use working directory to run application code in image
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install dependencies
COPY package.json /usr/src/app
RUN npm install

# Bundle app code in image
COPY . /usr/src/app

# Use our port
EXPOSE 3000

# Start the server
CMD ["npm", "start"]
