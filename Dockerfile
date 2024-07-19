# Use an appropriate base image
FROM ubuntu:latest

# Install necessary packages
RUN apt-get update && \
 apt-get install -y cowsay fortune netcat-openbsd

# Copy your script into the container
COPY server.sh /server.sh
RUN chmod +x /server.sh

# Install necessary packages
RUN apt-get update && \
 apt-get install -y cowsay fortune netcat-openbsd

# Set the entry point
CMD ["/server.sh"]
