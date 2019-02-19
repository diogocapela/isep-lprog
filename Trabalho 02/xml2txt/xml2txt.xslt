<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" indent="no" omit-xml-declaration="yes"/>
    <xsl:template match="/">  

        <xsl:text>&#xA;================================================================================================================&#xA;&#xA;</xsl:text>
        <xsl:text>                              SEGURADORA: </xsl:text>
            <xsl:value-of select="seguradora/nome"/>
        <xsl:text>&#xA;&#xA;================================================================================================================&#xA;&#xA;</xsl:text> 

        <xsl:text>&#xA;&#xA;========================================================&#xA;</xsl:text> 
        <xsl:text>                          BARCOS</xsl:text> 
        <xsl:text>&#xA;========================================================&#xA;</xsl:text>       
            <xsl:for-each select="seguradora/barcos/barco">
                <xsl:text>Barco id: </xsl:text><xsl:value-of select="@id"/>
                <xsl:text >&#xA;--------------------------------------------------------&#xA;</xsl:text>
                    <xsl:text>Nome: </xsl:text><xsl:value-of select="nome"/><xsl:text>&#xA;</xsl:text>                       
                    <xsl:text>Modelo: </xsl:text><xsl:value-of select="modelo"/><xsl:text>&#xA;</xsl:text>
                    <xsl:text>Ano: </xsl:text><xsl:value-of select="ano"/><xsl:text>&#xA;</xsl:text>
                    <xsl:text>Lotação: </xsl:text><xsl:value-of select="lotacao"/><xsl:text>&#xA;</xsl:text>
                    <xsl:text>Preço: </xsl:text>
                        <xsl:value-of select="preco/valor"/><xsl:text> </xsl:text>
                        <xsl:value-of select="preco/currency"/><xsl:text>&#xA;</xsl:text>   
                    <xsl:text>Categoria: </xsl:text><xsl:value-of select="categoria"/><xsl:text>&#xA;</xsl:text> 
                    <xsl:text>Marina: </xsl:text><xsl:value-of select="marina"/><xsl:text>&#xA;</xsl:text>   
                    <xsl:text>Imagem: </xsl:text><xsl:text> altTag </xsl:text>
                        <xsl:value-of select="imagem/altTag"/><xsl:text>, url: </xsl:text>
                        <xsl:value-of select="imagem/url"/><xsl:text>&#xA;</xsl:text>                
                <xsl:text >&#xA;--------------------------------------------------------&#xA;</xsl:text>
            </xsl:for-each>  

        <xsl:text>&#xA;&#xA;========================================================&#xA;</xsl:text> 
        <xsl:text>                          MARINAS</xsl:text> 
        <xsl:text>&#xA;========================================================&#xA;</xsl:text>         
        <xsl:for-each select="seguradora/marinas/marina">
            <xsl:text>Marina id: </xsl:text><xsl:value-of select="@id"/>
            <xsl:text >&#xA;--------------------------------------------------------&#xA;</xsl:text>
                <xsl:text>Nome: </xsl:text><xsl:value-of select="nome"/><xsl:text>&#xA;</xsl:text>                       
                <xsl:text>Descrição: </xsl:text><xsl:value-of select="descricao"/><xsl:text>&#xA;</xsl:text>
            <xsl:text>--------------------------------------------------------&#xA;</xsl:text>
        </xsl:for-each>  

        <xsl:text>&#xA;&#xA;========================================================&#xA;</xsl:text> 
        <xsl:text>                          SEGUROS</xsl:text> 
        <xsl:text>&#xA;========================================================&#xA;</xsl:text>         
        <xsl:for-each select="seguradora/seguros/seguro">
            <xsl:text>Seguro id: </xsl:text><xsl:value-of select="@id"/>
            <xsl:text >&#xA;--------------------------------------------------------&#xA;</xsl:text>
                <xsl:text>Tipo: </xsl:text><xsl:value-of select="tipo"/><xsl:text>&#xA;</xsl:text>                       
                <xsl:text>Descrição: </xsl:text><xsl:value-of select="descricao"/><xsl:text>&#xA;</xsl:text>
                <xsl:text>Preço: </xsl:text>
                        <xsl:value-of select="preco/valor"/><xsl:text> </xsl:text>
                        <xsl:value-of select="preco/currency"/><xsl:text>&#xA;</xsl:text> 
            <xsl:text>--------------------------------------------------------&#xA;</xsl:text>
        </xsl:for-each>  

        <xsl:text>&#xA;&#xA;========================================================&#xA;</xsl:text> 
        <xsl:text>                          CLIENTES</xsl:text> 
        <xsl:text>&#xA;========================================================&#xA;</xsl:text>         
        <xsl:for-each select="seguradora/clientes/cliente">
            <xsl:text>Cliente id: </xsl:text><xsl:value-of select="@id"/>
            <xsl:text >&#xA;--------------------------------------------------------&#xA;</xsl:text>
                <xsl:text>Nome: </xsl:text><xsl:value-of select="nome"/><xsl:text>&#xA;</xsl:text>                       
                <xsl:text>Email: </xsl:text><xsl:value-of select="email"/><xsl:text>&#xA;</xsl:text>
                <xsl:text>Telefone: </xsl:text><xsl:value-of select="telefone"/><xsl:text>&#xA;</xsl:text>                       
                <xsl:text>Idade: </xsl:text><xsl:value-of select="idade"/><xsl:text>&#xA;</xsl:text>
                <xsl:text>&#xA;</xsl:text>
                    <xsl:text>Carteiras de Seguros</xsl:text>
                <xsl:text>&#xA;--------------------&#xA;</xsl:text>
                     <xsl:for-each select="carteiraSeguros/carteiraSeguro">
                        <xsl:text>Carteira seguro: idSeguro</xsl:text>
                            <xsl:value-of select="idSeguro"/>
                            <xsl:text>, idBarco</xsl:text>
                            <xsl:value-of select="idBarco"/><xsl:text>&#xA;</xsl:text> 
                    </xsl:for-each>  
                <xsl:text>&#xA;</xsl:text>
                    <xsl:text>Ocorrências</xsl:text>
                <xsl:text>&#xA;-----------&#xA;</xsl:text>
                     <xsl:for-each select="ocorrencias/ocorrencia">
                        <xsl:text>º Ocorrência:</xsl:text><xsl:text>&#xA;</xsl:text>
                            <xsl:text>  Id Barco: </xsl:text><xsl:value-of select="idBarco"/><xsl:text>&#xA;</xsl:text>
                            <xsl:text>  Tipo de catástrofe: </xsl:text><xsl:value-of select="tipoCatastrofe"/><xsl:text>&#xA;</xsl:text> 
                            <xsl:text>  Data: </xsl:text><xsl:value-of select="ano"/><xsl:text>/</xsl:text> 
                            <xsl:value-of select="mes"/><xsl:text>/</xsl:text> 
                            <xsl:value-of select="dia"/><xsl:text>&#xA;</xsl:text> 
                    </xsl:for-each>  
                    <xsl:text>&#xA;Total de ocorrencias: </xsl:text>
                    <xsl:value-of select="count(ocorrencias/ocorrencia)"></xsl:value-of><xsl:text>&#xA;</xsl:text>
                    <xsl:text>&#xA;</xsl:text> 

            <xsl:text>--------------------------------------------------------&#xA;</xsl:text>
        </xsl:for-each>  

    </xsl:template>     
</xsl:stylesheet>
