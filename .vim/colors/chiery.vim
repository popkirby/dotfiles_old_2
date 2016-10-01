" File:       chiery.vim
" Maintainer: popkirby <popkirby@gmail.com>
" License:    MIT

" comment

set background=light
hi clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'chiery'

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

" Normal text
exe 'hi! Normal       guibg=' . s:light0 . ' guifg=' . s:dark1

exe 'hi! Cursor       cterm=reverse term=reverse'
exe 'hi! CursorLine   guibg=' . s:light1 . ' cterm=NONE term=NONE'
exe 'hi! CursorColumn guibg=' . s:light1 . ' cterm=NONE term=NONE'
exe 'hi! ColorColumn  guibg=' . s:light1 . ' cterm=NONE term=NONE'

exe 'hi! Visual       guibg=' . s:light1

exe 'hi! Comment      guifg=' . s:gray0

exe 'hi! Search       guibg=' . s:light0 . ' guifg=' . s:yellow . ' cterm=reverse term=reverse' 
hi! link IncSearch Search

exe 'hi! LineNr       guibg=' . s:light1 . ' guifg=' . s:gray0
hi! link SignColumn LineNr

exe 'hi! Folded       guibg=' . s:light1  . ' guifg=' . s:dark1
hi! link FoldColumn LineNr

exe 'hi! Statement    guifg=' . s:red
exe 'hi! Identifier   guifg=' . s:blue
exe 'hi! Function     guifg=' . s:green

exe 'hi! PreProc      guifg=' . s:blue

exe 'hi! Constant     guifg=' . s:purple

exe 'hi! Type         guifg=' . s:blue2
exe 'hi! Structure    guifg=' . s:blue
hi! link StorageClass Structure

exe 'hi! Special      guifg=' . s:green
exe 'hi! SpecialKey   guifg=' . s:blue
exe 'hi! NonText      guifg=' . s:gray0

exe 'hi! Pmenu        guibg=' . s:light1 . ' guifg=' . s:dark1
exe 'hi! PmenuSel     guibg=' . s:yellow . ' guifg=' . s:light1

exe 'hi! MatchParen   guibg=' . s:light0 . ' cterm=reverse term=reverse'

exe 'hi! Error        guibg=' . s:light0 . ' guifg=' . s:red . ' cterm=underline term=underline'
exe 'hi! Todo         guibg=' . s:light0 . ' guifg=' . s:yellow . ' cterm=underline term=underline'

exe 'hi! Underlined   ctermfg=NONE guifg=' . s:blue   . ' cterm=underline term=underline'
hi! link Directory Underlined

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

exe 'hi! ErrorMsg        guibg=' . s:red . ' guifg=' . s:light1

