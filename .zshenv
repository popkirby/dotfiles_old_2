# zmodload zsh/zprof && zprof

if [[ -z $DOTPATH ]]; then
  _get_dotpath() {
    local d
    d="${0:A:h}"
    if [[ $d =~ dotfiles$ ]]; then
      echo "$d"
    else
      return 1
    fi
  }

  export DOTPATH="$(_get_dotpath)"
  unfunction _get_dotpath
fi

# fpath
typeset -gx -U fpath
fpath=(\
  ~/.zsh/completions(N-/) \
  ~/.zsh/functions(N-/) \
  ~/.zsh/plugins/zsh-completions(N-/) \
  /usr/local/share/zsh/site-functions(N-/) \
  $fpath \
  )

# path
typeset -gx -U path
path=(\
  /Library/TeX/texbin(N-/) \
  ~/.nodebrew/current/bin(N-/) \
  /usr/local/bin(N-/) \
  ${ANDROID_HOME}/tools(N-/) \
  ${ANDROID_HOME}/platform-tools(N-/) \
  $path \
  )

# autoload
autoload -Uz run-help
autoload -Uz add-zsh-hook
autoload -Uz colors && colors
autoload -Uz compinit && compinit -u
autoload -Uz is-at-least

# language
export LANGUAGE="en_US.UTF-8"
export LANG="${LANGUAGE}"
export LC_ALL="${LANGUAGE}"
export LC_CTYPE="${LANGUAGE}"

# editor
export EDITOR=vim
export GIT_EDITOR="${EDITOR}"

setopt no_global_rcs
export PATH=~/bin:$PATH

# ls colors
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

# history file
export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=1000000
export LISTMAX=50
# not use history in root
if [[ $UID == 0 ]]; then
  unset HISTFILE
  export SAVEHIST=0
fi

export ANDROID_HOME=$HOME/Library/Android/sdk

# tsubame
if [[ `hostname` == "t2a006170" ]]; then
  export http_proxy=http://proxy.noc.titech.ac.jp:3128
  export https_proxy=http://proxy.noc.titech.ac.jp:3128

  export LD_LIBRARY_PATH=/usr/apps.sp3/cuda/7.5/extras/CUPTI/lib64:$LD_LIBRARY_PATH
fi

# pyenv
if which pyenv-virtualenv-init > /dev/null; then
  eval "$(pyenv virtualenv-init -)"
fi

if which pyenv > /dev/null; then
  eval "$(pyenv init -)"
fi

export PATH=$HOME/.local/bin:$PATH

# rbenv
if which rbenv > /dev/null; then
  eval "$(rbenv init -)"
fi

[[ -f ~/.secret ]] && source ~/.secret
