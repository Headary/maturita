
include ../Makefile.inc

OUT=out
GRAPHICS=graphics

PDF=$(patsubst %.md,$(OUT)/%.pdf,$(wildcard *.md))
GRAPH_DEPS=$(call graphics-deps,$(GRAPHICS))

.PHONY: all graphics pdf complete test
all: graphics pdf complete
graphics: $(GRAPH_DEPS)
pdf: $(PDF)
complete: $(OUT)/complete.pdf

test:
	@echo $(GRAPH_DEPS)

$(OUT)/%.pdf: %.md graphics template.cls
	cd $(@D); $(call XELATEX,'\documentclass{../template}\begin{document}\tableofcontents\markdownInput{../$<}\end{document}')

allMarkdownInputs=$(addsuffix }, $(addprefix \markdownInput{../,$(wildcard *.md)))

$(OUT)/complete.pdf: $(wildcard *.md) graphics template.cls
	cd $(@D); $(call XELATEX,'\documentclass{../template}\begin{document}\tableofcontents$(allMarkdownInputs)\end{document}')
