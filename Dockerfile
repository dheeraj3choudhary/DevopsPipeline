# Use Python 3 Alpine base image
FROM python:3-alpine3.15

# Set working directory inside the container
WORKDIR /app

# Copy the index.html file into the container
COPY index.html /app/index.html

EXPOSE 82

# Command to run a simple HTTP server serving index.html on port 8000
CMD ["python", "-m", "http.server", "82"]
