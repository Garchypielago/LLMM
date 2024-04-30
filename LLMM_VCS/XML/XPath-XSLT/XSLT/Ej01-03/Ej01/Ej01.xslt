<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
    
    <xsl:output method="html" indent="yes" media-type="text/html"/>
    
    <xsl:template match="/">
        <html lang="es">
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <title>Ej01</title>
            </head>
            
            <body>
                <header>
                    <h1>Ejercicio  01</h1>
                </header>
                
                <main>
                    <xsl:for-each select="//item_edad">
                        <article>
                            <h2>Edad: <xsl:value-of select="edad" /> años
                                <ul>
                                    <li>Hombres 1: <xsl:value-of select="hombres_1"/></li>
                                    <li>Mujeres 1 :  <xsl:value-of select="mujeres_1"/></li>
                                    <li>Hombres 2: <xsl:value-of select="hombres_2"/></li>
                                    <li>Mujeres 2 :  <xsl:value-of select="mujeres_2"/></li>
                                </ul>
                            </h2>
                        </article>
                    </xsl:for-each>
                </main>
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>