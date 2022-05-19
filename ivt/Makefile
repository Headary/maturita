OUT=out
GRAPHICS=graphics

PDF=$(patsubst %.md,$(OUT)/%.pdf,$(wildcard *.md))
GRAPH_DEPS=$(call graphics-deps,$(GRAPHICS))

.PHONY: all graphics pdf complete clean
.SECONDARY: $(GRAPH_DEPS)

all: graphics pdf complete

include ../Makefile.inc

graphics: $(GRAPH_DEPS) | $(GRAPHICS_OUT)
pdf: $(PDF)
complete: $(OUT)/complete.pdf

clean:
	find $(OUT) ! -name '*.pdf' -type f -delete

allMarkdownInputs=$(addsuffix }, $(addprefix \markdownInput{../,$(shell ls -v *.md)))

completeOptions := twoside,titlepage
$(OUT)/complete.pdf: $(wildcard *.md) template.cls $(GRAPH_DEPS) | $(GRAPHICS_OUT) $(OUT)
	cd $(@D); $(call XELATEX,'\documentclass[$(completeOptions)]{../template}\begin{document}\maketitle\tableofcontents\newpage$(allMarkdownInputs)\listoffigures\listoftables\end{document}')

.SECONDEXPANSION:
$(OUT)/%.pdf: %.md template.cls $$(call graphics-deps,$(GRAPHICS),$$(shell echo $$* | cut -d'-' -f1)) $$(wildcard source_codes/$$(shell echo $$* | cut -d'-' -f1)*) | $(GRAPHICS_OUT) $(OUT)
	cd $(@D); $(call XELATEX,'\documentclass{../template}\begin{document}\tableofcontents\markdownInput{../$<}\end{document}')
