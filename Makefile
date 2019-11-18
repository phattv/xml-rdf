gen:
	xsltproc cinema.xsl cinema.xml > index.html

open:
	open -a "Google Chrome" index.html