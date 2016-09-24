all: pdf

pdf:
	pdflatex main
	makeindex main.idx -s StyleInd.ist
	biber main
	pdflatex main
	pdflatex main

upload: pdf
	scp main.pdf math:public_html/files/main.pdf

clean:
	rm -f main.log
	rm -f main.aux
	rm -f main.out
	rm -f x.log
	rm -f main.toc
	rm -f main.run.xml
	rm -f main.ptc
	rm -f main.ind
	rm -f main.ilg
	rm -f main.bbl
	rm -f main.bcf
	rm -f main.blg
	rm -f main.idx

