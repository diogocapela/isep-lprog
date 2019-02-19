# XPath 1.0
xsltproc rel2html.xslt ../relat/Relatorio.xml > output.html

# XPath 1.0 2.0 3.0
saxon -xsl:xml2html.xslt -s:../xml/Seguradora.xml
