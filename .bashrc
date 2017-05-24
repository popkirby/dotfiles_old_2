case $- in
  *i*) ;;
    *) return;;
esac

. ~/.bash_profile
. ~/.path

if [ "$TMUX_CC" = yes ] || [ "$USE_TMUX" = yes ]; then
  exec $HOME/bin/tmuxx
fi
