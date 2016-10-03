zstyle ':completion:*:default' menu select=2 

# completion grouping
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:descriptions' format '%F{yellow}Completing %B%d%b%f'
zstyle ':completion:*' group-name ''

# coloring
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
