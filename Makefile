# Adapted from https://github.com/kjhealy/pandoc-templates/blob/master/examples/Makefile
# Thanks to Kieran Healy!

CSL = apsa
CSL = jcsl
CSL = jcsl2
BIB = refs.bib

## specify output files 
FILES = modus_operandi.pdf topics.pdf
OUTDIR = output
OUT := $(addprefix $(OUTDIR)/,$(FILES))

all: $(OUT)

$(OUTDIR)/topics.pdf: src/topics.md Makefile refs.bib
	pandoc -t latex -f markdown src/topics.md --number-sections --filter pandoc-citeproc --csl=pandoc_customizations/csl/$(CSL).csl --bibliography=$(BIB) -o $@

$(OUTDIR)/modus_operandi.pdf: src/modus_operandi.md Makefile
	pandoc -t latex -f markdown src/modus_operandi.md -o $@

clean:
	rm -f $(OUTDIR)/*.slides.html $(OUTDIR)/*.pdf

again:
	make clean
	make
