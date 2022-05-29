<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">	
		<html>
            <head>		
                <title>Requerimiento 1</title>
                <link rel="stylesheet" href="css/carloscss.css" />
            </head>
            <body>
            <h1><xsl:value-of select="ite/empresa"/></h1>
        
            <xsl:for-each select="ite">
                <h4>Telefono: <a href="tel:+34 91 787 39 91"><xsl:value-of select="telefono"/> </a> </h4> 
                <h4>Web: <a href="https://www.edix.com/es/fp/"><xsl:value-of select="@web"/> </a></h4> 
        
                

             
    
   
                
                
                <h3 id="prof">Lista de profesores</h3>
                <table border="1">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Id</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="/ite/profesores/profesor">
                            <tr>
                                <td><xsl:value-of select="id"/></td>
                                <td><xsl:value-of select="nombre"/></td>
                            </tr>
                        </xsl:for-each> 
                    </tbody>
                </table>

                <h3 id="grados">Lista de grados</h3>
                <table border="1">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Nombre</th>
                            <th>Tipo</th>
                            <th>Año</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="/ite/ciclos/ciclo">
                            <tr>
                                <td><xsl:value-of select="@id"/></td>
                                <td><xsl:value-of select="nombre"/></td>
                                <td><xsl:value-of select="grado"/></td>
                                <td><xsl:value-of select="/decretoTitulo "/></td>
                            </tr>
                        </xsl:for-each> 
                    </tbody>
                </table>
                
                <br/>
                <h3 id="direc">Director/Jefe de estudios</h3>
                <xsl:for-each select="/ite/director">
                <ul type="circle">
                    <li><b>Nombre: </b> <xsl:value-of select="nombre"/>  <b>  Despacho: </b> <xsl:value-of select="despacho"/></li>

                </ul>
                        </xsl:for-each> 

                <xsl:for-each select="/ite/jefe_estudios">
                <ul type="circle">
                    <li><b>Nombre: </b> <xsl:value-of select="nombre"/>  <b>  Despacho: </b> <xsl:value-of select="despacho"/></li>

                </ul>
                        </xsl:for-each> 

            </xsl:for-each> 

            <div id="formulario">
            <form action="procesarPeticion.jsp" method="post">
                <fieldset>
                    <legend>Formulario:</legend>
                <br/>
                <label for="nombre">Nombre: </label>
                <input id="nombre" type="text" name="nombre" placeholder="Carlos"/>
                <br/>
                <br/>
                <label for="edad">Edad: </label>
                <input id="edad" type="text" name="edad" placeholder="18" />
                <br/>
                <br/>
                <label for="email">Correo electrónico:</label>
                <input id="email" type="email" name="email" placeholder="correo@gmail.com" />
                <br/>
                <br/>
                <label for="pass">Password: </label>
                <input id="pass" type="password" name="pass" placeholder="1234!"/>
                <br/>
                <br/>
                <label for="fecha">Fecha de nacimiento:</label>
                <input id="fecha" type="date" name="fecha"/>
                <br/>
                <br/>
                <label for="telefono">Telefono:</label>
                <input id="telefono" type="tel" name="telefono" placeholder="+34 000000000"/>
                <br/>
                <br/>
                <input type="submit" value="Enviar datos"/>
                <input type="reset" value="Resetear formulario"/>

                </fieldset>
            </form>
        </div>
            </body>
        </html>		
    </xsl:template>
</xsl:stylesheet>