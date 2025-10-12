# Use the official Jenkins image as a base
FROM jenkins/jenkins:lts-jdk11

# Switch to the root user to install software
USER root

# Update package lists and install dependencies (added lsb-release for stability)
RUN apt-get update && apt-get install -y curl gnupg lsb-release

# Add Docker's official GPG key
RUN install -m 0755 -d /etc/apt/keyrings
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg
RUN chmod a+r /etc/apt/keyrings/docker.gpg

# Set up the Docker repository (now on a single line to prevent errors)
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install the Docker CLI package
RUN apt-get update && apt-get install -y docker-ce-cli

# Switch back to the non-root 'jenkins' user
USER jenkins