thesis: thesis.tex thesis.pdf

zip:
	git archive master --format=zip > scnuthesis-`git describe master`-basic.zip

view: thesis.pdf
	xdg-open thesis.pdf

thesis.pdf: thesis.tex scnuthesis.cls data/*.tex
	xelatex thesis
	bibtex thesis
	bibtex thesis
	xelatex thesis
	xelatex thesis

clean:
	rm -v *.aux *.log *.toc *.ind *.gls *.glo *.idx *.ilg *.out *.bbl *.thm *.blg *.lot *.lof *~
