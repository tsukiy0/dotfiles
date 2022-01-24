# antigen

source $(brew --prefix)/share/antigen/antigen.zsh

antigen use oh-my-zsh
antigen theme robbyrussell
antigen bundle git
antigen bundle zsh-users/zsh-autosuggestions

antigen apply

# general

bindkey -v # vi bindings
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false # enable key repeat in some apps
