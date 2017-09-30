let s:p = {
      \ 'normal' : {}, 
      \ 'inactive' : {}, 
      \ 'insert' : {}, 
      \ 'replace' : {}, 
      \ 'visual' : {}, 
      \ 'tabline' : {}}

" Pallete: {{{
if &background == 'light'
  let s:bg0 = '#f1f8e9'
  let s:bg1 = '#dcedc8'
  let s:bg2 = '#c5e1a5'

  let s:gray0 = '#cfd8dc'
  let s:gray1 = '#eceff1'
  let s:gray2 = '#b0bec5'

  let s:fg0 = '#263238'
  let s:fg1 = '#37474f'

  let s:red = '#f4511e'
  let s:green = '#2e7d32'
  let s:orange = '#ef6c00'
  let s:blue = '#1565c0'
  let s:blue2 = '#42a5f5'
  let s:purple = '#6a1b9a'
  let s:yellow = '#ff6f00'
else
  let s:bg0 = '#253238'
  let s:bg1 = '#37474f'
  let s:bg2 = '#78909c'

  let s:gray0 = '#cfd8dc'
  let s:gray1 = '#eceff1'
  let s:gray2 = '#b0bec5'

  let s:fg0 = '#f1f8e9'
  let s:fg1 = '#e8f5e9'

  let s:red = '#f48fb1'
  let s:green = '#a5d8a7'
  let s:orange = '#ffcc80'
  let s:blue = '#81d4fa'
  let s:blue2 = '#5c6bc0'
  let s:purple = '#ce93d8'
  let s:yellow = '#fdd835'
endif
" }}}

let s:p.normal.middle = [ [s:fg1, s:bg1, 0, 0] ]
let s:p.normal.left   = [ [s:bg0, s:green, 0, 0],
                        \ [s:fg1, s:bg2, 0, 0] ]
let s:p.normal.right  = [ [s:bg1, s:fg1, 0, 0],
                        \ [s:bg1, s:fg1, 0, 0] ]

let s:p.inactive.middle = [ [s:fg1, s:bg1, 0, 0] ]
let s:p.inactive.left   = [ [s:fg1, s:bg1, 0, 0],
                          \ [s:fg1, s:bg1, 0, 0] ]
let s:p.inactive.right  = [ [s:fg1, s:bg1, 0, 0],
                          \ [s:fg1, s:bg1, 0, 0] ]

let s:p.insert.left = [ [s:bg0, s:blue, 0, 0],
                      \ s:p.normal.left[1]]
let s:p.replace.left = [ [s:bg0, s:red, 0, 0],
                      \ s:p.normal.left[1]]
let s:p.visual.left = [ [s:bg0, s:yellow, 0, 0],
                      \ s:p.normal.left[1]]

let s:p.normal.error = [ [s:bg0, s:red, 0, 0] ]
let s:p.normal.warning = [ [s:bg0, s:yellow, 0, 0] ]

let g:lightline#colorscheme#chiery#palette = s:p
