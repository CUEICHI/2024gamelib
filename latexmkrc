#!/usr/bin/perl
$latex         = 'platex %O -src-specials -shell-escape -interaction=nonstopmode -halt-on-error -file-line-error -synctex=1 -kanji=utf8 %S';
$bibtex        = 'pbibtex %O %B -kanji=utf8';
$dvipdf        = 'dvipdfmx %O -o %D %S';
$pdf_mode      = 3; # use dvipdfmx

# Use SumatraPDF and atom inverse search
# please replace maruta by your username
#$pdf_previewer = '"C:\Program Files\SumatraPDF\SumatraPDF.exe" -reuse-instance -inverse-search "\"C:\Users\maruta\AppData\Local\atom\bin\atom.cmd\" \"%f:%l\"" %O %S';

# if you do not need to preview in -pvc option (preview document and countinuously update mode)
$pdf_previewer = 'exit';

ensure_path('TEXINPUTS', './sty//' );
ensure_path('BIBINPUTS', './bib//');