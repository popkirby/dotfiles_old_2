"--------------------------------------------------------------------------------
" dein.vim
"

let g:dein#install_progress_type = 'title'
let g:dein#install_message_type = 'none'
let g:dein#enable_notification = 1

let s:path = expand('$CACHE/dein')
if !dein#load_state(s:path)
  finish
endif

let s:rcdir = fnamemodify(resolve(expand('<sfile>')), ':h')

call dein#begin(s:path, [expand('<sfile>')]
  \ + split(glob(s:rcdir . '/toml/*.toml'), '\n'))

call dein#load_toml(s:rcdir . '/toml/dein.toml', {'lazy': 0})
call dein#load_toml(s:rcdir . '/toml/deinlazy.toml', {'lazy': 1})

if has('nvim')
  call dein#load_toml(s:rcdir . '/toml/deineo.toml', {})
else
  call dein#load_toml(s:rcdir . '/toml/deinvim.toml', {})
endif

call dein#end()
call dein#save_state()

if dein#check_install()
  call dein#install()
endif
