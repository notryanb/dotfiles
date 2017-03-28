export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

export PATH="$HOME/.rbenv/shims:$PATH"
export PATH=$PATH:$HOME/dotfiles:$HOME/dotfiles/bin
export PATH=/usr/local/bin:$PATH

# Add homebrew binaries
export PATH="/usr/local/bin:$PATH"

# # Add my custom commands
export PATH="$HOME/bin:$PATH"


# init RBENV after PATHS configured
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

