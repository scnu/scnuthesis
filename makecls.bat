del *.aux *.log *.toc *.ind *.inx *.gls *.glo *.ist *.idx *.ilg *.out *.bak *.bbl *.brf *.blg *.dvi *.ps
xelatex scnuthesis.ins
xelatex scnuthesis.dtx
makeindex -s gind scnuthesis
makeindex -s gglo -o scnuthesis.gls scnuthesis.glo
xelatex scnuthesis.dtx
xelatex scnuthesis.dtx
