<%-- 
    Document   : nuevo
    Created on : 21/02/2018, 09:53:23 PM
    Author     : JAdv-LM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <title>JSP Page</title>
        <s:head />
    </head>
    <body>
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h1 class="panel-title"><s:text name="formulario.titulo.nuevo" /></h1>
            </div>
            <div class="panel-body">
                <s:form action="registrarCliente" theme="bootstrap" cssClass="form-horizontal">
                    <s:textfield name="cliente.nombre" key="formulario.nombre" />
                    <s:textfield name="cliente.apellido" key="formulario.apellido" />
                    <s:radio name="cliente.genero" key="formulario.genero" list="#{'M': 'Masculino', 'F': 'Femenino'}" />
                    <s:select name="cliente.profesion" key="formulario.profesion"
                              list="#{'A1': 'Arquitecto', 'D1': 'Derecho', 'M1': 'Marketing'}"
                              headerKey=""
                              headerValue="----Selecciones"
                              value="'S2'"/>

                    <s:textfield name="cliente.numeroMovil" key="formulario.numeroMovil" />            
                    <s:select name="cliente.operadorMovil" key="formulario.operadorMovil" 
                              list="%{'Operador1'}"
                              headerKey=""
                              headerValue="----Selecciones"/>

                    <s:checkbox name="cliente.publicidad" key="formulario.publicidad" />
                    <s:textfield name="cliente.correo" key="formulario.correoElectronico" />
                    
                    <div class="row">
                        <div class="col-md-12">
                            <div class="pull-right">
                                <button type="submit" class="btn btn-primary">
                                    <s:text name="formulario.boton" /> 
                                    <span class="glyphicon glyphicon-floppy-disk"></span>
                                </button>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>                    
                </s:form>
                <p><s:actionmessage theme="bootstrap" /></p>
            </div>
            <div class="panel-footer">
                <p><s:text name="formulario.editar.message" />.</p>
            </div>
        </div>
    </body>
</html>
