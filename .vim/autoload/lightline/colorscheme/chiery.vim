let s:p = {
      \ 'normal' : {}, 
      \ 'inactive' : {}, 
      \ 'insert' : {}, 
      \ 'replace' : {}, 
      \ 'visual' : {}, 
      \ 'tabline' : {}}

" Pallete: {{{
let s:light0 = '#f8ebe5'
let s:light1 = '#f8dfd4'

let s:gray0 = '#c19580'
let s:gray1 = '#dba891'

let s:dark0 = '#420500'
let s:dark1 = '#835348'

let s:red = '#bc1c18'
let s:yellow = '#d88c5a'
let s:blue = '#268bd2'
let s:blue2 = '#2c62a6'
let s:green = '#657b33'
let s:purple = '#b34dbb'
" }}}

let s:p.normal.middle = [ [s:dark1, s:light1, 0, 0] ]
let s:p.normal.left   = [ [s:light0, s:green, 0, 0],
                        \ [s:light1, s:dark1, 0, 0] ]
let s:p.normal.right  = [ [s:light1, s:dark1, 0, 0],
                        \ [s:light1, s:dark1, 0, 0] ]

let s:p.inactive.middle = [ [s:dark1, s:light1, 0, 0] ]
let s:p.inactive.left   = [ [s:dark1, s:light1, 0, 0],
                          \ [s:dark1, s:light1, 0, 0] ]
let s:p.inactive.right  = [ [s:dark1, s:light1, 0, 0],
                          \ [s:dark1, s:light1, 0, 0] ]

let s:p.insert.left = [ [s:light0, s:blue, 0, 0],
                      \ s:p.normal.left[1]]
let s:p.replace.left = [ [s:light0, s:red, 0, 0],
                      \ s:p.normal.left[1]]
let s:p.visual.left = [ [s:light0, s:yellow, 0, 0],
                      \ s:p.normal.left[1]]

let s:p.normal.error = [ [s:light0, s:red, 0, 0] ]
let s:p.normal.warning = [ [s:light0, s:yellow, 0, 0] ]

let g:lightline#colorscheme#chiery#palette = s:p
