\ProvidesClass{resume}[2019/08/28 v0.1 Resume class]

\LoadClass[11pt,letterpaper]{article} % Font size and paper type
\usepackage[left=0.75in,top=0.5in,right=0.75in,bottom=0.5in]{geometry} % Document margins
\setlength{\parskip}{0.1em} 

\usepackage[parfill]{parskip} % Remove paragraph indentation
\usepackage{array} % Required for boldface (\bf and \bfseries) tabular columns
\usepackage{ifthen} % Required for ifthenelse statements

\pagestyle{empty} % Suppress page numbers

\usepackage[explicit]{titlesec}
\titleformat{\section}{\large\bf}{}{0em}{\MakeUppercase{#1}}[\hrule]
\titlespacing{\section}{0pt}{*1.5}{*1.2}

%-----------------------------------------------------------------------
%   HEADINGS COMMANDS: Commands for printing name and address
%-----------------------------------------------------------------------

\def \name#1{\def\@name{#1}} % Defines the \name command to set name
\def \@name {} % Sets \@name to empty by default
\def \address #1{\def \@address {#1}}
\def \contact #1{\def \@contact {#1}}

%------------------------------------------------------------------------
%   PRINT THE HEADING LINES
%------------------------------------------------------------------------

\let\ori@document=\document
\renewcommand{\document}{
  \ori@document  % Begin document
  \begingroup
    \hfil{\MakeUppercase{\huge\bf \@name}}\hfil
    \bigskip\break
  \endgroup
  \begin{minipage}[c]{0.6\linewidth}
    \raggedright
    \@address
  \end{minipage}%
  \begin{minipage}[c]{0.4\linewidth}
    \raggedleft
    \@contact
  \end{minipage}
}

% replace subsection for each individual items, prividing title and 
% optional, time
\newcommand{\rsub}[2][]{{\bf #2} \hfill {#1}\\}
