<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:output method="html" omit-xml-declaration="yes" media-type="text/html" />
    
    <xsl:template match="/">
        <html lang="en">
            <head>
                <meta charset="UTF-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <link rel="stylesheet" href="Ejercicio02.css" type="text/css" />
                <title>Población por edad y sexo</title>
            </head>
            <body>
                
                
                <h1>Población por edad y sexo</h1>
                
                
                <table>
                    <tr>
                        <th>Tramo de edad</th>
                        <th>Hombres</th>
                        <th>Mujeres</th>
                        <th>Total</th>
                    </tr>
                    
                    <xsl:for-each select="/padron-edad-sexo-2018/padron-edad-sexo-2018">
                        
                        
                        <tr>
                            <td><xsl:value-of select="Edad" /></td>
                            <td><xsl:value-of select="Hombres" /></td>
                            <td><xsl:value-of select="Mujeres" /></td>
                            <td><xsl:value-of select="Total" /></td>
                        </tr>
                    </xsl:for-each>
                    
                    
                </table>
                
                
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>               