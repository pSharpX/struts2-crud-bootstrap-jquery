<%-- 
    Document   : nuevoUsuario
    Created on : 21/02/2018, 07:46:33 PM
    Author     : JAdv-LM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Nuevo Usuario</h1>
        <form action="registro" method="post" >
            <div>
                <div>Usuario:</div>
                <div><input type="text" name="username"/></div>
            </div>
            <div>
                <div>Contraseña:</div>
                <div><input type="password" name="password"/></div>
            </div>
            <div>
                <div></div>
                <div><input type="submit" value="Registrar"/></div>
            </div>
        </form>
    </body>
</html>
