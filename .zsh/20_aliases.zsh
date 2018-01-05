source $DOTPATH/etc/lib/util.sh

if is_osx; then
  alias ql='qlmanage -p "$@" >&/dev/null'
fi

if is_tsubame; then
  alias access2ext='ssh t2a006170 -t "cd $PWD; bash -l"'
  alias a2e='access2ext'
  alias activate_py2='source /usr/apps.sp3/nosupport/gsic/env/python-2.7.7.sh'
fi

# ls {{{
if is_linux; then
  alias ls='ls --color'
elif is_osx; then
  alias ls='ls -G'
fi

alias ll='ls -lh'
alias la='ll -A'
alias sl='ls'
alias f='fuck'
# }}}

alias wineja='LC_ALL=ja_JP.UTF-8 wine'

function mkdcd {
  [[ -n "$1" ]] && mkdir -p "$1" && builtin cd "$1"
}

function frepo {
  local dir
  dir=$(ghq list > /dev/null | fzf --reverse +m --query="$1") && cd $(ghq root)/$dir
}

function venv {
  local env
  local venv_dir
  venv_dir=$HOME/.venv
  env=$(command ls $venv_dir | fzf) && source $venv_dir/$env/bin/activate
}

function s {
  local opt
  if [[ "$TERM_PROGRAM" = "iTerm.app" ]]; then
    opt="TMUX_CC=yes"
  else
    opt="USE_TMUX=yes"
  fi

  [[ -n "$1" ]] && ssh $1 -t $opt /bin/bash
}
