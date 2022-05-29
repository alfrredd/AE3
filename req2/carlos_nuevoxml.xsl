<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">	
    <empresa nombre="Proeduca"></empresa>	
    <telefono numero="+34 91 787 39 91"></telefono>
    <profesores>
        <xsl:attribute name="id">
                <xsl:value-of select="ite/profesores/profesor/id"/>
            </xsl:attribute>
            <xsl:attribute name="nombre">
                <xsl:value-of select="ite/profesores/profesor/nombre"/>
            </xsl:attribute>
    </profesores>

    <director>
        <xsl:attribute name="nombre">
            <xsl:value-of select="ite/director/nombre"/>
        </xsl:attribute>
        <xsl:attribute name="despacho">
                <xsl:value-of select="ite/director/despacho"/>
            </xsl:attribute>
    </director>

    <jefe_estudios>
        <xsl:attribute name="nombre">
            <xsl:value-of select="ite/director/nombre"/>
        </xsl:attribute>
        <xsl:attribute name="despacho">
                <xsl:value-of select="ite/director/despacho"/>
            </xsl:attribute>
    </jefe_estudios>

    <grados>
        <id><xsl:value-of select="ite/ciclos/ciclo/@id"/></id>
        <nombre><xsl:value-of select="ite/ciclos/ciclo/nombre"/></nombre>
        <tipo><xsl:value-of select="ite/ciclos/ciclo/grado"/></tipo>
        <decretoTitulo><xsl:value-of select="ite/ciclos/ciclo/decretoTitulo/@ano"/></decretoTitulo>
    </grados>


    </xsl:template>
</xsl:stylesheet>