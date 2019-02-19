# Comando Para Validar:

xmllint --noout --schema xsd/Seguradora.xsd xml/Seguradora.xml

# Comando Para transformar em HTML:

xsltproc xml2html/xml2html.xslt xml/Seguradora.xml > xml2html/output.html

saxon -xsl:xml2html/xml2html.xslt -s:xml/Seguradora.xml -o:xml2html/output.html

# Comando Para transformar em TXT:

xsltproc xml2txt/xml2txt.xslt xml/Seguradora.xml > xml2txt/output.txt

# XPath 1.0
xsltproc rel2html.xslt ../relat/Relatorio.xml > output.html

# XPath 1.0 2.0 3.0
saxon -xsl:xml2html.xslt -s:../xml/Seguradora.xml
