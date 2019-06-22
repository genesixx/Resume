%----------------------------------------------------------------------------------------
%	CLASS OPTIONS AND REQUIRED PACKAGES
%----------------------------------------------------------------------------------------

\ProvidesClass{deedy-resume}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\usepackage[hmargin=1.20cm, vmargin=0.70cm, a4paper]{geometry} % Specifies horizontal and vertical page margins
\usepackage{hyperref} % Required for links

%----------------------------------------------------------------------------------------
%	COLORS
%----------------------------------------------------------------------------------------

\usepackage[usenames,dvipsnames]{xcolor} % Required for custom colors

\definecolor{primary}{HTML}{0F0A0A} % The primary document color for content text
\definecolor{headings}{HTML}{1770a2} % The color of the large sections
\definecolor{subheadings}{HTML}{1770a2}
\definecolor{secondary}{HTML}{1770a2} % The color of subsections and places worked/studied
\definecolor{lightsecondary}{HTML}{4086BA}
\definecolor{red}{HTML}{FF0000}
\definecolor{date}{HTML}{666666} % The color used for the Last Updated text at the top right

%----------------------------------------------------------------------------------------
%	FONTShttps://www.overleaf.com/project/5bb8708abf6def6dfae7d362
%----------------------------------------------------------------------------------------

\usepackage{fontspec} % Required for specifying custom fonts in XeLaTeX
\defaultfontfeatures{LetterSpace=0.7}
\linespread{1.05}
\setmainfont[Color=primary, Path = fonts/OpenSans/,BoldItalicFont=OpenSans-Italic,BoldFont=OpenSans-Regular,ItalicFont=OpenSans-LightItalic,SizeFeatures={Size=11}]{OpenSans-Light} % The primary font for content text; defines bold, italic and bold-italic as well

\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight} % The font used where \sfffamily is called



\newcommand{\hightlight}[1]{\color{secondary}\textbf{#1}}
%----------------------------------------------------------------------------------------
%	MAIN HEADING COMMAND
%----------------------------------------------------------------------------------------

\newcommand{\namesection}[2]{ % Defines the command for the main heading
\centering{ % Center the name
\fontsize{40pt}{60pt} % Font size
\color{secondary}
\fontspec[Path = fonts/OpenSans/]{OpenSans-Light}\selectfont #1 % Last name font
} \\[5pt] % Whitespace between the name and contact information
\centering{ % Center the contact information
\color{headings} % Use the headings color
\fontspec[Path = fonts/OpenSans/]{OpenSans-Regular}\fontsize{11pt}{14pt}\selectfont #2} % Contact information font
\noindent\makebox[\linewidth]{\color{secondary}\rule{\paperwidth}{0.4pt}} % Horizontal rule
\vspace{-5pt} % Reduce whitespace after the rule slightly
}

%----------------------------------------------------------------------------------------
%	SECTION TITLE STYLING AND SPACING
%----------------------------------------------------------------------------------------

\usepackage{titlesec} % Required for customizing section/subsection/etc titles

\titlespacing{\section}{0pt}{0pt}{0pt} % Removes the spacing around the main section titles
\titlespacing{\subsection}{0pt}{0pt}{0pt} % Removes the spacing around the subsections
\newcommand{\sectionspace}{\vspace{4.5pt}} % Defines a command to add a set amount of space after sections and subsections
\newcommand{\insectionspace}{\vspace{2pt}}
\titleformat{\section}{ % Customize the large section titles
\color{secondary}\scshape\fontspec[Path = fonts/OpenSans/]{OpenSans-Light}\fontsize{16pt}{24pt}\selectfont \raggedright\uppercase}{}{0em}{}

\titleformat{\subsection}{ % Customize the subsections and places worked/studied titles
\color{secondary}\fontspec[Path = fonts/OpenSans/]{OpenSans-Bold}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}

\newcommand{\runsubsection}[1]{ % Used for creating subsections where a description is required on the same line
\color{secondary}\fontspec[Path = fonts/OpenSans/]{OpenSans-Bold}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont}



\newcommand{\descript}[1]{ % Used for describing the subsection either on the same line or underneath
\color{lightsecondary}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{12pt}\selectfont {#1 \\} \normalfont}

\newcommand{\location}[1]{ % Used for specifying a duration and/or location under a subsection
\color{headings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

%----------------------------------------------------------------------------------------
%	SECTION TITLE STYLING AND SPACING
%----------------------------------------------------------------------------------------

\newenvironment{tightitemize} % Defines the tightitemize environment which modifies the itemize environment to be more compact
{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}