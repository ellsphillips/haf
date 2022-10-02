%% Start of file `recipes.cls'.
%% Copyright 2022 Elliott Phillips <elliott.phillips.dev@gmail.com>
%

\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{recipes}[2022/07/25 A LaTeX journal for all your foody adventures]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions \relax

\LoadClass[usepdftitle=false, xcolor=table]{beamer}

\RequirePackage[
	orientation = portrait,
	size = a0,
	scale = 1.4,
	debug
]{beamerposter}



\usepackage[utf8]{inputenc}
\usepackage[english]{babel}
\usepackage{marvosym}
\usepackage{ragged2e}
\usepackage[font=scriptsize, justification=justified]{caption}
\usepackage{lipsum}
\usepackage{nicefrac}
\usepackage{hyperref}
\usepackage{wrapfig}
\usepackage{multicol}
\usepackage[shortlabels]{enumitem}

\RequirePackage{environ}

\RequirePackage{etoolbox}
\RequirePackage{calc}
\usepackage{graphicx}
\usepackage[export]{adjustbox}
\usepackage{array}
\usepackage{varwidth}
\usepackage{epstopdf}
\usepackage{fontawesome}

\usepackage{tikz}
\usetikzlibrary{
	calc,
	positioning,
	shadows.blur,
	shadows,
	fadings,
	patterns,
	patterns.meta,
	decorations.pathreplacing,
	shapes.arrows,
	decorations.pathmorphing,
	decorations.markings,
	calendar,
	shapes,
	backgrounds,
	fit
}

\pgfdeclarelayer{background}
\pgfdeclarelayer{middle}
\pgfsetlayers{background,middle,main}



\RequirePackage{%
	lib/util/colour,
	lib/util/layout,
	lib/util/load,
	lib/util/props,
	lib/util/meta,
}

\RequirePackage{%
	lib/hoc/Page,
	lib/hoc/Rounded,
	lib/hoc/Tile,
	lib/hoc/Columns,
}

\RequirePackage{%
	lib/macros/Link,
	lib/macros/Spacer,
	lib/macros/Title,
}

\RequirePackage{%
	lib/components/Banner,
	lib/components/Details,
	lib/components/Summary,
	lib/components/Ingredients,
	lib/components/Steps,
}



\newcommand*{\fontdir}[1][fonts/]{\def\@fontdir{#1}}
\fontdir

\newfontfamily\fonttitle[
	Path=\@fontdir,
	UprightFont=*-Bold,
	ItalicFont=*-BoldItalic,
	BoldFont=*-Ultra,
	BoldItalicFont=*-UltraItalic,
	Scale=3,
]{Zabal}

\newfontfamily\fontmain[
	Path=\@fontdir,
	UprightFont=*-light,
	ItalicFont=*-light,
	BoldFont=*-bold,
	BoldItalicFont=*-bolditalic,
	Scale=1,
]{Averta}



\RequirePackage{xkeyval}

\newcounter{issue}
\DeclareOptionX{issue}{\setcounter{issue}{#1}}
\ExecuteOptionsX{issue=1}

\newif\ifrcpdevelopment
\DeclareOptionX{development}{\rcpdevelopmenttrue}

\ProcessOptionsX \relax

% ------------------------------------------------------------------------------
%
%% End of file `recipes.cls'.