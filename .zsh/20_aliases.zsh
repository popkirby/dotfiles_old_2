source $DOTPATH/etc/lib/util.sh

if is_osx; then
  alias ql='qlmanage -p "$@" >&/dev/null'
fi

# ls {{{
alias ls='ls -G'
alias ll='ls -lh'
alias la='ll -A'
alias sl='ls'
# }}}

function mkdcd {
  [[ -n "$1" ]] && mkdir -p "$1" && builtin cd "$1"
}

function frepo {
  local dir
  dir=$(ghq list > /dev/null | fzf --reverse +m --query="$1") && cd $(ghq root)/$dir
}
