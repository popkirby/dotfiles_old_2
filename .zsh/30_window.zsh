function title {
  emulate -L zsh

  case "$TERM" in
    screen*)
      print -Pn "\ek$1:q\e\\"
      ;;
  esac
}

function preexec_winname() {
  emulate -L zsh
  title "%m:$1"
}

function precmd_winname() {
  emulate -L zsh
  title "%m:zsh"
}

autoload -Uz add-zsh-hook

add-zsh-hook precmd precmd_winname
add-zsh-hook preexec preexec_winname
