#!/usr/bin/env perl

$pdf_mode = 1;
$pdflatex = 'lualatex -synctex=1 -file-line-error -halt-on-error -interaction=nonstopmode %O %S';
$bibtex = 'pbibtex %O %S';

$pvc_view_file_via_temporary = 0;
$pdf_previewer = 'open -ga /Applications/Skim.app';
