LATEXMK ?= latexmk
MKDIR ?= mkdir
RM ?= rm

build/lista1.pdf: src/lista1.tex
	$(MKDIR) -p build
	$(LATEXMK) -pdf -output-directory=./build -aux-directory=./build src/lista1.tex

clean:
	$(RM) -r build
