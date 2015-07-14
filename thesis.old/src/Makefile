
default : thesis.pdf

thesis.pdf : *.tex *.bib
	pdflatex thesis
	bibtex thesis
	pdflatex thesis
	pdflatex thesis

fast : imogen/intro/* *.tex thesis.bib
	cd imogen/intro; $(MAKE)
	pdflatex thesis

clean : 
	rm -rf b2t tmp.pdf *.lhs.tex thesis.pdf *.aux *~ *.log *.blg *.bbl *.pdfsync *.out *.toc *.rel *.lof *.lot *.idx *.brf *.ilg *.ind *.glo *.loa *.loe *.synctex* .*~ 
