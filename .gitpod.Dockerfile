FROM gitpod/workspace-full

# Install system dependencies
RUN sudo apt-get update && sudo apt-get install -y \
    build-essential \
    curl \
    git \
    wget \
    jq \
    && sudo rm -rf /var/lib/apt/lists/*

# Install Docker
RUN sudo apt-get update && \
    sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common && \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && \
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" && \
    sudo apt-get update && \
    sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Add user to docker group
RUN sudo usermod -aG docker gitpod

# Install mantrachaind (this would need to be updated with the correct installation command)
RUN mkdir -p ~/MANTRA && \
    cd ~/MANTRA && \
    git clone https://github.com/MANTRA-Finance/public.git && \
    cd public && \
    make install

# Clean up
RUN sudo apt-get clean && \
    sudo rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
