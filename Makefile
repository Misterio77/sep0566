PDFLATEX ?= pdflatex
MKDIR ?= mkdir
RM ?= rm

build/lista1.pdf: src/lista1.tex
	$(MKDIR) -p build
	$(PDFLATEX) --halt-on-error --output-directory=./build --aux-directory=./build src/lista1.tex

clean:
	$(RM) build -rf
