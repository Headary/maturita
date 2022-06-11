\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{template}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{krska}}
\ProcessOptions
\LoadClass[11pt,a4paper]{../../krska}

\RequirePackage{fontspec}
\RequirePackage{polyglossia}
\setmainlanguage[splithyphens=false]{czech}

\RequirePackage{../../krskasugar}
\newcommand\uv[1]{„#1“}
\RequirePackage{fkssugar}

\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{mhchem}
\RequirePackage{color}
\RequirePackage{subfig}
\RequirePackage{tabularx}
\RequirePackage{hyperref}
\RequirePackage{bookmark}
\RequirePackage{xcolor}
\RequirePackage{listings}

\renewcommand{\bottomtitlespace}{0.05\textheight}

\newcolumntype{C}{>{\centering\arraybackslash}X}
\renewcommand\tabularxcolumn[1]{m{#1}}% for vertical centering text in X column

% Create page tabs
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
  smartEllipses=false,
  fencedCode,
  contentBlocks,
  pipeTables,
  tableCaptions,
  hybrid,
  underscores=false
]{markdown}

\graphicspath{{../graphics/out/}}

\hypersetup{
	xetex,
	bookmarksnumbered
}

\author{Adam Krška}
\title{Maturitní otázky z informatiky}

\renewcommand*{\fps@table}{htbp}

\renewcommand\thefigure{\thesection.\arabic{figure}}
\counterwithin{figure}{section}
\renewcommand\thetable{\thesection.\arabic{table}}
\counterwithin{table}{section}

\renewcommand\lstlistingname{Kód}

\definecolor{editorGray}{rgb}{0.95, 0.95, 0.95}
\definecolor{editorOcher}{rgb}{1, 0.4, 0} % #FF7F00 -> rgb(239, 169, 0)
\definecolor{editorGreen}{rgb}{0, 0.5, 0} % #007C00 -> rgb(0, 124, 0)

\lstset{%
	% Basic design
	backgroundcolor=\color{editorGray},
	basicstyle={\small\ttfamily},
	frame=l,
	floatplacement=htbp,
	% Line numbers
	xleftmargin={0.75cm},
	numbers=left,
	stepnumber=1,
	firstnumber=1,
	numberfirstline=true,
	% Code design
	keywordstyle=\color{blue}\bfseries,
	commentstyle=\color{darkgray}\ttfamily,
	ndkeywordstyle=\color{editorGreen}\bfseries,
	stringstyle=\color{editorOcher},
	% Code
	alsodigit={.:;},
	tabsize=2,
	showtabs=false,
	showspaces=false,
	showstringspaces=false,
	extendedchars=true,
	breaklines=true,
	captionpos=b,
	numberbychapter
}

\lstdefinestyle{c}{
	language=C,
	float=htbp,
	morekeywords={
		printf, puts, putchar, fwrite,
		getchar, gets, scanf, size_t,
		FILE, fopen, fclose, fprintf, fscanf,
		fread, bool
	}
}

\lstdefinestyle{html}{
	language=HTML,
	float=htbp
}

\lstdefinestyle{sql}{
	language=SQL,
	float=htbp,
	morekeywords={
		DATABASE
	}
}

\newcommand\inlistc[1]{\lstinline[style=c]{#1}}
\newcommand\inlisth[1]{\lstinline[style=html]{#1}}
\newcommand\inlists[1]{\lstinline[style=sql]{#1}}
