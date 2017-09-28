"--------------------------------------------------------------------------------
" lightline.vim {{{1
let g:lightline = {
      \ 'colorscheme' : 'chiery', 
      \ 'active' : {
      \   'left' : [ [ 'mode', 'paste' ], 
      \              [ 'readonly', 'fugitive', 'filename', 'modified', 'anzu']], 
      \   'right' : [ [ 'syntastic', 'lineinfo' ], 
      \               [ 'percent' ], 
      \               [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ }, 
      \ 'component' : {
      \   'readonly' : '%{&filetype=="help"?"":&readonly?"\ue0a2":""}',
      \   'modified' : '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}'
      \ }, 
      \ 'component_function' : {
      \   'mode' : 'MyMode', 
      \   'fugitive' : 'MyFugitive', 
      \   'anzu' : 'anzu#search_status',
      \   'syntastic' : 'neomake#statusline#LoclistStatus',
      \ }, 
      \ 'component_expand' : {
      \ }, 
      \ 'component_type' : {
      \   'syntastic' : 'error', 
      \ }, 
      \ 'component_visible_condition': {
      \   'readonly' : '(&filetype!="help" && &readonly)', 
      \   'modified' : '(&filetype!="help" && (&modified||!&modifiable))'
      \ }, 
      \ 'separator' : { 'left' : "\ue0b0", 'right' : "\ue0b2" },
      \ 'subseparator' : { 'left' : "\ue0b1", 'right' : "\ue0b3" },
      \ }

function! MyMode()
  return &ft == 'unite' ? 'Unite' : 
        \ winwidth(0) > 60 ? lightline#mode() : ''
endfunction

function! MyFugitive()
  if exists('*fugitive#head')
    let _ = fugitive#head()
    return strlen(_) ? "\ue0a0 " . _ : ''
  endif
  return ''
endfunction


"--------------------------------------------------------------------------------
" vim-anzu {{{1
nmap n <Plug>(anzu-n)
nmap N <Plug>(anzu-N)
nmap * <Plug>(anzu-*)
nmap # <Plug>(anzu-sharp)
nmap <silent> <Esc><Esc> <Plug>(anzu-clear-search-status)<bar>:nohlsearch<CR>

"--------------------------------------------------------------------------------
" accelerated-jk {{{1
nmap <silent> j <Plug>(accelerated_jk_gj)
nmap <silent> k <Plug>(accelerated_jk_gk)

"--------------------------------------------------------------------------------
" vim-jsx {{{1
let g:jsx_ext_required = 0
