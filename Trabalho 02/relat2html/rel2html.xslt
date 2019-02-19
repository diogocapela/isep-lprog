<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
                <title>Relatório</title>
                <style>
                    .footer img {
                        max-width: 100%;
                    }
                </style>
            </head>
            <body>
                <div class="container">
                <h1 style="color:blue;margin-left:30px;">
                    LPROG relatório de
                    <xsl:value-of select="relatório/páginaRosto/tema" />
                </h1>
                <h2>Grupo</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th style="text-align:left">Nome</th>
                        <th style="text-align:left">Número</th>
                        <th style="text-align:left">Mail</th>
                    </tr>
                    <xsl:for-each select="relatório/páginaRosto/autor">
                        <tr>
                            <td>
                                <xsl:value-of select="nome" />
                            </td>
                            <td>
                                <xsl:value-of select="número" />
                            </td>
                            <td>
                                <xsl:value-of select="mail" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
                <h3>
                    <xsl:value-of select="relatório/corpo/introdução/@tituloSecção"></xsl:value-of>
                </h3>
                <xsl:for-each select="relatório/corpo/introdução/parágrafo">
                    <a>
                        <xsl:value-of select="."></xsl:value-of><br/>
                    </a>
                </xsl:for-each>
                <h4>
                    <xsl:value-of select="relatório/corpo/outrasSecções/análise/@tituloSecção"></xsl:value-of>
                </h4>
                <xsl:for-each select="relatório/corpo/outrasSecções/análise/parágrafo">
                    <a>
                        <xsl:value-of select="."></xsl:value-of><br/>
                    </a>
                </xsl:for-each>
                <h4>
                    <xsl:value-of select="relatório/corpo/outrasSecções/linguagem/@tituloSecção"></xsl:value-of>
                </h4>
                <xsl:for-each select="relatório/corpo/outrasSecções/linguagem/parágrafo">
                    <a>
                        <xsl:value-of select="."></xsl:value-of><br/>
                    </a>
                </xsl:for-each>
                <h4>
                    <xsl:value-of select="relatório/corpo/outrasSecções/transformações/@tituloSecção"></xsl:value-of>
                </h4>
                <xsl:for-each select="relatório/corpo/outrasSecções/transformações/parágrafo">
                    <a>
                        <xsl:value-of select="."></xsl:value-of><br/>
                    </a>
                </xsl:for-each>
                <h3>
                    <xsl:value-of select="relatório/corpo/conclusão/@tituloSecção"></xsl:value-of>
                </h3>
                <xsl:for-each select="relatório/corpo/conclusão/parágrafo">
                    <a>
                        <xsl:value-of select="."></xsl:value-of><br/>
                    </a>
                </xsl:for-each>
                <h3>
                    <xsl:value-of select="relatório/corpo/referências/@tituloSecção"></xsl:value-of>
                </h3>
                <xsl:for-each select="relatório/corpo/referências/refBibliográfica">
                    <p>
                        <xsl:attribute name="id">
                            <xsl:value-of select="@idRef"></xsl:value-of>
                        </xsl:attribute>
                        <span style="font-size: small;">
                            <font size="2">
                                <xsl:value-of select="título"></xsl:value-of>
                                ,
                            </font>
                            <font size="2">
                                <em>
                                    <xsl:value-of select="autor"></xsl:value-of>
                                    ,
                                </em>
                                &lt;
                                <xsl:value-of select="dataPublicação"></xsl:value-of>
                            </font>
                            <font size="2">&gt;.</font>
                        </span>
                    </p>
                </xsl:for-each>
                <h3>
                    <xsl:value-of select="relatório/anexos/@tituloSecção"></xsl:value-of>
                </h3>
                <xsl:for-each select="relatório/anexos/parágrafo">
                    <p>
                        <strong>
                            <xsl:value-of select="."></xsl:value-of><br/>
                        </strong>
                    </p>
                </xsl:for-each>
                <div class="footer">
                    <img alt="a description here">
                        <xsl:attribute name="src">
                            <xsl:value-of select="relatório/páginaRosto/logotipoDEI"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </div>
                </div>
                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous" />
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous" />
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous" />

            </body>
            
        </html>
    </xsl:template>
</xsl:stylesheet>