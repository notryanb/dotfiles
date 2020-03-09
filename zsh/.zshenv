DEFAULT_USER=`whoami`
# nvm config
#export NVM_DIR=~/.nvm
#source $(brew --prefix nvm)/nvm.sh

# Add homebrew binaries
export PATH="/usr/local/bin:$PATH"

# Rustup in toolchain
export PATH="$HOME/.cargo/bin:$PATH"
source $HOME/.cargo/env

# MongoDB enterprise
export PATH="$HOME:/Users/${DEFAULT_USER}/mongodb-osx-x86_64-enterprise-4.0.0/bin/:$PATH"

# Tag My Tracks... uh... I should probably interpolate the User path...
export PATH="$HOME:/Users/${DEFAULT_USER}/Rust/tag-my-tracks/target/release/:$PATH"

# Symlink to dotfiles repo
export PATH=$PATH:$HOME/dotfiles:$HOME/dotfiles/bin

# Add my custom commands
export PATH="$HOME/bin:$PATH"

# For SDL2
export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/lib"

# RAILS ENV VARS
export RACK_ENV='development'
export BULLET_STATUS='false'
export RMP_STATUS='true'
