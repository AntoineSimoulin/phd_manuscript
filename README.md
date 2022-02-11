# Ph.D. Manuscript

## Compiling the project

`cd` into the root of the repository, and run
```
pdflatex -output-directory examples/documentation main.tex
biber -output-directory examples/documentation main
pdflatex -output-directory examples/documentation main.tex
pdflatex -output-directory examples/documentation main.tex
pdflatex -output-directory examples/documentation main.tex
```

To compile the glossary and nomenclature as well, `cd` into the 
`examples/documentation` directory and run
```
makeindex main.nlo -s nomencl.ist -o main.nls
makeglossaries main
```
Then, `cd` back into the root of the repository and re-run pdflatex.

NOTE: sometimes LaTeX needs more than one run to get the correct
position of each element; this is true in particular for the positioning
of floating elements like figures, tables, and margin notes.
Occasionally, LaTeX can need up to four re-runs, so If the alignment of
margin elements looks odd, or if they bleed into ther main text, try
running pdflatex one more time.

## Acknowledgements

This class is based on the work of [Ken Arroyo
Ohori](https://3d.bk.tudelft.nl/ken/en/) for his doctoral thesis.
The main ideas behind the layout can be found in this [blog
post](https://3d.bk.tudelft.nl/ken/en/2016/04/17/a-1.5-column-layout-in-latex.html).
The [Tufte-LaTeX class](https://github.com/Tufte-LaTeX/tufte-latex) has also been a
source of ideas about the layout.

My gratitude goes also to [Vel](https://www.vel.nz/), for his patience 
and his invaluable suggestions about the design, and to all the people 
who have contributed either on 
[GitHub](https://github.com/fmarotta/kaobook/graphs/contributors) or by 
sending e-mails.

## License

This repository contains two independent works. On the one hand, the 
kaobook class, consisting of `kaobook.cls`, `kaohandt.cls`, and 
`kao.def` files plus all of the files listed in the `styles` directory; 
on the other hand, the templates and the examples in the `examples` 
directory.

The first work is licensed under the [LaTeX Project Public
License](https://www.latex-project.org/lppl/), so if you want to modify
and/or distribute the `*.cls` and `*.sty` files pertaining to this work
you have to complain with the terms of the license. However, if you just
want to use the class to compile your documents you need not worry about
the license.

The second work is released into the public domain with a Creative 
Commons Zero License.

Read [MANIFEST.md](MANIFEST.md) for the details.