# antigen

source $(brew --prefix)/share/antigen/antigen.zsh

antigen use oh-my-zsh
antigen theme robbyrussell
antigen bundle git
antigen bundle zsh-users/zsh-autosuggestions

antigen apply

# general

bindkey -v # vi bindings
bindkey '^R' history-incremental-search-backward # rebind reverse search
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false # enable key repeat in some apps

# nvm

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
