FROM node:18

# Set working directory
WORKDIR /app

# Install global packages
RUN npm install -g create-react-app

# Install development tools
RUN apt-get update && \
    apt-get install -y \
    git \
    curl \
    vim \
    && rm -rf /var/lib/apt/lists/*

# Set default command to bash
CMD ["/bin/bash"]

# Expose port 3000 for development server
EXPOSE 3000