# Common makefile parts
# vim: syn=make

# == Graphics part ==

# -- Folders --
DEPS_FOLDERS = $(OUT)

$(DEPS_FOLDERS):
	mkdir -p $@

# -- Metapost figures --
METAPOST_EPS = mpost -jobname=$(subst .src.mp,,$(<F)) -s 'outputtemplate="%j.%o"' $(<F)
METAPOST_SVG = mpost -jobname=$(subst .src.mp,,$(<F)) -s 'outputtemplate="%j.%o"' -s 'outputformat="svg"' $(<F)

%.eps: %.src.mp
	cd $(@D); $(METAPOST_EPS)
%.svg: %.src.mp
	cd $(@D); $(METAPOST_SVG)

# -- Gnuplot figures --
GNUPLOT = gnuplot -e "set format '$$\"%g\"$$'; set terminal epslatex color\
	size 16cm,9cm; set output '$(patsubst %.eps,%.tex,$(@F))'" $(<F)

# gnuplot with datafiles
%.eps %.tex: %.src.plt %.src.dat
	cd $(<D); $(GNUPLOT)

# gnuplot without datafiles or with differently named datafiles
%.eps %.tex: %.src.plt
	cd $(<D); $(GNUPLOT)

# -- IPE figures --
%.eps: %.src.ipe
	iperender -eps $< $@
%.svg: %.src.ipe
	iperender -svg $< $@
%.pdf: %.src.ipe
	iperender -pdf $< $@

# -- SVG figures --
INKSCAPE_PNG=inkscape -w 1024 $< -o $@ # Inkscape 1.0 version

%.eps: %.src.svg
	inkscape $< -o $@ # Inkscape 1.0 version
%.pdf: %.src.svg
	inkscape $< -o $@ # Inkscape 1.0 version
%.png: %.src.svg
	$(INKSCAPE_PNG)
%.png: %.svg # generic rule to export png from exported svg, for metapost and ipe
	$(INKSCAPE_PNG)

# -- EPS figures --
INKSCAPE_SVG = inkscape --export-plain-svg=$@ $<
CONVERT = convert -density 1200 -geometry 1024 $< $@

%.pdf: %.src.eps
	epstopdf $< --outfile=$@
%.pdf: %.eps
	epstopdf $< --outfile=$@
%.svg: %.src.eps
	$(INKSCAPE_SVG)
%.png: %.src.eps
	$(CONVERT)

# -- PDF figures --
%.svg: %.src.pdf
	$(INKSCAPE_SVG)
%.png: %.src.pdf
	$(CONVERT)

# -- direct output --
COPY = ln $< $@

%.eps: %.src.eps
	$(COPY)
%.svg: %.src.svg
	$(COPY)
%.pdf: %.src.pdf
	$(COPY)
%.png: %.src.png
	$(COPY)
%.jpg: %.src.jpg
	$(COPY)
%.JPG: %.src.JPG
	$(COPY)
%.jpeg: %.src.jpeg
	$(COPY)


# == Graphics dependence ==
# - args:
# 		$(1) - graphics base folder
# 		$(2) - filename search pattern
# 		$(3) - source file extension
# 		$(4) - output file extension list (space devided)
# 		$(5) - output subfolder (with leading /, optional)
# - function: find source files and print expected output file names
define find-graphics-deps
	$(foreach ext,$(4),$(patsubst $(1)/%.src.$(3), $(1)/$(5)%.$(ext),\
		$(wildcard $(1)/*$(2)*.src.$(3))))
endef

# - args:
# 		$(1) - graphics base folder
# 		$(2) - filename search pattern
# - function: find all dependent graphic files for problem
# - rules: preferably export everything to pdf (for tex), svg and png (both for web)
# 		exceptions: export gnuplot to tex+eps; keep raster img format
graphics-deps = \
	$(call find-graphics-deps,$(1),$(2),mp, pdf)\
	$(call find-graphics-deps,$(1),$(2),plt,tex eps)\
	$(call find-graphics-deps,$(1),$(2),ipe,pdf)\
	$(call find-graphics-deps,$(1),$(2),svg,pdf)\
	$(call find-graphics-deps,$(1),$(2),eps,pdf)\
	$(call find-graphics-deps,$(1),$(2),pdf,pdf)\
	$(call find-graphics-deps,$(1),$(2),png,png)\
	$(call find-graphics-deps,$(1),$(2),jpg,jpg)\
	$(call find-graphics-deps,$(1),$(2),JPG,JPG)\
	$(call find-graphics-deps,$(1),$(2),jpeg,jpeg)

# == TEX to PDF compiler ==
define XELATEX
	xelatex -shell-escape -jobname '$(basename $(@F))' -no-pdf $(1)\
	&& (\
		grep -i "Package rerunfilecheck Warning: File .* has changed.\|There were undefined references.\|Rerun to get .* right" $(basename $@).log && (\
			xelatex -shell-escape -jobname '$(basename $(@F))' $(1)\
		) || (\
			xdvipdfmx -E $(basename $(@F)).xdv -o $(basename $(@F)).pdf\
		)\
	) || false
endef
