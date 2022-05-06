\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{books}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass[12pt,a4paper]{article}

\RequirePackage[czech]{babel}
\RequirePackage{polyglossia}
\setmainlanguage{czech}
\RequirePackage{fontspec}

\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{graphicx}
\RequirePackage[margin=2cm, headheight=15.1pt]{geometry}
\RequirePackage{anyfontsize}
\RequirePackage{array}
\RequirePackage{longtable}
\RequirePackage{ifthen}
\RequirePackage{lipsum}
\RequirePackage{lmodern}

\RequirePackage{paralist}
\RequirePackage{enumitem}
\setlist[description]{
	topsep=0.2em,
	itemsep=-0.2em,
    itemindent=2pt
}

\RequirePackage[nobottomtitles]{titlesec} % change heains style
\titleformat*{\section}{\Large\bfseries\sffamily}
\titleformat*{\subsection}{\large\bfseries\sffamily}
\titleformat*{\subsubsection}{\bfseries\sffamily}
%\titleformat*{\paragraph}{\bfseries\sffamily}
%\titleformat*{\subparagraph}{\bfseries\sffamily}
\renewcommand{\bottomtitlespace}{0.05\textheight}

% define parameters
\newcommand\book@name{0}
\newcommand\bookname[1]{
\renewcommand\book@name{#1}}

\newcommand\book@subname{0}
\newcommand\booksubname[1]{
\renewcommand\book@subname{#1}}

\newcommand\book@author{0}
\newcommand\bookauthor[1]{
\renewcommand\book@author{#1}}
\newcommand\getauthor{\book@author}

\newcommand\book@content{0}
\newcommand\bookcontent[1]{
\renewcommand\book@content{#1}}

% header
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhead{}
\fancyhead[L]{\textbf{\book@author}}
\fancyhead[R]{\textbf{\book@name}}
\fancyfoot{}
\fancyfoot[C]{}

\newcommand{\loadbook}[1]{
	\bookname{N/A} \booksubname{N/A}
	\bookauthor{N/A} \bookcontent{N/A}
	\input{#1}
}

\newcommand\printbook[1]{
	\setcounter{parts}{0}
	\loadbook{#1}
	\clearpage
	\printbooktitle{\book@name}{\book@subname}{\book@author}
	\book@content
}

\newlength{\titlesize}
\newlength{\authorsize}
\setlength{\titlesize}{32pt}
\setlength{\authorsize}{18pt}

\newcommand{\printbooktitle}[3]{
	\begin{center}
	\thispagestyle{empty}
	
	\ifthenelse{\equal{#1}{N/A}}{
		\GenericError{Book class}{Book name not defined!}{}{}
	}{}

	\ifthenelse{\equal{#3}{N/A}}{
		\GenericWarning{Book class}{Book author not defined!}
	}{}

	\fontsize{\titlesize}{1.2\titlesize}\selectfont
	{\bfseries#1}

	\ifthenelse{\equal{#2}{N/A}}{}{
		\fontsize{\authorsize}{1.2\authorsize}\selectfont #2
	}

	\vspace*{12pt}
	\fontsize{\authorsize}{1.2\authorsize}\selectfont
	\fontfamily{cmss}\selectfont \textsl{#3}
	\end{center}

	\addcontentsline{toc}{subsection}{\textbf{#1} -- #3}
}

\newcounter{parts}
\newcommand{\newpart}{\stepcounter{parts}\section*{\Roman{parts}.~část}}

\newcommand{\timeperiod}[1]{
	\addcontentsline{toc}{section}{#1}
}

%\newcommand{\parag}[2]{\paragraph{#1}#2}
\newcommand{\parag}[1]{\paragraph{#1}}


\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

\newcommand{\paragtable}[2]{
	\paragraph{#1}\par\hspace*{1cm}

	\vspace*{-1.5em}
	\begin{center}
	\begin{longtable}{lL{13cm}}
		#2
	\end{longtable}
	\end{center}
	\vspace*{-4em}
}

\newcommand{\paragtabletext}[3]{
	\paragraph{#1}\par\hspace*{1cm}
	#2

	\vspace*{-1.5em}
	\begin{center}
	\begin{longtable}{lL{13cm}}
		#3
	\end{longtable}
	\end{center}
	\vspace*{-4em}
}


