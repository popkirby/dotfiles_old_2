"--------------------------------------------------------------------------------
" encoding.vim
"

if has('kaoriya')
  set filencoding=guess
endif

set fileformat=unix
set fileformats=unix,dos,mac
set ambiwidth=single

if has('multi_byte_ime')
  set iminsert=0 imsearch=0
endif

