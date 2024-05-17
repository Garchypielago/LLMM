<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">

    <xsl:output method="html" indent="yes" media-type="text/html"/>

    <xsl:template match="/">
    <html>
      <head>
        <title>Informe de participantes en formaciones bonificadas</title>
      </head>
      <body>
        <h1>Informe de participantes en formaciones bonificadas</h1>
        <xsl:for-each select="//grupo">
          <article>
            <h2>Grupo <xsl:value-of select="@idGrupo"/> de la acción <xsl:value-of select="@idAccion"/></h2>
            <table>
              <tr>
                <th>Apellido</th>
                <th>Nombre</th>
                <th>DNI</th>
                <th>Email</th>
                <th>Teléfono</th>
              </tr>
              <xsl:for-each select="Participante">
                <tr>
                  <td><xsl:value-of select="Apellido"/></td>
                  <td><xsl:value-of select="Nombre"/></td>
                  <td><xsl:value-of select="DNI"/></td>
                  <td><xsl:value-of select="Email"/></td>
                  <td><xsl:value-of select="Telefono"/></td>
                </tr>
              </xsl:for-each>
            </table>
            <dl>
              <dt>Costes directos:</dt>
              <dd><xsl:value-of select="Costes/Directos"/></dd>
              <dt>Costes indirectos:</dt>
              <dd><xsl:value-of select="Costes/Indirectos"/></dd>
              <dt>Costes salariales:</dt>
              <dd><xsl:value-of select="Costes/Salariales"/></dd>
            </dl>
            <ul>
              <xsl:for-each select="Costes/Periodos/Periodo">
                <li><xsl:value-of select="@mes"/> - <xsl:value-of select="importe"/></li>
              </xsl:for-each>
            </ul>
          </article>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>