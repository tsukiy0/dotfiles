# antigen
source /usr/share/zsh/share/antigen.zsh

antigen use oh-my-zsh
antigen theme robbyrussell
antigen bundle git
antigen bundle zsh-users/zsh-autosuggestions

antigen apply

# bash
source ${HOME}/.bashrc

