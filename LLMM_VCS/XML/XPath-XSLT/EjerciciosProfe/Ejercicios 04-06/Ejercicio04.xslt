<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:output method="html" omit-xml-declaration="yes" media-type="text/html" />
    
    <xsl:template match="/">
        <html lang="en">
            <head>
                <meta charset="UTF-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>Población en distritos de Lorca</title>
            </head>
            <body>
                
                
                <h1>Población en distritos de Lorca</h1>
                
                <xsl:apply-templates/>
                
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="item_edad">
        <h2>
            Edad:
            <xsl:value-of select="edad" />
        </h2>
        <ul>
            <!-- primera opcion para que el numero no salga cmo texto -->
            <!-- <xsl:apply-templates select="hombres_1|hombres_2|mujeres_1|mujeres_2"/> -->
            <!-- segunda forma para que el numero no salga como texto * -->
            <xsl:apply-templates/>
            <!-- tercera forma para que el numero no salga como texto **-->
            <!-- <xsl:apply-templates/> -->
        </ul>
    </xsl:template>
    
    
    <xsl:template match="hombres_1|hombres_2|mujeres_1|mujeres_2">
        <li>
            <xsl:value-of select="name(.)"/> : <xsl:value-of select="."/>
        </li>
    </xsl:template>
    
    <!-- * segunda forma para que el numero no salga como texto -->
    <xsl:template match="edad"/>

    <!-- ** tercera forma para que el numero no salga como texto -->
    <!-- muy generica y peligrosa, por que aplca a todo el texto -->
    <!-- <xsl:template match="text()"/> -->
    
</xsl:stylesheet>               