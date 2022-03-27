SOURCE=sources
OUT=out
LIST=bookincludelist.tex

SOURCEFILES=$(wildcard $(SOURCE)/*.tex)
OBJS = $(patsubst $(SOURCE)/%.tex,$(OUT)/%.pdf,$(SOURCEFILES))


.PHONY: all clean stats
all: $(OBJS) $(OUT)/all.pdf $(OUT)/booklist.pdf

include ../Makefile.inc

$(OUT)/all.pdf: $(SOURCEFILES) books.cls titlepage.tex $(OUT)/$(LIST)
	cd $(@D); $(call XELATEX,'\documentclass{../books}\begin{document}\input{../titlepage.tex}\input{$(LIST)}\end{document}')

$(OUT)/booklist.pdf: booklist.tex $(OUT)/all.pdf
	cd $(@D); $(call XELATEX,../booklist.tex)

$(OUT)/%.pdf: $(SOURCE)/%.tex books.cls
	cd $(@D); $(call XELATEX,'\documentclass{../books}\begin{document}\printbook{../$<}\end{document}')

$(OUT)/$(LIST): $(SOURCEFILES)
	echo "\\timeperiod{Světová a~česká literatura do konce 18.~století}" > $@;
	grep -l "%kat1" sources/*.tex | awk '{printf "\\printbook{../%s}\n", $$1}' >> $@;
	echo "\\timeperiod{Světová a~česká literatura 19.~století}" >> $@;
	grep -l "%kat2" sources/*.tex | awk '{printf "\\printbook{../%s}\n", $$1}' >> $@;
	echo "\\timeperiod{Světová literatura 20.~a 21.~století}" >> $@;
	grep -l "%kat3" sources/*.tex | awk '{printf "\\printbook{../%s}\n", $$1}' >> $@;
	echo "\\timeperiod{Česká literatura 20.~a~21.~století}" >> $@;
	grep -l "%kat4" sources/*.tex | awk '{printf "\\printbook{../%s}\n", $$1}' >> $@;

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
	@rm -f pdf/*.aux pdf/*.log pdf/*.toc

