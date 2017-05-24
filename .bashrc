case $- in
  *i*) ;;
    *) return;;
esac

. ~/.path

if [ "$TMUX_CC" = yes ]; then
  exec $HOME/bin/tmuxx
fi
