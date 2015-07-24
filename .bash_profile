# add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

export JAVA_HOME=$(/usr/libexec/java_home)

# Prompt
 HISTLINE="!\!"
     USER="\u@\h"
  WORKDIR="\w"
GITBRANCH="\e[0;32m$(__git_ps1)\e[m" # includes leading space
export PS1="$HISTLINE $USER:$WORKDIR$GITBRANCH > "

alias git=hub
eval "$(thefuck-alias)"
