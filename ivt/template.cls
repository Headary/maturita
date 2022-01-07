\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{template}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{krska}}
\ProcessOptions
\LoadClass[11pt,a4paper]{krska}

\RequirePackage{fontspec}
\RequirePackage{polyglossia}
\setmainlanguage{czech}

\RequirePackage{krskasugar}
\newcommand\uv[1]{„#1“}
\RequirePackage{fkssugar}

\RequirePackage{booktabs}
\RequirePackage{mhchem}
\RequirePackage{color}
\RequirePackage{subfig}
\RequirePackage{tabularx}
\RequirePackage{hyperref}

\renewcommand{\bottomtitlespace}{0.05\textheight}

\newcolumntype{C}{>{\centering\arraybackslash}X}
\renewcommand\tabularxcolumn[1]{m{#1}}% for vertical centering text in X column

\RequirePackage[
  cacheDir=/tmp/latexmarkdown,
  hashEnumerators,
  definitionLists,
  footnotes,
  inlineFootnotes,
  smartEllipses,
  fencedCode,
  contentBlocks,
  pipeTables,
  tableCaptions,
  hybrid,
  underscores=false
]{markdown}

\graphicspath{{../graphics/out/}}

\author{Adam Krška}
\title{Maturitní otázky z informatiky}

\renewcommand*{\fps@table}{htbp}
