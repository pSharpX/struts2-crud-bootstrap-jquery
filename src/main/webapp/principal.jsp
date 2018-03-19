<%-- 
    Document   : principal
    Created on : 21/02/2018, 10:19:02 PM
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
        <div class="container-fluid">
            <div class="jumbotron">
                <h1><s:text name="titulo.principal" /></h1>
                <p><s:text name="titulo.bienvenida" /></p>
                <s:url action="inicializarCliente" id="newCliente"></s:url>
                <s:a href="%{newCliente}" cssClass="btn btn-primary"><s:text name="formulario.titulo.nuevo" /> <span class="glyphicon glyphicon-plus"></span></s:a>
            </div>
        </div>
    </body>
</html>
