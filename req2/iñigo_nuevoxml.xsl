<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
    
       <Instituto>
        <xsl:for-each select="ite"/>
            <xsl:attribute name= "empresa"/>
                <xsl:value-of select= "empresa"/>
             <xsl:attribute name= "nombre"/>
                <xsl:value-of select= "@nombre"/>
            <xsl:attribute name= "telefono"/>
                <xsl:value-of select= "telefono"/>
            <xsl:attribute name= "web"/>
                <xsl:value-of select= "@web"/>
        </Instituto> 
            <PersonalDocente>
                <xsl:for-each select="profesores/profesor"/>
                    <xsl:attribute name= "id"/>
                        <xsl:value-of select= "id"/>
                    <xsl:attribute name= "nombre"/>
                        <xsl:value-of select= "nombre"/>
            </PersonalDocente>
            <direccion>
                <cargo>
                    <xsl:for-each select="director"/>
                        <xsl:attribute name= "nombre"/>
                             <xsl:value-of select= "nombre"/>
                        <xsl:attribute name= "despacho"/>
                             <xsl:value-of select= "despacho"/>
                    <xsl:for-each select="jefe_estudios"/>
                        <xsl:value-of select= "nombre"/>
                            <xsl:attribute name= "nombre"/>
                         <xsl:value-of select= "despacho"/>
                            <xsl:attribute name= "despacho"/>
                 </cargo>
                
            </direccion>
            
            <grados>
                <xsl:for-each select="ciclos/ciclo"/>
                    <xsl:attribute name= "id"/>
                             <xsl:value-of select= "@id"/>
                    <xsl:attribute name= "nombre"/>
                             <xsl:value-of select= "nombre"/>
                    <xsl:attribute name= "grado"/>
                             <xsl:value-of select= "grado"/>
                    <xsl:attribute name= "decretoTitulo"/>
                             <xsl:value-of select= "@año"/>


            </grados>
        
    </xsl:template>
</xsl:stylesheet>