CSL = apsa
CSL = jcsl
CSL = jcsl2
BIB = refs.bib

all: output/bond_pricing.pdf output/bond_pricing.slides.html output/topics.pdf output/modus_operandi.pdf

output/bond_pricing.pdf: src/bond_pricing.md Makefile
	pandoc -t beamer -f markdown src/bond_pricing.md --filter pandoc-citeproc --csl=pandoc_customizations/csl/$(CSL).csl --bibliography=$(BIB) -o output/bond_pricing.pdf

output/bond_pricing.slides.html: src/bond_pricing.md Makefile
	pandoc -t revealjs -s --toc-depth=1 --toc --template=pandoc_customizations/templates/revealjs.template --filter pandoc-citeproc --csl=pandoc_customizations/csl/$(CSL).csl --bibliography=$(BIB) -V theme=league -o $@ $<

output/topics.pdf: src/topics.md Makefile refs.bib
	pandoc -t latex -f markdown src/topics.md --number-sections --filter pandoc-citeproc --csl=pandoc_customizations/csl/$(CSL).csl --bibliography=$(BIB) -o output/topics.pdf

output/modus_operandi.pdf: src/modus_operandi.md Makefile
	pandoc -t latex -f markdown src/modus_operandi.md -o output/modus_operandi.pdf

clean:
	rm -f output/*.slides.html output/*.pdf

again:
	make clean
	make
