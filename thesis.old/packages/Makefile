
default : setup

packages := $(shell ls *.sty *.cls)

texmf_local=/usr/local/texlive/texmf-local/tex/latex/local

setup :
	cp $(packages) $(texmf_local)
	texhash
