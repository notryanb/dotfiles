echo "loading zshenv"

# nvm config
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Rustup in toolchain
export PATH="$HOME/.cargo/bin:$PATH"
source $HOME/.cargo/env

# Symlink to dotfiles repo
export PATH=$PATH:$HOME/dotfiles:$HOME/dotfiles/bin
export PATH=/usr/local/bin:$PATH

# Add homebrew binaries
export PATH="/usr/local/bin:$PATH"

# Add my custom commands
export PATH="$HOME/bin:$PATH"

# RAILS ENV VARS
export RACK_ENV='development'
export BULLET_STATUS='false'
export RMP_STATUS='true'

