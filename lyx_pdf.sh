#!/bin/bash


for var in "$@"
do
  DIR="/home/$USER/phd/writings/$var"
  cd "$DIR"
  lyx -e pdflatex "$var".lyx
  pdflatex "$var".tex
  pdflatex "$var".tex
  bibtex "$var".aux
  bibtex "$var".aux
  pdflatex "$var".tex
  pdflatex "$var".tex
done
