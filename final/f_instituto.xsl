<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">	
		<html>
            <head>
                <title>AE3</title>
                <link rel="stylesheet" href="a_html.css" />
            </head>
            <body>
                <section>
                <ul>
                    <li><h2><xsl:value-of select="ite/@nombre"/></h2></li>
                    <li><h2>Web: <a name="web" href="{ite/@web}"><xsl:value-of select="ite/@web"/></a></h2></li>
                    <li><h2>Empresa: <xsl:value-of select="ite/empresa"/></h2></li>
                    <li><h2>Teléfono: <a name="telefono" href="{ite/telefono}"><xsl:value-of select="ite/telefono"/></a></h2></li>
                </ul>
                <h2>Profesores:</h2>
                <table name="profesores" border="3">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Id</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="ite/profesores/profesor">
                            <tr>
                                <td><xsl:value-of select="nombre"/></td>
                                <td><xsl:value-of select="id"/></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
                <br/>
                <h2>Ciclos:</h2>
                <table name="ciclos" border="3">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Grado</th>
                            <th>Año Decreto</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="ite/ciclos/ciclo">
                            <tr>
                                <td><xsl:value-of select="nombre"/></td>
                                <td><xsl:value-of select="grado"/></td>
                                <td><xsl:value-of select="decretoTitulo/@año"/></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
                </section>
                <form>
                    <h2><u>Formulario de Contacto</u></h2>
                    <p>Rellena tus datos y escoge uno o más destinatarios</p>
                    <label>Nombre: </label>
                    <input type="text"></input><br/>
                    <label>Correo electrónico: </label>
                    <input type="text"></input><br/>
                    <p>Mensaje: </p><textarea rows="5" cols="50"> Escribe aquí tu mensaje...</textarea><br/>
                    <p>Destinatario/s: </p>
                    <input type="checkbox"></input>
                    <label><b>Director: </b><xsl:value-of select="ite/director/nombre"/><b> Despacho: </b><xsl:value-of select="ite/jefe_estudios/despacho"/></label><br/>
                    <input type="checkbox"></input>
                    <label><b>Jefe de Estudios: </b><xsl:value-of select="ite/jefe_estudios/nombre"/><b> Despacho: </b><xsl:value-of select="ite/jefe_estudios/despacho"/></label><br/><br/>
                    <input type="submit" value="Enviar"></input>
                </form>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>