\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dec}[2025/03/24 Digital Equipment Corporation]
\usepackage{ragged2e}
\LoadClass[9pt,twoside]{extbook}
\usepackage[T1]{fontenc}
\usepackage[a5paper,inner=0.8in,outer=0.5in,top=0.8in,bottom=0.8in]{geometry}
\usepackage{fancyhdr}
\usepackage[none]{hyphenat}
\usepackage{array}
\usepackage{palatino}
\usepackage{graphicx}
\usepackage{titlesec}
\usepackage{float}
\usepackage[font=default,labelfont=bf,justification=raggedright]{caption}
\usepackage{tabularx}
\usepackage{multirow}
\usepackage{hyperref}
\usepackage{keystroke}
\usepackage{fancyvrb}
\usepackage{enumitem}
\usepackage{environ}
\usepackage{caption}
\usepackage{longtable}
\usepackage[utf8]{inputenc}
\usepackage{pmboxdraw}
\usepackage{xparse}
\usepackage{xstring}

\setlist{nosep}
\setlist{parsep=0em, itemsep=0.5em,topsep=-0.8em}

\newcommand{\figlabel}{\arabic{figure}}
\newcommand{\tbllabel}{\arabic{figure}}


\hypersetup{
    colorlinks,
    citecolor=blue,
    filecolor=blue,
    linkcolor=blue,
    urlcolor=blue
}
\raggedbottom

\renewcommand{\arraystretch}{1.3}

\DeclareCaptionFormat{default}{\raggedright\fontfamily{phv}\selectfont\textbf{#1#2#3}\par}

\renewcommand{\headrulewidth}{0mm}


\sloppy
\pagestyle{empty}
\pagestyle{fancy}

\setlength{\parskip}{0.5\baselineskip}
\setlength{\parindent}{0pt}

\newcommand{\uchapter}[1]{\chapter*{#1}
\addcontentsline{toc}{chapter}{\protect\numberline{}#1}}

\newcommand{\usection}[1]{\section*{#1}
\addcontentsline{toc}{chapter}{\protect\numberline{}#1}}

\newcommand{\usubsection}[1]{\subsection*{#1}
\addcontentsline{toc}{section}{\protect\numberline{}#1}}

\newcommand{\usubsubsection}[1]{\subsubsection*{#1}
\addcontentsline{toc}{subsection}{\protect\numberline{}#1}}

\def\@pubmonth{}
\newcommand{\pubmonth}[1]{
	\def\@pubmonth{#1}}

\def\@pubyear{}
\newcommand{\pubyear}[1]{
	\def\@pubyear{#1}}

\def\@product{}
\newcommand{\product}[1]{
	\def\@product{#1}}


\def\@ordernumber{}
\newcommand{\ordernumber}[1]{
	\def\@ordernumber{#1}}

\def\@address{}
\newcommand{\address}[1]{
	\def\@address{#1}}

\fancypagestyle{preface} {
	\fancyhf{}
	\fancyfoot[LE]{\small\fontfamily{phv}\selectfont \textbf{\thepage}}
	\fancyfoot[RO]{\small\fontfamily{phv}\selectfont \textbf{\thepage}}
}

\fancypagestyle{main} {
	\fancyhf{}
	\fancyfoot[LE]{\small\fontfamily{phv}\selectfont \textbf{\thepage} \hspace{1em} \@product \hspace{1pt} \@title}
	\fancyfoot[RO]{\small\fontfamily{phv}\selectfont \@product \hspace{1pt} \@title \hspace{1em} \textbf{\thepage}}
}

\fancypagestyle{plain}{%
  	\fancyhf{}%
	\fancyfoot[LE]{\small\fontfamily{phv}\selectfont \textbf{\thepage} \hspace{1em} \@product \hspace{1pt} \@title}
	\fancyfoot[RO]{\small\fontfamily{phv}\selectfont \@product \hspace{1pt} \@title \hspace{1em} \textbf{\thepage}}
  	\renewcommand{\headrulewidth}{0pt}% Line at the header invisible
  	\renewcommand{\footrulewidth}{0pt}% Line at the footer visible
}

\hyphenation{none}



\def\@titlepicture{titles/blank}
\newcommand{\titlepicture}[1]{
	\def\@titlepicture{#1}}

\renewcommand{\maketitle}{
		\pagenumbering{roman}
		\raggedright
		\thispagestyle{empty}
		\vspace*{1em}
		{\fontfamily{phv}\selectfont
		\Huge
		\textbf{\@product}\\
		\textbf{\@title}\par
		\vspace{20pt}
		\large
		Order Number \@ordernumber\par
		\vspace{2em}
%		\ifx{\@titlepicture}
		\includegraphics[width=0.8\textwidth]{\@titlepicture}\par
%		\fi
		\vspace{2em}
		\textbf{\@author}\\
		\textbf{\@address}
	}
	\newpage
	\boilerplate
}

\newcommand{\boilerplate}{%
	\justifying
	\setlength{\parindent}{0pt}
	\thispagestyle{empty}
	\footnotesize
	\noindent\rule{\textwidth}{1.0pt}\\
	\textbf{{\@pubmonth} {\@pubyear}}

	\par\noindent\rule{10em}{0.8pt}\\
	The information in this document is subject to change without notice and should not be construed as a commitment by Digital Equipment Corporation.

	Digital Equipment Corporation assumes no responsibility for any errors that may appear in this document.

	The software, if any, described in this document is furnished under a license and may be used or copied only in accordance with the terms of
	such license. No responsibility is assumed for the use or reliability of software or equipment that is not supplied by Digital Equipment Corporation
	or its affiliated companies.

	\par\noindent\rule{10em}{0.8pt}\\
	Copyright {\copyright}{\@pubyear} by Digital Equipment Corporation.

	All Rights Reserved.\\
	Printed in U.S.A.

	\par\noindent\rule{10em}{0.8pt}\\
	The READER'S COMMENTS form on the last page of this document requests the user's critical evaluation to
	assist in preparing future documentation.

	The following are trademarks of Digital Equipment Corporation:

	\begin{tabular}{ m{3.5cm} m{3.5cm} l}
	DEBET 			& DIBOL 			& ThinWire \\
	DEC				& MASSBUS			& ULTRIX-32 \\
	DECconnect		& MicroVAX			& ULTRIX-32m \\
	DECmate			& MicroVMS			& UNIBUS \\
	DECnet			& PDP				& VAX \\
	DECUS			& P/OS				& VAXcluster \\
	DECwriter		& Professional		& VAXstation \\
	DELNI			& Q-bus				& VMS \\
	DEMPR			& Rainbow			& VT \\
	DEQNA			& RSTS				& Work Processor \\
	DESTA			& RSX				& \\
	DEUAN			& RT				& \raisebox{-0.35\height}{\includegraphics[height=10pt]{logos/digital}} \textsuperscript{TM} \\

	\end{tabular}

	{
		\raggedleft
		\hfill ML-S857
	}
	
	FCC NOTICE: The equipment described in this manual generates, uses, and may emit radio frequency
energy. The equipment has been type tested and found to comply with the limits for a Class A Computing
device pursuant to Subpart J of Part 15 of FCC Rules, which are designed to provide reasonable protection
against such radio frequency interference when operated in a commercial environment. Operation of this
equipment in a residential area may cause interference, in which case the user at his own expense may be
required to take measures to correct the interference.

	\noindent\rule{\textwidth}{1.0pt}\\

	\normalsize
	\newpage
}

\titleformat{\chapter}{\raggedleft\fontfamily{phv}\selectfont\bfseries\huge}{}{1.0em}{}[\hrule]
\titlespacing{\chapter}{0pc}{0pc}{\baselineskip}


\titleformat{\section}{\raggedright\fontfamily{phv}\selectfont\bfseries\huge}{}{0.0em}{}[]
\titlespacing{\section}{0em}{0em}{0em}

\titleformat{\subsection}{\raggedright\fontfamily{phv}\selectfont\bfseries}{}{0.0em}{}[]
\titlespacing{\subsection}{0em}{0em}{0em}

\titleformat{\subsubsection}{\raggedright\fontfamily{phv}\selectfont\bfseries}{}{0.0em}{}[]
\titlespacing{\subsubsection}{0em}{0em}{0em}

\newcommand{\fig}[3][1.0]{\begin{figure}[H]
\caption{#3}
\begin{center}
\makebox[#1\textwidth][c]{%
	\IfFileExists{fig/#2.png}{%
		\includegraphics[width=#1\textwidth]{fig/#2}
	}{
		\textbf{MISSING GRAPHIC #2}
	}
}
\end{center}
\end{figure}
\label{figure:\figlabel}
}

\newcommand{\howtoorder}{%
	\newpage
	\pagestyle{empty}
	\vspace*{1cm}
	\begin{center}
		\textbf{HOW TO ORDER}

		\textbf{ADDITIONAL DOCUMENTATION}
	\end{center}
	\raggedright

	\begin{tabularx}{\linewidth}{p{2.5cm} p{2cm} p{5.5cm}}
	\hline
	\textbf{From} & \textbf{Call} & \textbf{Write} \\
	\hline


	\raggedright Alaska, Hawaii, or New Hampshire 				&		603-884-6660			& \multirow{2}{\textwidth}{\vfill \raggedright Digital Equipment Corporation\newline P.O. Box CS2008\newline Nashua, NH 03061} \\
	\raggedright Rest of U.S.A and Pierto Rico*					&		800-258-1710 \\
	\multicolumn{3}{m{\linewidth}}{* Prepaid orders from Puerto Rico must be placed with DIGITAL's local subsidiary (0809-754-7575)} \\
	\hline
	Canada											&		800-267-6219 (for software documentation) 		& \multirow{2}{\textwidth}{\vfill\raggedright Digital Equipment of Canada Ltd.\newline 100 Herzberg Road\newline Kanata, Ontario, Canada K2K 2A6\newline Attn: Direct Order desk} \\
	\vspace{0.5em}\\
													&		613-592-5111 (for hardware documentation) \\
	\hline
	\raggedright Internal orders (for Software documentation)    & - 			&  {\raggedright Software Distribution Center (SDC)\newline Digital Equipment Corporation\newline Westminster, MA 01473} \\
	\raggedright Internal orders (for hardware documentation)	& 617-234-4323 	& {\raggedright Publishing \& Circulation Serv. (P{\&}CS)\newline NR03-1/W3\newline Digital Equipment Corporation\newline Northboro, MA 01532} \\
	\hline




	\end{tabularx}
}

\newcommand{\toc}{%
\pagestyle{preface}
\begingroup
\setlength{\parskip}{0.5em}
\let\clearpage\relax
\tableofcontents
\thispagestyle{preface}
\vspace{1em}
\subsubsection*{Figures}
\listoffigures
\thispagestyle{preface}
\vspace{1em}
\subsubsection*{Tables}
\listoftables
\thispagestyle{preface}
\endgroup
}

\makeatletter
\renewcommand\listoffigures{%
        \@starttoc{lof}%
}
\makeatother

\makeatletter
\renewcommand\listoftables{%
        \@starttoc{lot}%
}
\makeatother


\newcommand{\console}{{\tt {>}{>}{>}}\ }

\newcommand{\pdf}[1]{\href{#1.pdf}{#1}}

\captionsetup{skip=0pt}
\captionsetup{font=large}

\newenvironment{ttfig}[1]{%
\VerbatimEnvironment
\begin{figure}[H] 
\caption{#1}
\label{figure:\figlabel}
\small
\fontfamily{lmtt}\selectfont\bfseries
\begin{Verbatim} 
}{%
\end{Verbatim}
\end{figure}
}




\NewEnviron{tbl}[2]{
	\begin{table}[H]
	\label{table:tbllabel}
	\captionsetup{font=Large}
	\caption{#1}
	\small
	\begin{tabularx}{\textwidth}{#2}
	\hline
	\BODY
	\hline
	\end{tabularx}
	\end{table}
}

\NewEnviron{tblcont}[2]{
	\begin{table}[H]
	\addtocounter{table}{-1}
	\renewcommand\thetable{\arabic{table} (Cont.)}
	\captionsetup{font=Large}
	\caption{#1}
	\small
	\begin{tabularx}{\textwidth}{#2}
	\hline
	\BODY
	\hline
	\end{tabularx}
	\end{table}
}


\newcommand{\figref}[1]{\hyperref[figure:#1]{Figure #1}}
\newcommand{\tabref}[1]{\hyperref[table:#1]{Table #1}}

\newcommand{\caution}[1]{{\fontfamily{phv}\selectfont\textbf{CAUTION:}}\hspace*{1em}\textit{#1}}
\newcommand{\note}[1]{{\fontfamily{phv}\selectfont\textbf{NOTE:}}\hspace*{1em}\textit{#1}}

\newcommand{\para}[1]{%
\StrCount{#1}{.}[\@s]%
\IfEq{\@s}{0}{\hyperlink{chapter.#1}{Chapter #1}}{}%
\IfEq{\@s}{1}{\hyperlink{section.#1}{Paragraph #1}}{}%
\IfEq{\@s}{2}{\hyperlink{subsection.#1}{Paragraph #1}}{}%
\IfEq{\@s}{3}{\hyperlink{subsubsection.#1}{Paragraph #1}}{}%
}
			
\newcommand{\npara}[1]{%
\StrCount{#1}{.}[\@s]%
\IfEq{\@s}{0}{\hyperlink{chapter.#1}{#1}}{}%
\IfEq{\@s}{1}{\hyperlink{section.#1}{#1}}{}%
\IfEq{\@s}{2}{\hyperlink{subsection.#1}{#1}}{}%
\IfEq{\@s}{3}{\hyperlink{subsubsection.#1}{#1}}{}%
}
