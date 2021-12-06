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
\RequirePackage{titlesec}

\renewcommand{\bottomtitlespace}{0.05\textheight}

\RequirePackage[
  hashEnumerators,
  definitionLists,
  footnotes,
  inlineFootnotes,
  smartEllipses,
  fencedCode,
  contentBlocks,
  pipeTables,
  tableCaptions,
  hybrid
]{markdown}

\graphicspath{{../graphics}}

\author{Adam Krška}
\title{Maturitní otázky z fyziky}

\makeatletter
\renewcommand*{\fps@table}{htbp}
\makeatother
