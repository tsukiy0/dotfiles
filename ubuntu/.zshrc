# antigen
source ${HOME}/antigen.zsh

antigen use oh-my-zsh
antigen theme robbyrussell
antigen bundle git
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle vi-mode

antigen apply

# bashrc
source ${HOME}/.bashrc