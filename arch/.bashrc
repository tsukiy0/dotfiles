export EDITOR=vim
export TERM=xterm-256color

# setup
${HOME}/scripts/setup

# nvm
source /usr/share/nvm/init-nvm.sh

# sdkman
export SDKMAN_DIR="${HOME}/.sdkman"
[[ -s "${HOME}/.sdkman/bin/sdkman-init.sh" ]] && source "${HOME}/.sdkman/bin/sdkman-init.sh"

