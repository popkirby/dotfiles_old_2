" File:       chiery.vim
" Maintainer: popkirby <popkirby@gmail.com>
" License:    MIT

set background=light
hi clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'chiery'

" Pallete: {{{
let s:light0 = '#f8ebe5'
let s:light1 = '#f8dfd4'
let s:light2 = '#f4c8b4'

let s:gray0 = '#c19580'
let s:gray1 = '#dba891'
let s:gray2 = '#ab8e81'

let s:dark0 = '#420500'
let s:dark1 = '#835348'

let s:red = '#bc1c18'
let s:green = '#708e2c'
let s:orange = '#d88c5a'
let s:blue = '#268bd2'
let s:blue2 = '#2c62a6'
let s:purple = '#b34dbb'
let s:yellow = '#cca02d'

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
call s:HL('Normal', s:dark1, s:light0)
call s:HL('Visual', s:none, s:light2)
hi! link VisualNOS Visual

call s:HL('LineNr', s:gray0, s:light1)

call s:HL('Cursor',       s:none, s:none, 'inverse,')
call s:HL('CursorLine',   s:none, s:light1)
call s:HL('CursorLineNr', s:dark1, s:light1)
hi! link CursorColumn CursorLine

call s:HL('MatchParen', s:none, s:none, 'inverse,')
call s:HL('ColorColumn', s:none, s:light1)

call s:HL('TabLineFill', s:none, s:light1)
call s:HL('TabLineSel',  s:light0, s:dark1, 'bold,')
hi! link TabLine TabLineFill

call s:HL('Search', s:yellow, s:light0, 'inverse,')
call s:HL('IncSearch', s:orange, s:light0, 'inverse,')

call s:HL('Underlined', s:blue, s:none, 'underline,')

call s:HL('VertSplit', s:light2, s:light2)

call s:HL('WildMenu', s:light0, s:dark1, 'inverse,bold,')

hi! link Directory Underlined

call s:HL('Title', s:green, s:none, 'bold,')

call s:HL('ErrorMsg', s:light0, s:red, 'bold,')

call s:HL('MoreMsg', s:orange, s:none, 'bold,')
call s:HL('ModeMsg', s:orange, s:none, 'bold,')
call s:HL('Question', s:orange, s:none, 'bold,')
call s:HL('WarningMsg', s:red, s:none, 'bold,')

hi! link SignColumn LineNr

call s:HL('Folded', s:dark1, s:light1)
hi! link FoldColumn LineNr


call s:HL('SpecialKey', s:blue)
call s:HL('NonText',    s:gray0)

call s:HL('Pmenu', s:dark1, s:light1)
call s:HL('PmenuSel', s:light1, s:orange)
call s:HL('PmenuSbar', s:none, s:dark1)
call s:HL('PmenuThumb', s:none, s:light1)
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
call s:HL('DiffAdd'   , s:green, s:light1, 'inverse,')
call s:HL('DiffDelete', s:red, s:light1, 'inverse,')
call s:HL('DiffChange', s:blue, s:light0, 'inverse,')
call s:HL('DiffText',   s:blue2, s:light0, 'inverse,')
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

