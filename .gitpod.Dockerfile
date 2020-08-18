FROM gitpod/workspace-full

USER gitpod

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
RUN sudo apt-get -q update && \
    sudo wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -- && \
    sudo add-apt-repository “deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main” && \
    sudo apt install code && \
    sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/
