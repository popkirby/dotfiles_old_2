"--------------------------------------------------------------------------------
" filetype.vim
"

" TeX
autocmd FileType plaintex setlocal filetype=tex
autocmd FileType tex setlocal conceallevel=0

" Go
autocmd FileType go setlocal shiftwidth=8 tabstop=8 softtabstop=0 noexpandtab

" JavaScript
let g:syntastic_javascript_checkers = ['eslint']
