FROM gitpod/workspace-full

USER root

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
RUN sudo apt-get -q update && \
    sudo apt install software-properties-common apt-transport-https wget && \
#     sudo wget -q https://packages.microsoft.com/keys/microsoft.asc && \
#     sudo apt-key add microsoft.asc && \
#     sudo add-apt-repository “deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main” && \
#     sudo apt-get -q update && \
#     sudo apt install code && \
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg && \
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/ && \
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list' && \
sudo apt-get -q update && \
sudo apt-get install code && \
sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/
