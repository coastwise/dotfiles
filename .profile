export PATH=~/dev/android-sdk/platform-tools:$PATH

export PATH=/usr/local/bin:/usr/local/sbin:$PATH

  if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
  fi

PS1="\u@\h:\W\e[0;32m\$(__git_ps1)\e[m > "

