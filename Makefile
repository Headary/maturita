OUT=out
GRAPHICS=graphics

PDF=$(patsubst %.md,$(OUT)/%.pdf,$(wildcard *.md))
GRAPH_DEPS=$(wildcard $(addprefix $(GRAPHICS)/,*.jpg *.png)) \
	$(patsubst $(GRAPHICS)/%.svg,$(GRAPHICS)/%.eps,$(wildcard $(GRAPHICS)/*.svg)) \
	$(patsubst $(GRAPHICS)/%.plt,$(GRAPHICS)/%.tex,$(wildcard $(GRAPHICS)/*.plt))

.PHONY: all
all: graphics pdf complete
graphics: $(GRAPH_DEPS)
pdf: $(PDF)
complete: $(OUT)/complete.pdf

define XELATEX
	xelatex -shell-escape -jobname '$(basename $(@F))' -no-pdf $(1)\
	&& (\
		grep -i "Package rerunfilecheck Warning: File .* has changed.\|There were undefined references.\|Rerun to get cross-references right." $(notdir $(basename $@)).log && (\
			xelatex -shell-escape -jobname '$(basename $(@F))' $(1)\
		) || (\
			xdvipdfmx -E $(basename $(@F)).xdv -o $(basename $(@F)).pdf\
		)\
	) || false
endef

$(GRAPHICS)/%.eps: $(GRAPHICS)/%.svg
	inkscape $< -o $@

GNUPLOT = gnuplot -e "set format '$$\"%g\"$$'; set terminal epslatex color\
	size 16cm,9cm; set output '$(patsubst %.eps,%.tex,$(@F))'" $(<F)
$(GRAPHICS)/%.tex: $(GRAPHICS)/%.plt
	cd $(<D); $(GNUPLOT)

$(OUT)/%.pdf: %.md
	cd $(@D); $(call XELATEX,'\documentclass{../template}\begin{document}\tableofcontents\markdownInput{../$<}\end{document}')

allMarkdownInputs=$(addsuffix }, $(addprefix \markdownInput{../,$(wildcard *.md)))

$(OUT)/complete.pdf: $(wildcard *.md)
	cd $(@D); $(call XELATEX,'\documentclass{../template}\begin{document}\tableofcontents$(allMarkdownInputs)\end{document}')
