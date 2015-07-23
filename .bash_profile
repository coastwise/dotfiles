# add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

export JAVA_HOME=$(/usr/libexec/java_home)

# Prompt
export PS1="\u@\h:\W\e[0;32m\$(__git_ps1)\e[m > "
export PS1="!\! $PS1" # prepend history line number

alias git=hub
eval "$(thefuck-alias)"
