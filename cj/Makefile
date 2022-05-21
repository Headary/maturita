SOURCE=sources
OUT=out
LIST=include_list.tex

SOURCEFILES=$(wildcard $(SOURCE)/*.tex)
OBJS = $(patsubst $(SOURCE)/%.tex,$(OUT)/%.pdf,$(SOURCEFILES))

.PHONY: all clean stats
all: $(OBJS) $(OUT)/all.pdf $(OUT)/booklist.pdf

include ../Makefile.inc

$(OUT)/all.pdf: $(SOURCEFILES) books.cls titlepage.tex $(LIST)
	cd $(@D); $(call XELATEX,'\documentclass[twoside]{../books}\begin{document}\input{../titlepage.tex}\input{../$(LIST)}\end{document}')

$(OUT)/booklist.pdf: booklist.tex #$(OUT)/all.pdf
	cd $(@D); $(call XELATEX,../booklist.tex)

$(OUT)/%.pdf: $(SOURCE)/%.tex books.cls
	cd $(@D); $(call XELATEX,'\documentclass{../books}\begin{document}\printbook{../$<}\end{document}')

stats:
	@printf "Počet knih: "
	@ls sources/*.tex | wc -l
	@printf "Počet autorů: "
	@grep -hr "bookauthor" sources/ | sed -e 's/\\bookauthor{\(.*\)}/\1/' | sort | uniq | wc -l
	@echo "Autoři:"
	@grep -hr "bookauthor" sources/ | sed -e 's/\\bookauthor{\(.*\)}/\1/' | sort | uniq -c
	@echo "Počet děl v kategoriích:"
	@grep -hr "\%kat" sources | sed -e 's/%kat/kat /' | sort | uniq -c

clean:
	find $(OUT) ! -name '*.pdf' -type f -delete

