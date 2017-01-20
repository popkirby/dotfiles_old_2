umask 022
limit coredumpsize 0
bindkey -d

if [[ -f ~/.path ]]; then
  source ~/.path
else
  export DOTPATH="${0:A:t}"
fi

if [[ -z $DOTPATH ]]; then
  echo "$fg[red]cannot start zsh, \$DOTPATH is not set$reset_color" 1>&2
  return 1
fi

export ENHANCD_FILTER="fzf:$ENHANCD_FILTER"

# Exit if called from vim
[[ -n $VIMRUNTIME ]] && return

# automatically attach tmux session
$DOTPATH/bin/tmuxx

if [[ -f ~/.zplug/init.zsh ]]; then
  export ZPLUG_LOADFILE="$HOME/.zsh/zplug.zsh"
  source ~/.zplug/init.zsh

  if ! zplug check --verbose; then
    printf "Install zsh plugins? [y/N]: "
    if read -q; then
      echo; zplug install
    else
      echo
    fi
  fi

  zplug load
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

setopt prompt_subst

if (which zprof > /dev/null); then
  zprof > ~/zsh.log
fi
