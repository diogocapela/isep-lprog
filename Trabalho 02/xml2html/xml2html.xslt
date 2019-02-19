<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
                <title>Seguradora de Barcos</title>
            </head>
            <body style="margin-bottom: 4rem;">
                <div class="container">
                    <div style="text-align: center; margin: 2rem 0;">
                        <h1>
                            <b>Seguradora de Barcos</b>
                        </h1>
                    </div>
                    <!-- Barcos -->
                    <h3>
                        <b>Barcos</b>
                    </h3>
                    <hr />
                    <div class="row">
                        <xsl:for-each select="//barcos/barco">
                            <div class="col-sm-3">
                                <img class="card-img-top">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="imagem/url" />
                                    </xsl:attribute>
                                    <xsl:attribute name="alt">
                                        <xsl:value-of select="imagem/altTag" />
                                    </xsl:attribute>
                                </img>
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <b>ID do Barco: </b>
                                        <xsl:value-of select="@id" />
                                    </div>
                                    <div class="card-body">
                                        <b>Nome: </b>
                                        <xsl:value-of select="nome" />
                                        <br />
                                        <b>Modelo: </b>
                                        <xsl:value-of select="modelo" />
                                        <br />
                                        <b>Ano: </b>
                                        <xsl:value-of select="ano" />
                                        <br />
                                        <b>Lotação: </b>
                                        <xsl:value-of select="lotacao" />
                                        <br />
                                        <b>Preço: </b>
                                        <xsl:value-of select="preco/valor" />
                                        <xsl:value-of select="preco/currency" />
                                        <br />
                                        <b>Categoria: </b>
                                        <xsl:value-of select="categoria" />
                                        <br />
                                        <b>Marina: </b>
                                        <xsl:value-of select="marina" />
                                    </div>
                                </div>
                            </div>
                        </xsl:for-each>
                    </div>
                    <b>Número Total de Barcos: </b>
                    <xsl:value-of select="count(//barcos/barco/preco/valor)" />
                    <br />
                    <b>Preço Médio: </b>
                    <xsl:value-of select="format-number((sum(//barcos/barco/preco/valor) div count(//barcos/barco)),'##.0')" />
                    <br />
                    <b>Ano Médio: </b>
                    <xsl:value-of select="format-number((sum(//barcos/barco/ano) div count(//barcos/barco)),'0')" />
                    <br />
                    <br />
                    <!-- Marinas -->
                    <h3>
                        <b>Marinas</b>
                    </h3>
                    <hr />
                    <div class="row">
                        <xsl:for-each select="//marinas/marina">
                            <div class="col-sm-3">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <b>ID da Marina: </b>
                                        <xsl:value-of select="@id" />
                                    </div>
                                    <div class="card-body">
                                        <b>Nome: </b>
                                        <xsl:value-of select="nome" />
                                        <br />
                                        <b>Descrição: </b>
                                        <br />
                                        <xsl:value-of select="descricao" />
                                    </div>
                                </div>
                            </div>
                        </xsl:for-each>
                    </div>
                    <b>Número Total de Marinas: </b>
                    <xsl:value-of select="count(//marinas/marina)" />
                    <br />
                    <br />
                    <!-- Seguros -->
                    <h3>
                        <b>Seguros</b>
                    </h3>
                    <hr />
                    <div class="row">
                        <xsl:for-each select="//seguros/seguro">
                            <div class="col-sm-3">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <b>ID do Seguro: </b>
                                        <xsl:value-of select="@id" />
                                    </div>
                                    <div class="card-body">
                                        <b>Tipo: </b>
                                        <xsl:value-of select="tipo" />
                                        <br />
                                        <b>Descrição: </b>
                                        <xsl:value-of select="descricao" />
                                        <br />
                                        <b>Preço: </b>
                                        <xsl:value-of select="preco/valor" />
                                        <xsl:value-of select="preco/currency" />
                                    </div>
                                </div>
                            </div>
                        </xsl:for-each>
                    </div>
                    <b>Número Total de Seguros: </b>
                    <xsl:value-of select="count(//seguros/seguro)" />
                    <br />
                    <b>Preço Médio: </b>
                    <xsl:value-of select="format-number((sum(//barcos/barco/preco/valor) div count(//barcos/barco)),'##.0')" />
                    <br />
                    <br />
                    <!-- Clientes -->
                    <h3>
                        <b>Clientes</b>
                    </h3>
                    <hr />
                    <div class="row">
                        <xsl:for-each select="//clientes/cliente">
                            <div class="col-sm-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <b>ID do Cliente: </b>
                                        <xsl:value-of select="@id" />
                                    </div>
                                    <div class="card-body">
                                        <b>Nome: </b>
                                        <xsl:value-of select="nome" />
                                        <br />
                                        <b>Email: </b>
                                        <a>
                                            <xsl:attribute name="href">
                                                mailto:
                                                <xsl:value-of select="email" />
                                            </xsl:attribute>
                                            <xsl:value-of select="email" />
                                        </a>
                                        <br />
                                        <b>Telefone: </b>
                                        <a>
                                            <xsl:attribute name="href">
                                                tel:
                                                <xsl:value-of select="telefone" />
                                            </xsl:attribute>
                                            <xsl:value-of select="telefone" />
                                        </a>
                                        <br />
                                        <b>Idade: </b>
                                        <xsl:value-of select="idade" />
                                        <br />
                                        <hr />
                                        <xsl:if test="count(ocorrencias/ocorrencia) = 0">
                                            <div class="alert alert-success" role="alert">Cliente exemplar (zero ocorrências)!</div>
                                        </xsl:if>
                                        <xsl:if test="count(ocorrencias/ocorrencia) = 1">
                                            <div class="alert alert-warning" role="alert">Cliente duvidoso (uma ocorrência)!</div>
                                        </xsl:if>
                                        <xsl:if test="count(ocorrencias/ocorrencia) &gt; 1">
                                            <div class="alert alert-danger" role="alert">Cliente perigoso (2 ou mais ocorrências)!</div>
                                        </xsl:if>
                                        <div class="row">
                                            <div class="col-6">
                                                <h6>
                                                    <b>
                                                        Carteira de Seguros (
                                                        <xsl:value-of select="count(carteiraSeguros/carteiraSeguro)" />
                                                        )
                                                    </b>
                                                </h6>
                                                <div class="list-group" role="tablist">
                                                    <xsl:for-each select="carteiraSeguros/carteiraSeguro">
                                                        <a class="list-group-item list-group-item-action" role="tab">
                                                            <b>ID Seguro: </b>
                                                            <xsl:value-of select="idSeguro" />
                                                            <br />
                                                            <b>ID Barco: </b>
                                                            <xsl:value-of select="idBarco" />
                                                        </a>
                                                    </xsl:for-each>
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <h6>
                                                    <b>
                                                        Histórico de Ocorrências (
                                                        <xsl:value-of select="count(ocorrencias/ocorrencia)" />
                                                        )
                                                    </b>
                                                </h6>
                                                <div class="list-group" role="tablist">
                                                    <xsl:for-each select="ocorrencias/ocorrencia">
                                                        <a class="list-group-item list-group-item-action" role="tab">
                                                            <b>ID Barco: </b>
                                                            <xsl:value-of select="idBarco" />
                                                            <br />
                                                            <b>Catástrofe: </b>
                                                            <br />
                                                            <xsl:value-of select="tipoCatastrofe" />
                                                            <br />
                                                            <b>Data: </b>
                                                            <br />
                                                            <xsl:value-of select="dia" />
                                                            /
                                                            <xsl:value-of select="mes" />
                                                            /
                                                            <xsl:value-of select="ano" />
                                                            <br />
                                                        </a>
                                                    </xsl:for-each>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </xsl:for-each>
                    </div>
                    <b>Número Total de Clientes: </b>
                    <xsl:value-of select="count(//clientes/cliente)" />
                    <br />
                    <b>Idade Média: </b>
                    <xsl:value-of select="sum(//clientes/cliente/idade) div count(//clientes/cliente)" />
                </div>
                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous" />
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous" />
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous" />
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>