TARGET=document
SVG_PDFS = ontohub-oor-logo.pdf

all: | svgs pdf

include ../Makefile.include
.PHONY: all clean pdf view svgs

%.pdf: %.svg
	inkscape -z -C $*.svg -A $*.pdf

svgs: $(SVG_PDFS)

