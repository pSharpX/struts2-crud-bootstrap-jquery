<%-- 
    Document   : listar
    Created on : 10-mar-2018, 13:59:51
    Author     : CHRISTIAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <title>JSP Page</title>
        <s:head />
    </head>
    <body>
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h1 class="panel-title"><s:text name="formulario.titulo.listar" /></h1>
            </div>
            <div class="panel-body">
                <s:if test="%{clientes == null || clientes.isEmpty() == true}" >
                    <div class="alert alert-warning alert-dismissible" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <strong><s:text name="formulario.listar.title" />!</strong> <s:text name="formulario.listar.message" />.
                    </div>
                </s:if>                
            </div>
            <s:if test="%{clientes != null && clientes.isEmpty() == false}" >
                <table class="table">
                    <thead>
                        <tr>
                            <th class="text-center"><s:text name="formulario.listar.nombre" /></th>
                            <th class="text-center"><s:text name="formulario.listar.apellido" /></th>
                            <th class="text-center"><s:text name="formulario.listar.genero" /></th>
                            <th class="text-center"><s:text name="formulario.listar.profesion" /></th>
                            <th class="text-center"><s:text name="formulario.listar.numeroMovil" /></th>
                            <th class="text-center"><s:text name="formulario.listar.correo" /></th>
                            <th class="text-center"><span class="glyphicon glyphicon-menu-hamburger"></span></th>
                        </tr>
                    </thead>
                    <tbody>
                        <s:iterator value="clientes">
                            <tr>
                                <td><s:property value="nombre" /></td>
                                <td><s:property value="apellido" /></td>
                                <td><s:property value="genero" /></td>
                                <td><s:property value="profesion" /></td>
                                <td><s:property value="numeroMovil" /></td>
                                <td><s:property value="correo" /></td>
                                <td>
                                    <s:url id="detalleCliente" action="detalleCliente">
                                        <s:param name="idCliente" value="%{codigo}" />
                                    </s:url>
                                    <s:a href="%{detalleCliente}" cssClass="btn btn-sm btn-default">
                                        <span class="glyphicon glyphicon-option-vertical"></span>
                                    </s:a>
                                    <s:url id="editarCliente" action="editarCliente">
                                        <s:param name="idCliente" value="%{codigo}" />
                                    </s:url>
                                    <s:a href="%{editarCliente}" cssClass="btn btn-sm btn-primary">
                                        <span class="glyphicon glyphicon-edit"></span>
                                    </s:a>
                                    <s:url id="eliminarCliente" action="eliminarCliente">
                                        <s:param name="idCliente" value="%{codigo}" />
                                    </s:url>
                                    <s:a href="%{eliminarCliente}" cssClass="btn btn-sm btn-danger">
                                        <span class="glyphicon glyphicon-trash"></span>
                                    </s:a>
                                </td>
                            </tr>                            
                        </s:iterator>
                    </tbody>
                </table>                
            </s:if>
            <s:if test="%{clientes != null && clientes.isEmpty() == false}" >
                <div class="panel-footer">
                    Numero de Clientes: <span class="badge"><s:property value="%{clientes.size()}" /></span>
                </div>
            </s:if>
        </div>
    </body>
</html>
