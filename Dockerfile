FROM node:latest
LABEL description="A demo Dockerfile for build Docsify."
RUN npm install -g docsify-cli@latest

# Create a directory for the Docsify project
WORKDIR /docsify

# Copy the index.html file from the host into the Docker image
COPY index.html .

# Initialize Docsify (if needed)
# RUN docsify init .

# Expose port 3000
EXPOSE 3000/tcp

# Set the entry point to serve the Docsify project
ENTRYPOINT docsify serve .
