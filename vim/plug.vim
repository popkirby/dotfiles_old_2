call plug#begin('~/.cache/vim-plug/plugged')

Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'w0rp/ale'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'justinmk/vim-dirvish'
Plug 'osyo-manga/vim-anzu'
Plug 'rhysd/accelerated-jk'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
"Plug 'ternjs/tern_for_vim', { 'for': 'javascript', 'do': 'which npm && npm install' }
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --tern-completer' }
Plug 'posva/vim-vue', { 'for': 'vue' }
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'editorconfig/editorconfig-vim'
Plug 'Shougo/context_filetype.vim'
Plug 'osyo-manga/vim-precious'
Plug 'scrooloose/nerdtree'
Plug 'lervag/vimtex', { 'for': 'tex' }

call plug#end()
