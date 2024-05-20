<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
    
    <xsl:output method="html" indent="yes" media-type="text/html"/>
    
    <xsl:template match="/">
        <html lang="es">
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=>, initial-scale=1.0"/>
                <link rel="stylesheet" href="estilos.css"/>
                <title>Examen_Alejandro_Garcia_Sanchez</title>
            </head>
            <body>
                <header>
                    <h1>Pokedex</h1>
                </header>
                <main>
                    <xsl:for-each select="pokemon">
                        <article>
                            
                            <section>
                                <h2> Datos generales: </h2>
                                <p> Nombre: <xsl:value-of select="@name"/></p>
                                <xsl:choose>
                                    <xsl:when test="base_experience &lt; 100">
                                        <p class="exp_rojo"> Experiencia base: <xsl:value-of select="base_experience"/> </p>
                                    </xsl:when>
                                    <xsl:when test="base_experience &gt; 199">
                                        <p class="exp_verde"> Experiencia base: <xsl:value-of select="base_experience"/> </p>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <p class="exp_amarillo"> Experiencia base: <xsl:value-of select="base_experience"/> </p>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <p> Altura: <xsl:value-of select="height"/> </p>
                                <p> Peso: <xsl:value-of select="weight"/> </p>
                                <p> <a href="https://pokeapi.co/api/v2/pokemon/{@id}">Datos completos de <xsl:value-of select="@name"/></a></p>
                            </section>
                            <section>
                                <h2> Movimientos: </h2>
                                <ul>
                                    <xsl:for-each select="//move">
                                        <xsl:sort select="name" order="ascending" />
                                        <li> <a href="{url}" ><xsl:value-of select="name"/></a></li>
                                    </xsl:for-each>
                                </ul>
                            </section>
                            <section>
                                <h2> Sprites: </h2>
                                <ul>
                                    <xsl:for-each select="//sprite">
                                        <xsl:sort select="@type" order="descending"/>
                                        <li> 
                                            <img src='{.}' alt="{@part}" />
                                        </li>
                                    </xsl:for-each>
                                </ul>
                            </section>
                        </article>
                    </xsl:for-each>
                </main>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>