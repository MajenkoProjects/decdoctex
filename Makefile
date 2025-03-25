all: EK-VAXAA-4P-001.pdf EK-VSTAA-MG-001.pdf


EK-VAXAA-4P-001.pdf: EK-VAXAA-4P-001.tex dec.cls
	pdflatex EK-VAXAA-4P-001 < /dev/null
	pdflatex EK-VAXAA-4P-001 < /dev/null

EK-VSTAA-MG-001.pdf: EK-VSTAA-MG-001.tex EK-VSTAA-MG-001-preamble.tex EK-VSTAA-MG-001-ch1.tex EK-VSTAA-MG-001-ch2.tex dec.cls decsectional.cls
	pdflatex EK-VSTAA-MG-001 < /dev/null
	pdflatex EK-VSTAA-MG-001 < /dev/null

watch:
	ls *.tex *.cls | entr -c -s 'make'
