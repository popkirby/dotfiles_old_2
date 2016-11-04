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
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_jsx_enabled_makers = ['eslint']

autocmd FileType javascript let b:neomake_javascript_eslint_exe = s:nwhich('eslint')

let s:rootpath = fnamemodify('/', ':p')
let s:homepath = fnamemodify('~/', ':p')

function! s:nwhich(cmd)
  let l:cwd = expand('%:p:h')

  while l:cwd != s:homepath && l:cwd != s:rootpath
    if filereadable(resolve(l:cwd . '/package.json'))
      let l:execPath = fnamemodify(l:cwd . '/node_modules/.bin/' . a:cmd, ':p')
      if executable(l:execPath)
        return l:execPath
      endif
    endif
    let l:cwd = resolve(l:cwd . '/..')
  endwhile

  return a:cmd
endfunction