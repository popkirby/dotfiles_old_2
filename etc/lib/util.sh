ostype() {
  uname | lower
}

os_detect() {
  export PLATFORM
  case "$(ostype)" in
    *'linux'*)  PLATFORM='linux'   ;;
    *'darwin'*) PLATFORM='osx'     ;;
    *'bsd'*)    PLATFORM='bsd'     ;;
    *)          PLATFORM='unknown' ;;
  esac
}

is_osx() {
  os_detect
  if [ "$PLATFORM" = "osx" ]; then
    return 0
  else
    return 1
  fi
}

is_ssh_running() {
  [ ! -z "$SSH_CLIENT" ]
}

is_screen_running() {
  [ ! -z "$STY" ]
}

is_tmux_running() {
  [ ! -z "$TMUX" ]
}

is_screen_or_tmux_running() {
  is_screen_running || is_tmux_running
}

is_exists() {
  which "$1" >/dev/null 2>&1
  return $?
}

has() {
  is_exists "$@"
}

lower() {
    if [ $# -eq 0 ]; then
        cat <&0
    elif [ $# -eq 1 ]; then
        if [ -f "$1" -a -r "$1" ]; then
            cat "$1"
        else
            echo "$1"
        fi
    else
        return 1
    fi | tr "[:upper:]" "[:lower:]"
}
