#!/usr/bin/env perl

$pdf_mode = 1;
$pdflatex = 'lualatex -synctex=1 -file-line-error -halt-on-error -interaction=nonstopmode %O %S';
$bibtex = 'pbibtex %O %S';

$pvc_view_file_via_temporary = 0;
$pdf_previewer = 'open -ga /Applications/Skim.app';

$success_cmd = "gvim --remote-expr 'vimtex#compiler#callback(1)'";
$failure_cmd = "gvim --remote-expr 'vimtex#compiler#callback(0)'";
