# Use the latest node image
FROM node:alpine

# Set the working directory (where the app will be stored)
WORKDIR /app

# Install dependencies
# Copy the package.json and package-lock.json separately to leverage Docker cache
COPY package.json package-lock.json ./
RUN npm install

# Copy the rest of the files to the working directory
COPY . .

# TIP: `COPY . .` means "copy all files from the current directory on the host (first dot) to /app inside the container (second dot)"

# Build the app
RUN npm run build

# Run the app
CMD ["npm", "start"]

# TIP: `CMD ["npm", "start"]` means "run the command `npm start` when the container starts". We use `npm run build` and `npm start` instead of `npm run dev` because we want to run the app in production mode, not development mode

# * BUILD the Docker image with: `docker build -t APP-NAME .`
# TIP: The `-t` flag is used to tag the image with a name (in this case, `my-app`), the dot means "current directory"

# * RUN the Docker container with: `docker run -p 3000:3000 APP-NAME`

# NOTE: @see docker-compose.yml for testing and running the app with Docker Compose as a development environment instead of production

# STOP the Docker container with: `docker stop CONTAINER-ID` or simply go to the docker desktop app and stop the container
# Note: You can get the `CONTAINER-ID` by running `docker ps`
