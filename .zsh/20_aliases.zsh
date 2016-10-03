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
