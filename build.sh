#!/usr/bin/env bash
DOC=index.md
WORDCOUNT=`perl -ne 'if ($i > 1) { print } else { /^---/ && $i++ }' $DOC | wc -w | bc`
perl -pe 's|!\\[(.*?)\\\\\\[(.*?)\\\\]]\\((.*?)\\)|![\1\2](\3)|' < $DOC > escaped.md
pandoc --template template.tex --bibliography=bookends.bib --citeproc --csl=elsevier-harvard.csl --metadata link-citations=true --metadata link-bibliography=true -V colorlinks=true -V geometry:margin=3cm -V geometry:right=4cm -V fontsize=12pt -V linestretch=1.5 -V wordcount=$WORDCOUNT -f markdown -t pdf --toc -o paper.pdf escaped.md bibliography.md
open paper.pdf
