in Vim
/* pipe tbl to groff */
:w|!tbl %|groff -ms -Tpdf > ports_and_iptables.pdf

/* pipe pic into groff */
:!pic git_cheatsheet.ms | groff -mspdf -Tpdf > git_cheatsheet.pdf
