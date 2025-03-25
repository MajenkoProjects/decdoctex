\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{decsectional}[2025/03/24 Digital Equipment Corporation]
\LoadClass{dec}

\setcounter{secnumdepth}{5}

\titleformat{\chapter}[display]{\raggedleft\fontfamily{phv}\selectfont\bfseries\huge}{\Large Chapter \thechapter}{-0.5em}{}[\hrule]
\titlespacing{\chapter}{0pc}{0pc}{0pc}


\titleformat{\section}{\raggedright\fontfamily{phv}\selectfont\bfseries\huge}{\thesection \hspace{1em}}{0.0em}{}[]
\titlespacing{\section}{0em}{0em}{0em}

\titleformat{\subsection}{\raggedright\fontfamily{phv}\selectfont\bfseries}{\thesubsection\hspace{1em}}{0.0em}{}[]
\titlespacing{\subsection}{0em}{0em}{0em}

\titleformat{\subsubsection}{\raggedright\fontfamily{phv}\selectfont\bfseries}{\thesubsubsection\hspace{1em}}{0.0em}{}[]
\titlespacing{\subsubsection}{0em}{0em}{-1em}



\renewcommand{\boilerplate}{%
    \justifying
    \setlength{\parindent}{0pt}
    \thispagestyle{empty}
    \footnotesize

	\vspace*{4cm}

    First Edition, {\@pubmonth} {\@pubyear}

	Copyright \copyright{\@pubyear} by Digital Equipment Corporation.\\
	All Rights Reserved.\\
	Printed in U.S.A.

    The information in this document is subject to change without notice and should not be construed as a commitment by Digital Equipment Corporation.

    Digital Equipment Corporation assumes no responsibility for any errors that may appear in this document.

    The software, if any, described in this document is furnished under a license and may be used or copied only in accordance with the terms of
    such license. No responsibility is assumed for the use or reliability of software or equipment that is not supplied by Digital Equipment Corporation
    or its affiliated companies.

    The following are trademarks of Digital Equipment Corporation:

    \begin{tabular}{ m{3.5cm} m{3.5cm} l}

\raisebox{-0.35\height}{\includegraphics[height=10pt]{logos/digital}} \textsuperscript{TM} & EDCS & RSTS \\
BASEWAY & FMS & RSX \\
BIBus & MASSBUS & RT \\
COMPACTape & Micro/RSTS & ThinWire \\
DEC & MicroPDP-11 & UNIBUS \\
DECconnect & Micro/RSX & VAX \\
DEC/MAP & MicroVAX II & VAXeluster \\
DECmate & PDP & VAXstation II \\
DECnet & P/OS & VAXstation II/GPX \\
DECUS & Professional & VMS \\
DECwriter & Q-Bus & VT \\
DIBOL & Rainbow & \\
    \end{tabular}


    \normalsize
    \newpage
}

\let\Chaptermark\chaptermark
\def\chaptermark#1{\def\Chaptername{#1}\Chaptermark{#1}}

\fancypagestyle{preface} {
    \fancyhf{}
    \fancyfoot[LE]{\small\fontfamily{phv}\selectfont \textbf{\thepage}}
    \fancyfoot[RO]{\small\fontfamily{phv}\selectfont \textbf{\thepage}}
}

\fancypagestyle{main} {
    \fancyhf{}
    \fancyfoot[LE]{\small\fontfamily{phv}\selectfont \textbf{\thechapter-\thepage} \hspace{1em} \@product \hspace{1pt} \@title}
    \fancyfoot[RO]{\small\fontfamily{phv}\selectfont \Chaptername \hspace{1em} \textbf{\thechapter-\thepage}}
}

\fancypagestyle{plain}{%
    \fancyhf{}%
    \fancyfoot[LE]{\small\fontfamily{phv}\selectfont \textbf{\thechapter-\thepage} \hspace{1em} \@product \hspace{1pt} \@title}
    \fancyfoot[RO]{\small\fontfamily{phv}\selectfont \Chaptername \hspace{1em} \textbf{\thechapter-\thepage}}
    \renewcommand{\headrulewidth}{0pt}% Line at the header invisible
    \renewcommand{\footrulewidth}{0pt}% Line at the footer visible
}


