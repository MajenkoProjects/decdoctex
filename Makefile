SOURCES=README.tex EK-VAXAA-4P-001.tex EK-VSTAA-MG-001.tex





PDFS=$(patsubst %.tex,%.pdf,$(SOURCES))

all: ${PDFS} README.md


%.pdf: %.tex $(wildcard %-*.tex) dec.cls decsectional.cls
	pdflatex ${basename $@ .pdf} < /dev/null
	pdflatex ${basename $@ .pdf} < /dev/null

watch:
	ls *.tex *.cls | entr -c -s 'make'


README.md: README.tex
	pandoc -s README.tex -o README.md
