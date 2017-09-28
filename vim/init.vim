let $CACHE = expand('~/.cache/vim-plug/autoload')

if !isdirectory(expand($CACHE))
  call mkdir(expand($CACHE), 'p')
endif

" dein.vim
"let s:dein_dir = ''
"if &runtimepath !~ '/dein.vim'
"  let s:dein_dir = expand('$CACHE/dein') . '/repos/github.com/Shougo/dein.vim'
"  if !isdirectory(s:dein_dir)
"    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_dir
"  endif
"
"  execute 'set runtimepath^=' . substitute(fnamemodify(s:dein_dir, ':p'), '/$', '', '')
"endif

if &runtimepath !~ '/vim-plug'
  if !filereadable(expand('$CACHE/plug.vim'))
    execute '!curl -fLo ' . expand('$CACHE/plug.vim') . ' https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  endif
  execute 'set runtimepath^=' . expand('$CACHE/../')
endif

