%%
%% This is file `tex/myslides.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% src/templates.dtx  (with options: `all')
%% src/myslides.dtx  (with options: `myslides')
%% 
%% Copyright (C) 2009  by Lluis Vilanova
%% 
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either
%% version 1.2 of this license or (at your option) any later
%% version. The latest version of this license is in:
%% 
%%    http://www.latex-project.org/lppl.txt
%% 
%% and version 1.2 or later is part of all distributions of
%% LaTeX version 1999/12/01 or later.
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myslides}[2007/05/28 v0.2 My rather standard rubber slides class]
\RequirePackage{mycommon}
\graphicspath{{templates/extra/logos/}}
\newcommand{\startbackup@cb}{}
\AtEndDocument{%
  \startbackup@cb
}
\newcommand{\@theme}{Boadilla}
\DeclareOptionX[myslides]{theme}{%
  \renewcommand{\@theme}{#1}
  \renewcommand{\@themeopts}{}
}
\newcommand{\@themeopts}{secheader}
\DeclareOptionX[myslides]{themeopts}{\renewcommand{\@themeopts}{#1}}
\newcommand{\@cover}{transparent}
\DeclareOptionX[myslides]{cover}{\renewcommand{\@cover}{#1}}
\newcommand{\@innertheme}{default}
\DeclareOptionX[myslides]{innertheme}{\renewcommand{\@innertheme}{#1}}
\newcommand{\@outertheme}{default}
\DeclareOptionX[myslides]{outertheme}{\renewcommand{\@outertheme}{#1}}
\newcommand{\@colortheme}{default}
\DeclareOptionX[myslides]{colortheme}{\renewcommand{\@colortheme}{#1}}
\newcommand{\@fonttheme}{default}
\DeclareOptionX[myslides]{fonttheme}{\renewcommand{\@fonttheme}{#1}}
\newcommand{\@tplfootline}{author title page}
\DeclareOptionX[myslides]{tplfootline}{\renewcommand{\@tplfootline}{#1}}
\newcommand{\@tplcaption}{\insertcaption}
\DeclareOptionX[myslides]{tplcaption}{\renewcommand{\@tplcaption}{#1}}
\newcommand{\@tplitems}{circle}
\DeclareOptionX[myslides]{tplitems}{\renewcommand{\@tplitems}{#1}}
\AtEndOfClass{%
  \usetheme[\@themeopts]{\@theme}%
  \setbeamercovered{\@cover}%
  \useinnertheme{\@innertheme}%
  \useoutertheme{\@outertheme}%
  \usecolortheme{\@colortheme}%
  \usefonttheme{\@fonttheme}%
  \setbeamertemplate{footline}[\@tplfootline]%
  \setbeamertemplate{caption}{\@tplcaption}%
  %\setlength{\belowcaptionskip}{0cm}
  \setbeamertemplate{itemize items}[\@tplitems]%
}
\define@choicekey+[myslides]{myslides.cls}{notes}{right,left,bottom,top,interleaved}[interleaved]%
  {\newcommand{\@notes}{#1}}%
  {\PackageError{myslides}{Value `#1' not allowed in option `notes'}}
\AtEndOfClass{%
  \ifdefined\@notes%
    \RequirePackage{pgfpages}
    \ifthenelse{\equal{\@notes}{interleaved}}%
      {\setbeameroption{show notes}}%
      {\setbeameroption{show notes on second screen=\@notes}}%
  \fi%
}
\DeclareOptionX[myslides]{handout}{
  \PassOptionsToClass{handout}{beamer}
  \AtEndOfClass{
    \RequirePackage{pgfpages}
    \pgfpagesdeclarelayout{4 on 1 with notes} {
      \edef\pgfpageoptionheight{\the\paperheight}
      \edef\pgfpageoptionwidth{\the\paperwidth}
      \edef\pgfpageoptionborder{0pt}
    }
    {
      \pgfpagesphysicalpageoptions
      {%
        logical pages=8,%
        physical height=\pgfpageoptionheight,%
        physical width=\pgfpageoptionwidth,%
        % last logical shipout=3%
        last logical shipout=4%
      }
      \pgfpageslogicalpageoptions{1}
      {%
        scale=.70,
        center=\pgfpoint{.25\pgfphysicalwidth}{.875\pgfphysicalheight}%
      }%
      \pgfpageslogicalpageoptions{2}
      {%
        scale=.70,
        center=\pgfpoint{.25\pgfphysicalwidth}{.625\pgfphysicalheight}%
      }%

      \pgfpageslogicalpageoptions{3}
      {%
        scale=.70,
        center=\pgfpoint{.25\pgfphysicalwidth}{.375\pgfphysicalheight}%
      }%
      \pgfpageslogicalpageoptions{4}
      {%
        scale=.70,
        center=\pgfpoint{.25\pgfphysicalwidth}{.125\pgfphysicalheight}%
      }%
      \pgfpageslogicalpageoptions{5}
      {%
        border shrink=\pgfpageoptionborder,%
        resized width=.5\pgfphysicalwidth,%
        resized height=.3333\pgfphysicalheight,%
        center=\pgfpoint{.75\pgfphysicalwidth}{.875\pgfphysicalheight},%
        copy from=5
      }%
      \pgfpageslogicalpageoptions{6}
      {%
        border shrink=\pgfpageoptionborder,%
        resized width=.5\pgfphysicalwidth,%
        resized height=.3333\pgfphysicalheight,%
        center=\pgfpoint{.75\pgfphysicalwidth}{.625\pgfphysicalheight},%
        copy from=6
      }%
      \pgfpageslogicalpageoptions{7}
      {%
        border shrink=\pgfpageoptionborder,%
        resized width=.5\pgfphysicalwidth,%
        resized height=.3333\pgfphysicalheight,%
        center=\pgfpoint{.75\pgfphysicalwidth}{.375\pgfphysicalheight},%
        copy from=7
      }%
      \pgfpageslogicalpageoptions{8}
      {%
        border shrink=\pgfpageoptionborder,%
        resized width=.5\pgfphysicalwidth,%
        resized height=.3333\pgfphysicalheight,%
        center=\pgfpoint{.75\pgfphysicalwidth}{.125\pgfphysicalheight},%
        copy from=8
      }%
      \AtBeginDocument{
        \newbox\notesbox
        \setbox\notesbox=\vbox{
          \hsize=\paperwidth
          \vskip-1in\hskip-1in\vbox{
            \vskip1cm
            Notes\vskip1cm
            \hrule width\paperwidth\vskip1cm
            \hrule width\paperwidth\vskip1cm
            \hrule width\paperwidth\vskip1cm
            \hrule width\paperwidth\vskip1cm
            \hrule width\paperwidth\vskip1cm
            \hrule width\paperwidth\vskip1cm
            \hrule width\paperwidth}
        }
        \pgfpagesshipoutlogicalpage{5}\copy\notesbox
        \pgfpagesshipoutlogicalpage{6}\copy\notesbox
        \pgfpagesshipoutlogicalpage{7}\copy\notesbox
        \pgfpagesshipoutlogicalpage{8}\copy\notesbox
      }
    }
    \pgfpagesuselayout{4 on 1 with notes}[a4paper,border shrink=5mm]
  }
}
\DeclareOptionX[myslides]{navigation}{%
  \newcommand{\@navigation}{}%
}
\AtEndOfClass{%
  \ifdefined\@navigation%
    % empty
  \else
    \setbeamertemplate{navigation symbols}{ }%
  \fi%
}
\DeclareOptionX[myslides]{outlinesec}{%
  \AtEndOfClass{%
    \AtBeginSection[]%
    {%
      \begin{frame}<beamer>%
        \frametitle{Outline}%
        \tableofcontents[currentsection,subsectionstyle=show/show/hide]%
      \end{frame}%
    }%
  }%
}
\DeclareOptionX[myslides]{outlinesubsec}{%
  \AtEndOfClass{%
    \AtBeginSubsection[]%
    {%
      \begin{frame}<beamer>%
        \frametitle{Outline}%
        \tableofcontents[currentsection,subsectionstyle=show/shaded/hide]%
      \end{frame}%
    }%
  }%
}
\DeclareOptionX*{%
  \PassOptionsToClass{\CurrentOption}{beamer}%
}%
\ProcessOptionsX*[myslides]
\LoadClass[xcolor=pst,dvips]{beamer}
\RequirePackage{pstricks}
\newcommand{\inserttitlepage}[0]{%
  {%
    \setbeamertemplate{background}{}
    \frame[plain]{\titlepage}%
    \addtocounter{framenumber}{-1}
  }%
}
\newcommand{\insertoutlinepage}[0]{%
  \section[Outline]{ }%
  \begin{frame}%
    %\frametitle{Outline}
    %\tableofcontents[pausesections,hideallsubsections]
    %\tableofcontents[hideallsubsections]
    \tableofcontents%
  \end{frame}%
}
\renewcommand{\red}[1]{\textcolor{red}{\bf{#1}}}
\renewcommand{\blue}[1]{\textcolor{blue}{\bf{#1}}}
\renewcommand{\green}[1]{\textcolor{green}{\bf{#1}}}
\newcommand{\orange}[1]{\textcolor{orange}{\bf{#1}}}
\newcounter{@animationidx}
\newcommand{\insertanimationidx}[1][\arabic]{%
  \setcounter{@animationidx}{\insertpagenumber}%
  \addtocounter{@animationidx}{-\insertframestartpage}%
  \addtocounter{@animationidx}{1}%
  #1{@animationidx}
}
\newcounter{@animationendidx}
\newcommand{\insertanimationendidx}[1][\arabic]{%
  \setcounter{@animationendidx}{\insertframeendpage}%
  \addtocounter{@animationendidx}{-\insertframestartpage}%
  \addtocounter{@animationendidx}{1}%
  #1{@animationendidx}
}
\newcommand{\startbackup}{%
  \xdef\@totalframenumber{\insertframenumber}%
}
\renewcommand{\startbackup@cb}{%
  \setcounter{framenumber}{\@totalframenumber}
}
\newenvironment{finish}%
{%
  \begin{frame}[plain]%
}%
{%
  \end{frame}%
  \addtocounter{framenumber}{-1}%
  \aftergroup\startbackup%
}
\endinput
%%
%% End of file `tex/myslides.cls'.
