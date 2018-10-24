# nvm config
#export NVM_DIR=~/.nvm
#source $(brew --prefix nvm)/nvm.sh

# Add homebrew binaries
export PATH="/usr/local/bin:$PATH"

# Rustup in toolchain
export PATH="$HOME/.cargo/bin:$PATH"
source $HOME/.cargo/env

# MongoDB enterprise
export PATH="$HOME:/Users/ryan/mongodb-osx-x86_64-enterprise-4.0.0/bin/:$PATH"

# Symlink to dotfiles repo
export PATH=$PATH:$HOME/dotfiles:$HOME/dotfiles/bin

# Add my custom commands
export PATH="$HOME/bin:$PATH"

# RAILS ENV VARS
export RACK_ENV='development'
export BULLET_STATUS='false'
export RMP_STATUS='true'
