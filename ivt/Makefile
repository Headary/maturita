
OUT=out
GRAPHICS=graphics

PDF=$(patsubst %.md,$(OUT)/%.pdf,$(wildcard *.md))
GRAPH_DEPS=$(call graphics-deps,$(GRAPHICS))

.PHONY: all graphics pdf complete test
.SECONDARY: $(GRAPH_DEPS)

all: graphics pdf complete

include ../Makefile.inc

graphics: $(GRAPH_DEPS) | $(GRAPHICS_OUT)
pdf: $(PDF)
complete: $(OUT)/complete.pdf

$(OUT)/%.pdf: %.md graphics template.cls
	cd $(@D); $(call XELATEX,'\documentclass{../template}\begin{document}\tableofcontents\markdownInput{../$<}\end{document}')

allMarkdownInputs=$(addsuffix }, $(addprefix \markdownInput{../,$(wildcard *.md)))

$(OUT)/complete.pdf: $(wildcard *.md) graphics template.cls
	cd $(@D); $(call XELATEX,'\documentclass{../template}\begin{document}\tableofcontents$(allMarkdownInputs)\end{document}')
