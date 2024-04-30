<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
    
    <xsl:output method="html" indent="yes" media-type="text/html"/>
    
    <xsl:template match="/">
        <html lang="es">
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <title>Ej02</title>
                <style>
                    table,
                    td,
                    th {
                    border: 1px solid black;
                    text-align: center;
                    min-width: 5em;
                    padding: 1em;
                    }
                    
                    table {
                    border-collapse: collapse;
                    
                    }
                </style>
            </head>
            <body>
                <table>
                    <caption>Ejercicio 2</caption>
                    <thead>
                        <tr>
                            <th scope="col">Tramo de edad</th>
                            <th scope="col">Mujeres</th>
                            <th scope="col">Hombres</th>
                            <th scope="col">Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="/padron-edad-sexo-2018/padron-edad-sexo-2018">
                            <tr>
                                <td><xsl:value-of select="Edad" /></td>
                                <td><xsl:value-of select="Mujeres" /></td>
                                <td><xsl:value-of select="Hombres" /></td>
                                <td><xsl:value-of select="Total" /></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
        
    </xsl:template>
    
</xsl:stylesheet>