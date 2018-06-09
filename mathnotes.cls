\NeedsTeXFormat{LaTeX2e}
\ProvidesPackage{mathnotes}[2018/06/07]

\LoadClass[a4paper]{article}
\RequirePackage{
%,amsmath
,amsthm
,amsfonts
,amssymb
,extarrows
}
%Other packages
\RequirePackage{
	enumerate
	%,nicefrac % Formats in-line fractions to look nicer (such as 1/3).
	,pgf % Allows pictures to be defined and drawn in LaTeX.
	,geometry % For defining page geometry, such as margins, header, etc.
	,fancyhdr  %
	,graphicx % Allows images to be included (using \includegraphics).
	%,pdfpages % Allows entire PDF files to be inserted into the final document.
	%,refstyle % Combined with refstyle.def, defines specialized label and reference commands.
	,hyperref % Makes references clickable.
}

\RequirePackage[utf8]{inputenc}
\RequirePackage{times,euler,tikz-cd,luatexja-fontspec,fontspec}
\setmainjfont{FandolSong}
\setsansjfont{FandolKai}
\newcommand{\kcmc}[1]{\settowidth{\labelwidth}{#1}
	\underline{\,\hspace{2.6cm}\hspace{-0.5\labelwidth}\mbox{\textbf{#1}}\hspace{2.6cm}\hspace{-0.5\labelwidth}}
}
\newcommand{\kcdm}[1]{\settowidth{\labelwidth}{#1}
	\underline{\,\hspace{1.5cm}\hspace{-0.5\labelwidth}\mbox{\textbf{#1}}\hspace{1.5cm}\hspace{-0.5\labelwidth}}
}
\newcommand{\ksxs}[1]{\settowidth{\labelwidth}{#1}
	\underline{\,\hspace{1.7cm}\hspace{-0.5\labelwidth}\mbox{\textbf{#1}}\hspace{1.7cm}\hspace{-0.5\labelwidth}}
}
\newcommand*{\testyear}[2]{\gdef\@testyear{#1～#2}}
%\newcommand*{\rtestyear}[1]{\gdef\@rtestyear{#1}}
\renewcommand{\maketitle}{\begin{titlepage}%
		\begin{center}
			{\LARGE
				复旦大学数学科学学院\par
				{\@testyear}学年第二学期研究生期末考试\vspace{2mm}\par% $\Box$  \textbf{A 卷} %\hspace{1cm}$\Box$ \textbf{B 卷}
			}
		\end{center}
		\noindent\large
		\textbf{课程名称}：\kcmc{英语研究论文写作}\hspace{2mm}\textbf{课程代码}：\kcdm{MAST611111.10}\\
		\textbf{开课院系}：\kcmc{外文学院}\hspace{2mm}\textbf{考试形式}：\ksxs{课程论文}\\
		\textbf{姓\ \ 名}：\kcdm{\@author}\hspace{2mm}
		\textbf{学\ \ 号}：\kcdm{17210180015}\hspace{2mm}
		\textbf{专\ \ 业}：\kcdm{基础数学}
		\begin{center}
			{\LARGE \@title \par}%
		\end{center}
\end{titlepage}}
%New math commands
\renewcommand{\hom}{\text{Hom}}
\newcommand{\spec}{\text{Spec }}
\DeclareMathOperator{\ext}{Ext}
\newcommand{\id}[1]{\text{id}_{#1}}
\newcommand{\op}[1]{#1^{\text{op}}}
\newcommand{\subideal}{\vartriangleleft}
\newcommand{\ff}[1]{\mathfrak{#1}}
\newcommand{\ann}{\text{ann}}
\newcommand{\sheaf}[1]{\mathcal{O}_{#1}}
\newcommand{\pica}{\text{Pic}}
%\newcommand{\res}{\text{Res}}
\DeclareMathOperator*{\res}{Res}
%\newcommand{\im}{\text{Im}}
\DeclareMathOperator*{\im}{Im}
%\newcommand{\vol}{\text{Vol}}
\DeclareMathOperator*{\vol}{Vol}
\DeclareMathOperator*{\hodge}{*}
\DeclareMathOperator*{\pch}{Ch^{+}}
\DeclareMathOperator{\gr}{Gr}
\DeclareMathOperator{\hyper}{\mathbb{H}}
\DeclareMathOperator{\hdg}{Hdg}
\DeclareMathOperator{\clq}{cl_\mathbb{Q}}
\DeclareMathOperator{\Char}{char}
\DeclareMathOperator{\cl}{cl}
\DeclareMathOperator{\Hom}{\mathcal{H}om}
\DeclareMathOperator{\rank}{rank}