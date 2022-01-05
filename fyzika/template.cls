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
\RequirePackage{hyperref}
\RequirePackage{mhchem}
\RequirePackage{color}
\RequirePackage{subfig}

\renewcommand{\bottomtitlespace}{0.05\textheight}

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

\graphicspath{{../graphics}}

\author{Adam Krška}
\title{Maturitní otázky z fyziky}

\renewcommand*{\fps@table}{htbp}
