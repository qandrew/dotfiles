#!/bin/bash
# simple script to compile a latex file, and open the pdf on ubuntu
# Oct 24 2017

if [ "$1" == "" ]; then
    echo "Please Provide .tex file"
    exit 1
fi

echo 'making pdf for' $1

pdflatex $1 # compile pdf

s=$1
s2="${s%%.*}"

bibtex $s2.aux # compile bib
pdflatex $1
pdflatex $1

rm $s2.log $s2.out $s2.aux $s2.bbl $s2.blg # remove aux stuff

evince $s2.pdf # open pdf



