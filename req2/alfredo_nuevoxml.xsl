<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
    <ite>
        <datos>
            <nombre><xsl:value-of select="ite/@nombre"/></nombre>
            <web><xsl:value-of select="ite/@web"/></web>
            <empresa><xsl:value-of select="ite/empresa"/></empresa>
            <telefono><xsl:value-of select="ite/telefono"/></telefono>
        </datos>
        <personal>
            <profesores>
                <xsl:for-each select="ite/profesores/profesor">
                    <profesor>
                        <xsl:attribute name="id">
                            <xsl:value-of select="id"/>
                        </xsl:attribute>
                        <nombre><xsl:value-of select="nombre"/></nombre>
                    </profesor>
                 </xsl:for-each> 
            </profesores>
            <director>
                <nombre><xsl:value-of select="ite/director/nombre"/></nombre>
                <despacho><xsl:value-of select="ite/director/despacho"/></despacho>
            </director>
            <jefe_estudios>
                <nombre><xsl:value-of select="ite/jefe_estudios/nombre"/></nombre>
                <despacho><xsl:value-of select="ite/jefe_estudios/despacho"/></despacho>
            </jefe_estudios>
        </personal>
        <ciclos>
            <xsl:for-each select="ite/ciclos/ciclo">
                <ciclo>
                    <xsl:attribute name="id">
                        <xsl:value-of select="@id"/>
                    </xsl:attribute>
                    <nombre><xsl:value-of select="nombre"/></nombre>
                    <grado><xsl:value-of select="grado"/></grado>
                    <decretoAño><xsl:value-of select="decretoTitulo/@año"/></decretoAño>
                </ciclo>
            </xsl:for-each>
        </ciclos>
    </ite>
    </xsl:template>
</xsl:stylesheet>