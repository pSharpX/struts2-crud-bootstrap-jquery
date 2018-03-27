<%-- 
    Document   : eliminar
    Created on : 11-mar-2018, 13:52:20
    Author     : CHRISTIAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<div class="panel panel-primary">
    <div class="panel-heading">
        <h1 class="panel-title"><s:text name="formulario.titulo.eliminar" /></h1>
    </div>
    <div class="panel-body">
        <s:if test="clienteSeleccionado == null">
            <div class="alert alert-warning alert-dismissible" role="alert">
                <button type="button" class="close" data-dismiss="alert"
                        aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <strong><s:text name="mensaje.titulo" />!</strong>
                <s:text name="mensaje.cliente.error" />                        
            </div>
        </s:if>
        <s:else> 
            <s:form action="eliminarCliente" method="post">
                <s:hidden name="clienteSeleccionado.codigo" />
                <div class="alert alert-warning alert-dismissible" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <strong><s:text name="formulario.eliminar.title" />!</strong> <s:text name="formulario.eliminar.message" />:
                    <p><strong><s:property value="%{clienteSeleccionado.nombre}" /> <s:property value="%{clienteSeleccionado.apellido}" /></strong></p>
                </div>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">                            
                            <button type="submit" class="btn btn-sm btn-danger">
                                <span class="glyphicon glyphicon-trash"></span>
                            </button>
                        </div>
                    </div>
                </div>
            </s:form>
        </s:else>
    </div>
</div>