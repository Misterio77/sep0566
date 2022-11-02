LATEXMK ?= latexmk
MKDIR ?= mkdir
RM ?= rm

all: build/lista1.pdf build/prova1-2019.pdf

build/lista1.pdf: src/lista1.tex
	$(MKDIR) -p build
	$(LATEXMK) -pdf -output-directory=./build -aux-directory=./build $<

build/prova1-2019.pdf: src/prova1-2019.tex
	$(MKDIR) -p build
	$(LATEXMK) -pdf -output-directory=./build -aux-directory=./build $<

clean:
	$(RM) -r build
