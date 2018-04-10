"--------------------------------------------------------------------------------
" mappings.vim
"

" <Space>: enter command mode
nnoremap <Space> :

" tt, tj, tk: tag jumps
nnoremap t <Nop>
nnoremap tt <C-]>
nnoremap tk :pop<CR>
nnoremap tj :tag<CR>

nnoremap <C-f> :Files<CR>
nnoremap <C-b> :Buffers<CR>
nnoremap <C-g> :Ag<CR>

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

