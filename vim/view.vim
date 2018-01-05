"--------------------------------------------------------------------------------
" view.vim
"

set number
set nowrap
set whichwrap=b,s,<,>,[,]

" wrap in preview windows
autocmd MyAutoCmd BufWinEnter * if &previewwindow == 1
        \ | setlocal wrap
        \ | endif

" auto close preview window
autocmd MyAutoCmd CompleteDone * pclose

" hightlight cursorline
set cursorline

" space of bottom in window
set scrolloff=5

set laststatus=2
set cmdheight=2
set signcolumn=yes
set showcmd
set showmode
set showtabline=2

set shortmess=aT

set nobackup
set backupdir-=.

set t_vb=
set novisualbell

set wildmenu
set wildmode=full

set history=1000

" display all the information of the tag.
set showfulltag
set wildoptions=tagfile

set spelllang=en_US

" completion
set completeopt=menuone,preview
set complete=.
set pumheight=20

" report changes
set report=0

" split window to below / right
set splitbelow
set splitright

set cmdwinheight=5
set noequalalways

set lazyredraw

set display=lastline

set colorcolumn=100

set noshowmode

" syntax
set background=dark
set termguicolors

" disable Background Color Erase so that tmux can render colorschemes properly
if &term =~ '256color'
  set t_ut=
endif

if &term =~ 'screen'
  let &t_8f="\033[38;2;%lu;%lu;%lum"
  let &t_8b="\033[48;2;%lu;%lu;%lum"
endif

" colorscheme solarized
colorscheme chiery

let macvim_skip_colorscheme=1
let macvim_skip_cmd_opt_movement=1
let no_gvimrc_example=1

syntax enable
