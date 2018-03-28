<%-- 
    Document   : resultado
    Created on : 21/02/2018, 07:47:52 PM
    Author     : JAdv-LM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Resultado</h1>
        
		<h4><s:text name="nuevo.resultado" /></h4>
        <p><s:text name="operacion.ok" /></p>
        <s:if test="cliente.publicidad == true">
            <p><s:text name="nuevo.aviso" /></p>
        </s:if>
        <s:url action="logout" id="salir" />
        <s:a href="%{salir}"><s:text name="enlace.logout"/></s:a>
        <s:debug />
    </body>
</html>