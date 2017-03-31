FILENAME=paper

all:
	make clean
	pdflatex $(FILENAME).tex
	biber $(FILENAME)
	pdflatex $(FILENAME).tex
	pdflatex $(FILENAME).tex

update:
	make clean
	pdflatex $(FILENAME).tex
	biber $(FILENAME)
	pdflatex $(FILENAME).tex
	pdflatex $(FILENAME).tex
	make clean

clean:
	rm -rf $(FILENAME).log $(FILENAME).out $(FILENAME).toc $(FILENAME).aux $(FILENAME).synctex.gz $(FILENAME).run.xml $(FILENAME).bcf $(FILENAME).bbl .latex .latex.json $(FILENAME).blg missfont.log
