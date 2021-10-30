OUT=out
PDF=$(patsubst %.md,$(OUT)/%.pdf,$(wildcard *.md))

.PHONY: all
all: $(PDF)
	@echo $(PDF)

define XELATEX
	xelatex -shell-escape -jobname '$(basename $(@F))' -no-pdf $(1)\
	&& (\
		grep -i "Package rerunfilecheck Warning: File .* has changed.\|There were undefined references.\|Rerun to get cross-references right." $(basename $@).log && (\
			xelatex -shell-escape -jobname '$(basename $(@F))' $(1)\
		) || (\
			xdvipdfmx -E $(basename $(@F)).xdv -o $(basename $(@F)).pdf\
		)\
	) || false
endef

$(OUT)/%.pdf: %.md
	cd $(@D); $(call XELATEX,'\documentclass{../template}\begin{document}\tableofcontents\markdownInput{../$<}\end{document}')
