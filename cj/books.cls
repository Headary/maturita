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

\newcommand\@book{0}
\newcommand\book[1]{
\renewcommand\@book{#1}}

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhead{}
\fancyhead[L]{\textbf{\@author}}
\fancyhead[R]{\textbf{\@book}}
\fancyfoot{}
\fancyfoot[C]{}

\newcounter{parts}
\newcommand{\newpart}{\stepcounter{parts}\section*{\Roman{parts}.~část}}

\newcommand{\timeperiod}[1]{
	\addcontentsline{toc}{section}{#1}
}

\newlength{\titlesize}
\newlength{\authorsize}
\setlength{\titlesize}{32pt}
\setlength{\authorsize}{18pt}

\newcommand{\bookname}[3][N/A]{
	\begin{center}
	\thispagestyle{empty}
		
	\fontsize{\titlesize}{1.2\titlesize}\selectfont
	\fontfamily{qag}\selectfont
	#2

	\ifthenelse{\equal{#1}{N/A}}{}{
		\fontsize{\authorsize}{1.2\authorsize}\selectfont #1
	}

	\vspace*{12pt}
	\fontsize{\authorsize}{1.2\authorsize}\selectfont
	\fontfamily{cmss}\selectfont \textsl{#3}
	\end{center}
	\book{#2}
	\author{#3}

	\addcontentsline{toc}{subsection}{\textbf{#2} -- #3}
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


\newcommand{\includebook}[1]{
	\input{#1}
	\setcounter{parts}{0}
	\newpage
}
