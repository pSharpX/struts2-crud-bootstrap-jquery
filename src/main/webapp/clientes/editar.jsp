<%-- 
    Document   : editar
    Created on : 11-mar-2018, 13:52:12
    Author     : CHRISTIAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
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
                <h1 class="panel-title">
                    <s:text name="formulario.titulo.editar" />
                </h1>
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
                    <s:form action="actualizarCliente" theme="bootstrap"
                            cssClass="form-horizontal">
                        <s:hidden name="clienteSeleccionado.codigo" />
                        <s:textfield name="clienteSeleccionado.nombre" key="formulario.nombre" />
                        <s:textfield name="clienteSeleccionado.apellido" key="formulario.apellido" />
                        <s:radio name="clienteSeleccionado.genero" key="formulario.genero"
                                 list="#{'M': 'Masculino', 'F': 'Femenino'}" />
                        <s:select name="clienteSeleccionado.profesion" key="formulario.profesion"
                                  list="#{'A1': 'Arquitecto', 'D1': 'Derecho', 'M1': 'Marketing'}"
                                  headerKey="" headerValue="----Selecciones" value="'S2'" />

                        <s:textfield name="clienteSeleccionado.numeroMovil" key="formulario.numeroMovil" />
                        <s:select name="clienteSeleccionado.operadorMovil" key="formulario.operadorMovil"
                                  list="%{'Operador1'}" headerKey="" headerValue="----Selecciones" />

                        <s:checkbox name="clienteSeleccionado.publicidad" key="formulario.publicidad" />
                        <s:textfield name="clienteSeleccionado.correo" key="formulario.correoElectronico" />

                        <div class="row">
                            <div class="col-md-12">
                                <div class="pull-right">
                                    <button type="submit" class="btn btn-primary">
                                        <s:text name="formulario.boton.editar" />
                                        <span class="glyphicon glyphicon-floppy-disk"></span>
                                    </button>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </s:form>
                    <p>
                        <s:actionmessage theme="bootstrap" />
                    </p>                    
                </s:else>
            </div>
            <div class="panel-footer">
                <p>
                    <s:text name="formulario.editar.message" />
                    .
                </p>
            </div>
        </div>
    </body>
</html>
