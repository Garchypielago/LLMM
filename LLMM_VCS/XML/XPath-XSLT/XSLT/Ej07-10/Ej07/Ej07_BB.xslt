<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">

    <xsl:output method="html" indent="yes" media-type="text/html"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Factura</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                    }
                    h1, h2, h3 {
                        color: #003399;
                    }
                   .cabecera {
                        background-color: #f2f2f2;
                        padding: 10px;
                        margin-bottom: 20px;
                    }
                   .proveedor,.cliente,.articulos,.importes {
                        margin-bottom: 20px;
                    }
                   .articulo {
                        margin-bottom: 10px;
                    }
                   .articulo:last-child {
                        margin-bottom: 0;
                    }
                </style>
            </head>
            <body>
                <header class="cabecera">
                    <h1>Factura</h1>
                    <p>Número de factura: <xsl:value-of select="/factura/@numFactura"/></p>
                    <p>Fecha de emisión: <xsl:value-of select="/factura/@fechaEmision"/></p>
                </header>
                <main>
                    <section class="proveedor">
                        <h2>Proveedor</h2>
                        <p>
                            <strong>Identificación:</strong> <xsl:value-of select="/factura/proveedor/identificacion"/>
                            (<xsl:value-of select="/factura/proveedor/identificacion/@tipo"/>)
                        </p>
                        <p><strong>Nombre:</strong> <xsl:value-of select="/factura/proveedor/nombre"/></p>
                        <p><strong>Domicilio:</strong> <xsl:value-of select="/factura/proveedor/domicilio"/></p>
                        <p><strong>Teléfono:</strong> <xsl:value-of select="/factura/proveedor/telefono"/></p>
                        <p><strong>Contacto:</strong></p>
                        <p><xsl:value-of select="/factura/proveedor/contacto/nombre"/></p>
                        <p><xsl:value-of select="/factura/proveedor/contacto/email"/></p>
                    </section>
                    <section class="cliente">
                        <h2>Cliente</h2>
                        <p>
                            <strong>Identificación:</strong> <xsl:value-of select="/factura/cliente/identificacion"/>
                            (<xsl:value-of select="/factura/cliente/identificacion/@tipo"/>)
                        </p>
                        <p><strong>Nombre:</strong> <xsl:value-of select="/factura/cliente/nombre"/></p>
                        <p><strong>Domicilio:</strong> <xsl:value-of select="/factura/cliente/domicilio"/></p>
                        <p><strong>Teléfono:</strong> <xsl:value-of select="/factura/cliente/telefono"/></p>
                        <p><strong>Email:</strong> <xsl:value-of select="/factura/cliente/email"/></p>
                    </section>
                    <section class="articulos">
                        <h2>Artículos</h2>
                        <xsl:for-each select="/factura/articulos/articulo">
                            <div class="articulo">
                                <p><strong>Concepto:</strong> <xsl:value-of select="concepto"/></p>
                                <p><strong>Cantidad:</strong> <xsl:value-of select="cantidad"/> <xsl:value-of select="unidades"/></p>
                                <p><strong>Precio unitario:</strong> <xsl:value-of select="precioUnitario"/> €</p>
                                <p><strong>Importe sin IVA:</strong> <xsl:value-of select="importeSinIva"/> €</p>
                                <p><strong>Tipo de IVA:</strong> <xsl:value-of select="tipoIva"/></p>
                                <p><strong>IVA:</strong> <xsl:value-of select="iva"/> €</p>
                                <p><strong>Importe con IVA:</strong> <xsl:value-of select="importeConIva"/> €</p>
                            </div>
                        </xsl:for-each>
                    </section>
                    <section class="importes">
                        <h2>Importes</h2>
                        <p><strong>Total sin IVA:</strong> <xsl:value-of select="/factura/importes/totalSinIva"/> €</p>
                        <p><strong>Total con IVA:</strong> <xsl:value-of select="/factura/importes/totalConIva"/> €</p>
                        <xsl:for-each select="/factura/importes/ivas/iva">
                        <p><strong>IVA <xsl:value-of select="@porcentaje"/>%:</strong> <xsl:value-of select="importe"/> €</p>
                        </xsl:for-each>
                    </section>
            </main>
            <footer>
                <p>2022 Pinturas Martínez</p>
            </footer>
        </body>
    </html>
</xsl:template>

</xsl:stylesheet>