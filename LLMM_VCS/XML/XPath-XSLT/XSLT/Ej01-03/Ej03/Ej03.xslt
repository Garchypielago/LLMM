<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
    
    <xsl:output method="html" indent="yes" media-type="text/html" />
    
    <xsl:template match="/">
        <html lang="es">
            <head>
                <meta charset="UTF-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>Ej03</title>
                <style>
                    table,td,th {
                    border: 1px solid black;
                    text-align: center;
                    min-width: 5em;
                    padding: 1em;}
                    
                    table {
                    border-collapse: collapse;}
                </style>
            </head>
            <body>
                <header>
                    <h1>Ejercicio 3</h1>
                </header>
                <main>
                    <xsl:apply-templates select="barrios-extension" mode="tabladesc" />
                    <xsl:apply-templates select="barrios-extension" mode="tablaasc" />
                    <xsl:apply-templates select="barrios-extension" mode="listasc" />
                    <xsl:apply-templates select="barrios-extension" mode="listdesc" />
                </main>
                
            </body>
        </html>
        
    </xsl:template>
    
    <xsl:template match="barrios-extension" mode="tablaasc">
        
        <article>
            <table>
                <caption>TABLA DESCENDENTE</caption>
                <thead>
                    <tr>
                        <th scope="col">Nombre</th>
                        <th scope="col">Extension</th>
                    </tr>
                </thead>
                <tbody>
                    <xsl:for-each select="/barrios-extension/barrio">
                        <xsl:sort select="nombre_barrio"></xsl:sort>
                        <tr>
                            <td><xsl:value-of select="nombre_barrio"/></td>
                            <td><xsl:value-of select="km2"/></td>
                        </tr>
                    </xsl:for-each>
                </tbody>
            </table>
        </article>
        
    </xsl:template>
    
    <xsl:template match="barrios-extension" mode="tabladesc">
        
        <article>
            <table>
                <caption>TABLA ASCENDENTE</caption>
                <thead>
                    <tr>
                        <th scope="col">Nombre</th>
                        <th scope="col">Extension</th>
                    </tr>
                </thead>
                <tbody>
                    <xsl:for-each select="/barrios-extension/barrio">
                        <xsl:sort select="nombre_barrio"  order="descending"></xsl:sort>
                        <tr>
                            <td><xsl:value-of select="nombre_barrio"/></td>
                            <td><xsl:value-of select="km2"/></td>
                        </tr>
                    </xsl:for-each>
                </tbody>
            </table>
        </article>
        
    </xsl:template>
    
    <xsl:template match="barrios-extension" mode="listasc">
        <article>
            <ol>
            <caption>LISTA ASCENDENTE</caption>
                <xsl:for-each select="barrio">
                    <xsl:sort select="km2" />
                        <li>
                        <xsl:value-of select="nombre_barrio"/>, <xsl:value-of select="km2"/>KM2
                        </li>
                </xsl:for-each>
            </ol>
        </article>
    </xsl:template>

    <xsl:template match="barrios-extension" mode="listdesc">
        <article>
            <ol>
            <caption>LISTA DESCENDENTE</caption>
                <xsl:for-each select="barrio">
                    <xsl:sort select="km2" order="descending" />
                        <li>
                        <xsl:value-of select="nombre_barrio"/>, <xsl:value-of select="km2"/>KM2
                        </li>
                </xsl:for-each>
            </ol>
        </article>
    </xsl:template>
    
</xsl:stylesheet>