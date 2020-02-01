# antigen
source $(brew --prefix)/share/antigen/antigen.zsh

antigen use oh-my-zsh
antigen theme robbyrussell
antigen bundle git
antigen bundle vi-mode
antigen bundle zsh-users/zsh-autosuggestions

antigen apply

# bash
source ${HOME}/.bashrc
