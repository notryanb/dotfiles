#   -----------------------------
#             ALIASES
#   -----------------------------

alias subl="open -a 'Sublime Text'"
alias beu="bundle exec unicorn"
alias bep="bundle exec puma"
alias ber="bundle exec rspec --format documentation"
alias hcp="heroku run console -a mlr-production"
alias hcs="heroku run console -a mlr-staging"
alias qrw="QUEUE=* bundle exec rake environment resque:work"
alias mqrw="COUNT=10 VVERBOSE=1 QUEUE=* bundle exec rake environment resque:workers"
alias sbp="source ~/.bash_profile"
alias szp="source ~/.zshrc"
alias sze="source ~/.zshenv"
alias mlr="cd ~/Sites/mylocalreports"
alias be="bundle exec"

alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias ll='exa -l -ab'
alias less='less -FSRXc'                    # Preferred 'less' implementation
cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display
# alias which='type -all'                     # which:        Find executables

