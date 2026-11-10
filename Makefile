LATEX = pdflatex
LATEXFLAGS = -interaction=nonstopmode -halt-on-error -output-directory=build
TARGET = main

.PHONY: all clean

all:
	mkdir -p build
	$(LATEX) $(LATEXFLAGS) $(TARGET).tex
	$(LATEX) $(LATEXFLAGS) $(TARGET).tex

clean:
	rm -f build/main.aux build/main.lof build/main.log build/main.lot \
	      build/main.out build/main.toc build/main.pdf build/main.synctex.gz

