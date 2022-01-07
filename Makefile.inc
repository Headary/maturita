# Common makefile parts
# vim: syn=make

# == Graphics part ==

# -- Folders --
GRAPHICS_OUT = $(GRAPHICS)/$(OUT)
DEPS_FOLDERS = $(OUT) $(GRAPHICS_OUT)

$(DEPS_FOLDERS):
	mkdir -p $@

# -- Metapost figures --
METAPOST_EPS = mpost -jobname=$(subst .src.mp,,$(<F)) -s 'outputtemplate="%j.%o"' $(<F)
METAPOST_SVG = mpost -jobname=$(subst .src.mp,,$(<F)) -s 'outputtemplate="%j.%o"' -s 'outputformat="svg"' $(<F)

$(GRAPHICS_OUT)/%.eps: $(GRAPHICS)/%.src.mp
	cd $(@D); $(METAPOST_EPS)
$(GRAPHICS_OUT)/%.svg: $(GRAPHICS)/%.src.mp
	cd $(@D); $(METAPOST_SVG)

# -- Gnuplot figures --
GNUPLOT = gnuplot -e "set format '$$\"%g\"$$'; set terminal epslatex color\
	size 16cm,9cm; set output '$(@F)'" ../$(<F)

GNUPLOT = gnuplot -e \
"set format '$$\"%g\"$$'; \
set terminal epslatex standalone color size 16cm,9cm header\
\"\\\\usepackage[utf8]{inputenc}\n\\\\usepackage[T1]{fontenc}\n\\\\usepackage[czech]{babel}\n\\\\usepackage{fkssugar}\"; \
set output '$(@F)'" ../$(<F)

# gnuplot with datafiles
$(GRAPHICS_OUT)/%.tex: $(GRAPHICS)/%.src.plt $(GRAPHICS)/%.src.dat
	cd $(@D); $(GNUPLOT)

# gnuplot without datafiles or with differently named datafiles
$(GRAPHICS_OUT)/%.tex: $(GRAPHICS)/%.src.plt
	cd $(@D); $(GNUPLOT)

# final compilation
$(GRAPHICS_OUT)/%.pdf: $(GRAPHICS_OUT)/%.tex
	cd $(GRAPHICS_OUT); pdflatex $(<F)

# -- IPE figures --
$(GRAPHICS_OUT)/%.eps: $(GRAPHICS)/%.src.ipe
	iperender -eps $< $@
$(GRAPHICS_OUT)/%.svg: $(GRAPHICS)/%.src.ipe
	iperender -svg $< $@
$(GRAPHICS_OUT)/%.pdf: $(GRAPHICS)/%.src.ipe
	iperender -pdf $< $@

# -- SVG figures --
INKSCAPE_PNG=inkscape -w 1024 $< -o $@ # Inkscape 1.0 version

$(GRAPHICS_OUT)/%.eps: $(GRAPHICS)/%.src.svg
	inkscape $< -o $@ # Inkscape 1.0 version
$(GRAPHICS_OUT)/%.pdf: $(GRAPHICS)/%.src.svg
	inkscape $< -o $@ # Inkscape 1.0 version
$(GRAPHICS_OUT)/%.png: $(GRAPHICS)/%.src.svg
	$(INKSCAPE_PNG)
$(GRAPHICS_OUT)/%.png: $(GRAPHICS_OUT)/%.svg # generic rule to export png from exported svg, for metapost and ipe
	$(INKSCAPE_PNG)

# -- EPS figures --
INKSCAPE_SVG = inkscape --export-plain-svg=$@ $<
CONVERT = convert -density 1200 -geometry 1024 $< $@

$(GRAPHICS_OUT)/%.pdf: $(GRAPHICS)/%.src.eps
	epstopdf $< --outfile=$@
$(GRAPHICS_OUT)/%.pdf: $(GRAPHICS_OUT)/%.eps
	epstopdf $< --outfile=$@
$(GRAPHICS_OUT)/%.svg: $(GRAPHICS)/%.src.eps
	$(INKSCAPE_SVG)
$(GRAPHICS_OUT)/%.png: $(GRAPHICS)/%.src.eps
	$(CONVERT)

# -- PDF figures --
$(GRAPHICS_OUT)/%.svg: $(GRAPHICS)/%.src.pdf
	$(INKSCAPE_SVG)
$(GRAPHICS_OUT)/%.png: $(GRAPHICS)/%.src.pdf
	$(CONVERT)

# -- direct output --
COPY = ln $< $@

$(GRAPHICS_OUT)/%.eps: $(GRAPHICS)/%.src.eps
	$(COPY)
$(GRAPHICS_OUT)/%.svg: $(GRAPHICS)/%.src.svg
	$(COPY)
$(GRAPHICS_OUT)/%.pdf: $(GRAPHICS)/%.src.pdf
	$(COPY)
$(GRAPHICS_OUT)/%.png: $(GRAPHICS)/%.src.png
	$(COPY)
$(GRAPHICS_OUT)/%.jpg: $(GRAPHICS)/%.src.jpg
	$(COPY)
$(GRAPHICS_OUT)/%.JPG: $(GRAPHICS)/%.src.JPG
	$(COPY)
$(GRAPHICS_OUT)/%.jpeg: $(GRAPHICS)/%.src.jpeg
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
	$(call find-graphics-deps,$(1),$(2),mp, pdf,$(OUT)/)\
	$(call find-graphics-deps,$(1),$(2),plt,pdf,$(OUT)/)\
	$(call find-graphics-deps,$(1),$(2),ipe,pdf,$(OUT)/)\
	$(call find-graphics-deps,$(1),$(2),svg,pdf,$(OUT)/)\
	$(call find-graphics-deps,$(1),$(2),eps,pdf,$(OUT)/)\
	$(call find-graphics-deps,$(1),$(2),pdf,pdf,$(OUT)/)\
	$(call find-graphics-deps,$(1),$(2),png,png,$(OUT)/)\
	$(call find-graphics-deps,$(1),$(2),jpg,jpg,$(OUT)/)\
	$(call find-graphics-deps,$(1),$(2),JPG,JPG,$(OUT)/)\
	$(call find-graphics-deps,$(1),$(2),jpeg,jpeg,$(OUT)/)

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
