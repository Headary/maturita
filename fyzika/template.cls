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
\RequirePackage[version=4]{mhchem}
\RequirePackage{color}
\RequirePackage{subfig}
\RequirePackage{tabularx}
\RequirePackage{calc}

\hypersetup{
	xetex,
	bookmarksnumbered
}

\renewcommand{\bottomtitlespace}{0.05\textheight}
\titleformat{\paragraph}[hang]{\bfseries\sffamily}{\theparagraph}{1em}{}
\titlespacing*{\paragraph}{0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}

\newcolumntype{C}{>{\centering\arraybackslash}X}
\renewcommand\tabularxcolumn[1]{m{#1}}% for vertical centering text in X column

\RequirePackage{fancytabs}

\fancytabsTop{2cm}
\fancytabsGap{2.5mm}
%Define the maximum amount of tabs on a page. After \tabcount tabs are displayed, the next tab is displayed on top of the page again.
\fancytabsCount{15}
\fancytabsHeight{(\paperheight-2\tab@top-\tab@count\tab@gap+\tab@gap)/\tab@count}
\fancytabsStyle{\Large\sffamily\bfseries\color{white}}
\fancytabsLeftColor{black!40}
\fancytabsRightColor{black!40}
\fancytabsRotate{0}
\fancytabsFloor{0}

\newcommand\pagethumb[1]{
	\ifthenelse{\thesection>0}{
		\fancytab[#1]{\thesection}{\thesection}
	}{}
}

\fancyhf{}
\if@twoside
	\fancyhead[RO]{\pagethumb{RIGHT}\bfseries\@author}
	\fancyhead[LE]{\@title\pagethumb{LEFT}}
	\fancyfoot[RO,LE]{\thepage/\pageref{LastPage}}
\else
	\fancyhead[R]{\bfseries\@author}
	\fancyhead[L]{\@title}
	\fancyfoot[C]{\thepage/\pageref{LastPage}}
\fi

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
\title{Maturitní otázky z fyziky}

\renewcommand*{\fps@table}{htbp}

\renewcommand\thefigure{\thesection.\arabic{figure}}
\counterwithin{figure}{section}
\renewcommand\thetable{\thesection.\arabic{figure}}
\counterwithin{table}{section}
