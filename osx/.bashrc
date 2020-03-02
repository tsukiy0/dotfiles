# general
export EDITOR=vim
export TERM=xterm-256color

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && . "$(brew --prefix)/opt/nvm/nvm.sh"
[ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && . "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm"

# yvm
node "/usr/local/opt/yvm/yvm.js" configure-shell --yvmDir "/usr/local/opt/yvm"
export YVM_DIR=/usr/local/opt/yvm
[ -r $YVM_DIR/yvm.sh ] && . $YVM_DIR/yvm.sh
