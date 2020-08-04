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
    curl

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

