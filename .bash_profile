#  ---------------------------------------------------------------------------
#  Ryan Blecher BASH Profile
#
#  Description:  This file holds all my BASH configurations and aliases
#  Much of this is sourced from : http://natelandau.com/my-mac-osx-bash_profile/
#
#  Sections:
#  1.   Color Variables
#	 2.   Aliases
#	 3.   Environment Variables
#  4.   NVM && RBENV
#  ---------------------------------------------------------------------------

#   -------------------------------
#   1.  Color Variables
#   -------------------------------

		txtblk='\e[0;30m' # Black - Regular
		txtred='\e[0;31m' # Red
		txtgrn='\e[0;32m' # Green
		txtylw='\e[0;33m' # Yellow
		txtblu='\e[0;34m' # Blue
		txtpur='\e[0;35m' # Purple
		txtcyn='\e[0;36m' # Cyan
		txtwht='\e[0;37m' # White

		bldblk='\e[1;30m' # Black - Bold
		bldred='\e[1;31m' # Red
		bldgrn='\e[1;32m' # Green
		bldylw='\e[1;33m' # Yellow
		bldblu='\e[1;34m' # Blue
		bldpur='\e[1;35m' # Purple
		bldcyn='\e[1;36m' # Cyan
		bldwht='\e[1;37m' # White

		unkblk='\e[4;30m' # Black - Underline
		undred='\e[4;31m' # Red
		undgrn='\e[4;32m' # Green
		undylw='\e[4;33m' # Yellow
		undblu='\e[4;34m' # Blue
		undpur='\e[4;35m' # Purple
		undcyn='\e[4;36m' # Cyan
		undwht='\e[4;37m' # White

		bakblk='\e[40m'   # Black - Background
		bakred='\e[41m'   # Red
		badgrn='\e[42m'   # Green
		bakylw='\e[43m'   # Yellow
		bakblu='\e[44m'   # Blue
		bakpur='\e[45m'   # Purple
		bakcyn='\e[46m'   # Cyan
		bakwht='\e[47m'   # White

		txtrst='\e[0m'    # Text Reset

#   Prompt that includes user, present dir, git branch
#   ------------------------------------------------------------

		print_before_prompt() {
			GIT=''
			BRANCH=`git branch 2> /dev/null | grep \* | awk '{print $2}'`
			if [[ "$BRANCH" != "" ]]; then
			GIT="[git:$BRANCH]"
			fi

			printf "\n\e[30;38;5;33m%s:\e[0m \e[40;38;5;82m%s $txtpur%s \n$txtrst" "$USER" "$PWD" "$GIT"
		}

		PROMPT_COMMAND=print_before_prompt
		PS1='-> '

#   -----------------------------
#   2.  ALIASES
#   -----------------------------

		alias subl="open -a 'Sublime Text'"
		alias beu="bundle exec unicorn"
		alias bep="bundle exec puma"
		alias hcp="heroku run console -a mlr-production"
		alias qrw="QUEUE=* bundle exec rake environment resque:work"
    alias mqrw="COUNT=10 VVERBOSE=1 QUEUE=* bundle exec rake environment resque:workers"
		alias sbp="source ~/.bash_profile"
		alias mlr="cd ~/Sites/mylocalreports"

		alias cp='cp -iv'                           # Preferred 'cp' implementation
		alias mv='mv -iv'                           # Preferred 'mv' implementation
		alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
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
		alias which='type -all'                     # which:        Find executables

#   -----------------------------
#   3.  ENVIRONMENT VARIABLES
#   -----------------------------

		export RACK_ENV='development'
		export BULLET_STATUS='false'
    export RMP_STATUS='true'

#   -----------------------------
#   4.  NVM && RBENV
#   -----------------------------
    export NVM_DIR=~/.nvm
    source $(brew --prefix nvm)/nvm.sh
		if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
    
    export PATH=$PATH:$HOME/dotfiles:$HOME/dotfiles/bin
    export PATH=/usr/local/bin:$PATH
