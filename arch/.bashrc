export EDITOR=vim
export TERM=xterm-256color

# two finger right click
dconf write /org/gnome/desktop/peripherals/touchpad/click-method "'fingers'"

# key delay/repeat
xset r rate 200 50

# nvm
source /usr/share/nvm/init-nvm.sh

# sdkman
export SDKMAN_DIR="${HOME}/.sdkman"
[[ -s "${HOME}/.sdkman/bin/sdkman-init.sh" ]] && source "${HOME}/.sdkman/bin/sdkman-init.sh"
