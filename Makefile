CSL = apsa
BIB = refs.bib

all: bond_pricing.pdf bond_pricing.slides.html

bond_pricing.pdf: src/bond_pricing.md Makefile
	pandoc -t beamer -f markdown src/bond_pricing.md -o output/bond_pricing.pdf

bond_pricing.slides.html: src/bond_pricing.md Makefile
	pandoc -t revealjs -s --toc-depth=1 --toc --template=pandoc_customizations/templates/revealjs.template --filter pandoc-citeproc --csl=pandoc_customizations/csl/$(CSL).csl --bibliography=$(BIB) -V theme=league -o output/$@ $<

clean:
	rm -f src/*.slides.html *.pdf

again:
	make clean
	make
