let g:deoplete#enable_at_startup = 1

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ deoplete#mappings#manual_complete()

" inoremap <expr><BS>
 "      \ deoplete#mappings#smart_close_popup() . "\<C-h>"

inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function() abort
  return deoplete#mappings#close_popup() . "\<CR>"
endfunction

if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif

autocmd! User vimtex let g:deoplete#omni#input_patterns.tex = g:vimtex#re#deoplete
