FROM node:18

# set working directory
WORKDIR /app

# Copy files
COPY package*.json ./
RUN npm install
COPY . .

# Expose 3000
EXPOSE 3000

# Run app
CMD ['node', 'index.js']
