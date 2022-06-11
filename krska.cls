%
% @author Adam Krška <adam@krska.com>
% @date 24.10.2020
%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{krska}

% -- Create new options --
% show date if wanted
\newif\if@usedate \@usedatefalse
\DeclareOption{date}{\@usedatetrue}


% -- inherit from article class --
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extarticle}}
\ProcessOptions
\LoadClass{extarticle}

% -- Load packages --
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern} % specify used font
\RequirePackage[
	pdftex,
	margin=2cm,
	headsep=0.8cm,
	headheight=14pt]{geometry}
\RequirePackage{fancyhdr} % enable changing header and footer
\RequirePackage{lastpage} % get number of pages
\RequirePackage[nobottomtitles]{titlesec} % change headins style
	\renewcommand{\bottomtitlespace}{0.05\textheight}
\RequirePackage[
	pdfusetitle,
	pdfproducer={Latex, or other tool},
	pdfcreator={pdflatex, or other tool}
]{hyperref} % create links in file


% -- change headings to sans font --
\titleformat*{\section}{\Large\bfseries\sffamily}
\titleformat*{\subsection}{\large\bfseries\sffamily}
\titleformat*{\subsubsection}{\bfseries\sffamily}
\titleformat*{\paragraph}{\bfseries\sffamily}
\titleformat*{\subparagraph}{\bfseries\sffamily}


% -- specify header and footer --
\fancyhf{}
\if@twoside
	\fancyhead[RO]{\bfseries\@author}
	\if@usedate
		\fancyhead[RO]{\@date, \bfseries\@author}
	\fi
	\fancyhead[LE]{\@title}
	\fancyfoot[RO,LE]{\thepage/\pageref{LastPage}}
\else
	\fancyhead[R]{\bfseries\@author}
	\if@usedate
		\fancyhead[R]{\@date, \bfseries\@author}
	\fi
	\fancyhead[L]{\@title}
	\fancyfoot[C]{\thepage/\pageref{LastPage}}
\fi
\pagestyle{fancy}

\fancypagestyle{titlepage}{
	\renewcommand{\headrulewidth}{0pt}%
	\fancyhead{}
}


% -- change maketitle --
\newlength{\beforetitlespace} \setlength{\beforetitlespace}{1em}
\if@titlepage
	\renewcommand{\maketitle}{
	\begingroup
	\begin{titlepage}
		\null\vfil
		\vskip 100pt
		\centering
		{\huge \bfseries \sffamily \@title}\\[3em]
		{\LARGE \sffamily \@author}
		\if@usedate
			\vskip 3em
			{\Large \sffamily \@date}
		\fi
		\vfil\null
	\end{titlepage}
	\endgroup
	}
\else
	\renewcommand{\maketitle}{
	\begingroup
	\thispagestyle{titlepage}
	\begin{raggedright}
		\null
		\vskip \beforetitlespace
		{\LARGE \bfseries \sffamily \@title}\\[1.5em]
		{\Large \sffamily \@author}
		\if@usedate
			\vskip 1.5em
			{\large \sffamily \@date}
		\fi
    	\vskip 1.5em
	\end{raggedright}
	\endgroup
	}
\fi

\renewcommand{\theenumiii}{\Roman{enumiii}}
