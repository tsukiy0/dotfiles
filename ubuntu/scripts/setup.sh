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
    chromium-browser \
    gnome-tweak-tool \
    caffeine \
    vlc \
    build-essential \
    awscli

function install_dotnet() {
    if ! command -v dotnet &> /dev/null
    then
        PKG_MS_PROD_PATH=/tmp/packages-microsoft-prod.deb

        wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O ${PKG_MS_PROD_PATH}
        sudo dpkg -i ${PKG_MS_PROD_PATH}
        rm -rf ${PKG_MS_PROD_PATH}

        sudo apt update
        sudo apt install -y \
            dotnet-sdk-3.1 \
            dotnet-sdk-5.0
    fi
}

function install_docker() {
    if ! command -v docker &> /dev/null
    then
        sudo apt update
        sudo apt install -y \
            docker.io \
            docker-compose

        sudo usermod -aG docker $USER
    fi
}

install_dotnet
install_docker

sudo snap install --classic code
sudo snap install discord
sudo snap install spotify

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# jabba
curl -sL https://github.com/shyiko/jabba/raw/master/install.sh | bash -s -- --skip-rc && . ~/.jabba/jabba.sh

# zsh
sudo chsh -s $(which zsh)
