#! /bin/bash

set -euxo pipefail

sudo apt update
sudo apt install -y \
    git \
    stow \
    vim \
    tmux \
    bash \
    zsh \
    zip \
    jq \
    curl \
    docker.io \
    chromium-browser

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# zsh
sudo chsh -s $(which zsh)
curl -L git.io/antigen > ${HOME}/antigen.zsh

# docker
sudo usermod -aG docker $USER