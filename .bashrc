case $- in
  *i*) ;;
    *) return;;
esac

. ~/.path

if [ "$TMUX_CC" = yes ] || [ "$USE_TMUX" = yes ]; then
  exec $HOME/bin/tmuxx
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
