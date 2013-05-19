thesis: thesis.tex thesis.pdf
cls: scnuthesis.cls

zip:
	git archive master --format=zip > scnuthesis-`git describe master`-basic.zip

thesis.pdf: thesis.tex scnuthesis.cls
	xelatex thesis
	bibtex thesis
	bibtex thesis
	xelatex thesis
	xelatex thesis
	- pdf2htmlEX --zoom 1.33 thesis.pdf

scnuthesis.cls:	scnuthesis.ins scnuthesis.dtx
	xelatex scnuthesis.ins
	xelatex scnuthesis.dtx
	makeindex -s gind scnuthesis
	makeindex -s gglo -o scnuthesis.gls scnuthesis.glo
	xelatex scnuthesis.dtx
	xelatex scnuthesis.dtx

clean:
	rm -v *.aux *.log *.toc *.ind *.gls *.glo *.idx *.ilg *.out *.bbl *.thm *.blg *.lot *.lof *~
