<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">    
        <html>
            <head>
                <title>Instituto Tecnológico Edix</title>
            </head>
            <body>
                <h1>Equipo directivo</h1> 

                <xsl:for-each select="director">
                <dl>
                    <dt>Director</dt>
                    <dd><xsl:value-of select="nombre"/></dd>
                    <dd><xsl:value-of select="despacho"/></dd>
                </dl>
                 </xsl:for-each>
                <br/>
                <xsl:for-each select="jefe_estudios">
                    <dl>
                        <dt>Jefe de estudios</dt>
                        <dd><xsl:value-of select="nombre"/></dd>
                        <dd><xsl:value-of select="despacho"/></dd>
                    </dl>
                </xsl:for-each>
                <h1>Profesores</h1>
                    <xsl:for-each select="profesores/profesor"></xsl:for-each>
                    <table>
                        <tr>
                            <th>id</th>
                            <th>Nombre</th>
                            
                        </tr>
                        <tr>
                            <td>xsl:value-of select="id"/></td>
                            <td>xsl:value-of select="nombre"/></td>
                        </tr>
                    </table>
                
                <h1>Cursos</h1>
                    <br/>
                    <xsl:for-each select="ciclos/ciclo">
                
                    <table>
                    <tr>
                        <th>Ciclo</th>
                        <th>Nombre</th>
                        <th>Grado</th>  
                        <th>DecretoTitulo</th>  
                    </tr>
                    <tr>
                        <td>xsl:value-of select="@id"/></td>
                        <td>xsl:value-of select="nombre"/></td>
                        <td>xsl:value-of select="grado"/></td>   
                        <td>xsl:value-of select="@año"/></td>  
                    </tr>
                </table>
                 </xsl:for-each>

                <h1>ingresa tus datos y nos pondremos en contacto contigo</h1>
                <form action="https://institutotecnologico.edix.com" method="get"></form>
                <br/>
                Nombre: <input type="text" name="nombre" />
                <br/>
                Apellidos: <input type="text" name="apellidos" />
                 <br/>
                Email: <input type="email" name="email" />
                <br/>
                Teléfono: <input type="tel" name="telefono" placeholder="Escribe su número de telefono"/>

                <footer>
                    <p>Instituto Tecnológico Edix</p>
                    <p>Proeduca</p>
                    <p>Telefono +34 91 787 39 91</p>
                    <p>href="https://institutotecnologico.edix.com"</p>
                </footer>
            </body>
        </html> 

    </xsl:template>
</xsl:stylesheet>