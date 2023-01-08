#!/usr/bin/env bash
DOC=index.md
WORDCOUNT=`wc -w < index.md | bc`
pandoc --template template.tex --bibliography=bookends.bib --citeproc --csl=elsevier-harvard.csl -V geometry:margin=3cm -V geometry:right=4cm -V fontsize=12pt -V linestretch=1.5 -V wordcount=$WORDCOUNT -f markdown -t pdf --toc -o paper.pdf $DOC
open paper.pdf
