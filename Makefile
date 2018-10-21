all: ps

ps:
	latex vldb_sample
	bibtex vldb_sample
	latex vldb_sample
	latex vldb_sample
	#dvips main -t letter -o main.ps
	#dvips main -Ppdf -G0 -t letter -o main-pdf.ps
	dvips vldb_sample -Ppdf -G0 -o vldb_sample-pdf.ps

pdf: ps
	ps2pdf -dCompatibilityLevel=1.3 -dEmbedAllFonts=true -dPDFSETTINGS=/prepress vldb_sample-pdf.ps vldb_sample.pdf
	rm -f *.dvi *.aux *.ps *.log *.blg *.bbl

clean:
	rm -f *.dvi *.aux *.ps *.log *.blg *.ps *.pdf
