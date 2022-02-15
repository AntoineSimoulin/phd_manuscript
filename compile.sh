#!/bin/bash

rm -rf pdf && mkdir pdf
pdflatex -output-directory pdf -shell-escape -interaction=nonstopmode -file-line-error main.tex >/dev/null 2>&1
biber -output-directory pdf main >/dev/null 2>&1
pdflatex -output-directory pdf --shell-escape -interaction=nonstopmode -file-line-error main.tex | grep -i ".*:[0-9]*:.*" 