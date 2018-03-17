<%-- 
    Document   : eliminar
    Created on : 11-mar-2018, 13:52:20
    Author     : CHRISTIAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<s:if test="clienteEliminar == null">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h1 class="panel-title"><s:text name="formulario.titulo.eliminar" /></h1>
        </div>
        <div class="panel-body"></div>
    </div>
</s:if>
<s:else>
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h1 class="panel-title"><s:text name="formulario.titulo.eliminar" /></h1>
        </div>
        <div class="panel-body">
            <div class="alert alert-warning alert-dismissible" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <strong><s:text name="formulario.eliminar.title" />!</strong> <s:text name="formulario.eliminar.message" />:
                <p><strong><s:property value="%{clienteEliminar.nombre}" /> <s:property value="%{clienteEliminar.apellido}" /></strong></p>
            </div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <s:url id="eliminarCliente" action="eliminarCliente" escapeAmp="false">                           
                            <s:param name="idCliente" value="%{codigo}" />
                            <s:param name="delete" value="true" />
                        </s:url>
                        <s:a href="%{eliminarCliente}" cssClass="btn btn-sm btn-warning">
                            <span class="glyphicon glyphicon-trash"></span>
                        </s:a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</s:else>