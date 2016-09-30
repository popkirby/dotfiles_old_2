zplug "zplug/zplug"

zplug "~/.zsh", \
  from:local, \
  nice:2, \
  use:"<->_*.zsh"

zplug "b4b4r07/emoji-cli"

zplug "b4b4r07/enhancd", \
  use:init.sh

zplug "zsh-users/zsh-completions"

zplug "zsh-users/zsh-history-substring-search"

zplug "zsh-users/zsh-syntax-highlighting", \
    nice:19

zplug "mafredri/zsh-async", \
  on:sindresorhus/pure

zplug "sindresorhus/pure"
