FROM gitpod/workspace-full

USER gitpod

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
RUN sudo apt-get -q update && \
sudo apt install snapd -y && \
sudo snap install --classic code -y && \    
sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/
