#!/bin/bash

TEX_FILE=$1
AUX_FILE='build/'${TEX_FILE:0:-4}'.aux'
BCF_FILE='build/'${TEX_FILE:0:-4}'.bcf'

pdflatex -synctex=1 -interaction=nonstopmode -output-directory=build $TEX_FILE
bibtex  $AUX_FILE
pdflatex -synctex=1 -interaction=nonstopmode -output-directory=build $TEX_FILE
