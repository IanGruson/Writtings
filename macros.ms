.defcolor lightblue #92b4f3
.defcolor red #d05b5b

.de BL
.IP \(bu 2
..

.de EX
.br
.gcolor red
.BI Exemple : 
.br
.de eg end
.	gcolor red
	\\\\$1
.	br
.	gcolor
.end
.gcolor
..

.de cm
.br
.PP
.gcolor blue
$ \\$1
.gcolor
.br
..
