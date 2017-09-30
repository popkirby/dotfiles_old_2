" File:       chiery.vim
" Maintainer: popkirby <popkirby@gmail.com>
" License:    MIT

hi clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'chiery'

" Pallete: {{{
if &background == 'light'
  let s:bg0 = '#f1f8e9'
  let s:bg1 = '#dcedc8'
  let s:bg2 = '#c5e1a5'

  let s:gray0 = '#78909c'
  let s:gray1 = '#b0bec5'
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
  let s:bg2 = '#455a64'

  let s:gray0 = '#78909c'
  let s:gray1 = '#eceff1'
  let s:gray2 = '#b0bec5'

  let s:fg0 = '#f1f8e9'
  let s:fg1 = '#dcedc8'

  let s:red = '#f48fb1'
  let s:green = '#a5d8a7'
  let s:orange = '#ffcc80'
  let s:blue = '#81d4fa'
  let s:blue2 = '#9fa8da'
  let s:purple = '#ce93d8'
  let s:yellow = '#fdd835'
endif

let s:none = 'NONE'

" }}}

" Highlight Func: {{{
" s:HL(group, guifg, guibg, gui, guisp
function! s:HL(group, fg, ...)
  let fg = a:fg

  if a:0 >= 1
    let bg = a:1
  else
    let bg = 'NONE'
  endif

  if a:0 >= 2 && strlen(a:2)
    let emstr = a:2
  else
    let emstr = 'NONE,'
  endif

  let histring = [ 'hi', a:group,
        \ 'guifg=' . fg, 'guibg=' . bg,
        \ 'gui=' . emstr[:-2], 'cterm=' . emstr[:-2], 'term=' . emstr[:-2]
        \ ]

  execute join(histring, ' ')
endfunction
" }}}

" General UI:  {{{
call s:HL('Normal', s:fg1, s:bg0)
call s:HL('Visual', s:none, s:bg2)
hi! link VisualNOS Visual

call s:HL('LineNr', s:gray0, s:bg1)

call s:HL('Cursor',       s:none, s:none, 'inverse,')
call s:HL('CursorLine',   s:none, s:bg1)
call s:HL('CursorLineNr', s:fg1, s:bg1)
hi! link CursorColumn CursorLine

call s:HL('MatchParen', s:none, s:none, 'inverse,')
call s:HL('ColorColumn', s:none, s:bg1)

call s:HL('TabLineFill', s:none, s:bg1)
call s:HL('TabLineSel',  s:bg0, s:fg1, 'bold,')
hi! link TabLine TabLineFill

call s:HL('Search', s:yellow, s:bg0, 'inverse,')
call s:HL('IncSearch', s:orange, s:bg0, 'inverse,')

call s:HL('Underlined', s:blue, s:none, 'underline,')

call s:HL('VertSplit', s:bg2, s:bg2)

call s:HL('WildMenu', s:bg0, s:fg1, 'inverse,bold,')

hi! link Directory Underlined

call s:HL('Title', s:green, s:none, 'bold,')

call s:HL('ErrorMsg', s:bg0, s:red, 'bold,')

call s:HL('MoreMsg', s:orange, s:none, 'bold,')
call s:HL('ModeMsg', s:orange, s:none, 'bold,')
call s:HL('Question', s:orange, s:none, 'bold,')
call s:HL('WarningMsg', s:red, s:none, 'bold,')

hi! link SignColumn LineNr

call s:HL('Folded', s:fg1, s:bg1)
hi! link FoldColumn LineNr


call s:HL('SpecialKey', s:blue)
call s:HL('NonText',    s:gray0)

call s:HL('Pmenu', s:fg1, s:bg1)
call s:HL('PmenuSel', s:bg1, s:orange)
call s:HL('PmenuSbar', s:none, s:fg1)
call s:HL('PmenuThumb', s:none, s:bg1)
" }}}

" Syntax Highlight: {{{
call s:HL('Comment', s:gray0)

call s:HL('Constant', s:purple)

call s:HL('Identifier', s:blue)
call s:HL('Funciton', s:green)

call s:HL('Statement', s:red)

call s:HL('PreProc', s:blue)

call s:HL('Type', s:blue2)
call s:HL('Structure', s:blue)
hi! link StorageClass Structure

call s:HL('Special', s:green)

call s:HL('Error', s:red, s:none, 'underline,')
call s:HL('Todo',  s:orange, s:none, 'underline,')
" }}}

" diff {{{
call s:HL('DiffAdd'   , s:green, s:bg1, 'inverse,')
call s:HL('DiffDelete', s:red, s:bg1, 'inverse,')
call s:HL('DiffChange', s:blue, s:bg0, 'inverse,')
call s:HL('DiffText',   s:blue2, s:bg0, 'inverse,')
" }}}

" vim syntax {{{
hi! link vimVar Identifier
hi! link vimfunc Function
hi! link vimUserFunc Function
hi! link helpSpecial Special
hi! link vimSet Normal
hi! link vimSetEqual Normal

exe 'hi! vimCommand        guifg=' . s:green
exe 'hi! vimCmdSep         guifg=' . s:blue
exe 'hi! helpExample       guifg=' . s:yellow
exe 'hi! helpOption        guifg=' . s:blue
exe 'hi! helpNote          guifg=' . s:purple . ' cterm=underline term=underline'
exe 'hi! helpHyperTextJump guifg=' . s:green  . ' cterm=underline term=underline'
hi! link helpHyperTextEntry helpHyperTextJump

exe 'hi! vimGroup        guifg=' . s:blue

" }}}

hi! link diffAdded Statement
hi! link diffLine  Identifier

