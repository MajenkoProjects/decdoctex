ORDER=EK-VAXAA-4P-001

${ORDER}.pdf: ${ORDER}.tex dec.cls
	pdflatex ${ORDER} < /dev/null
	pdflatex ${ORDER} < /dev/null

watch:
	printf "${ORDER}.tex\ndec.cls\n" | entr -c -s 'make'
