<%-- 
    Document   : login
    Created on : 21/02/2018, 09:50:33 PM
    Author     : JAdv-LM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <title>JSP Page - Iniciar Session</title>
        <style>
            .login-container{                
                margin-top: 50px;
            }
            
            input[type="text"] ~ .alert-danger,
            input[type="password"] ~ .alert-danger{
                display: none;
            }
        </style>
        <sj:head jqueryui="true" jquerytheme="cupertino"/>
        <sb:head />
        <link rel="stylesheet" href="base.css" />
    </head>
    <body>        
        <div class="container-fluid center-block login-container w-100 w-sm-75 w-md-50">
            <div class="panel panel-primary">
                <div class="panel-heading   ">
                    <h1 class="panel-title"><s:text name="titulo.principal" /></h1>
                </div>
                <div class="panel-body">
                    <s:form action="login" theme="bootstrap" cssClass="form-horizontal">
                        <s:textfield name="usuario.username" key="formulario.username" />
                        <div class="form-group">
                            <div class="col-sm-3"></div>
                            <div class="col-sm-9">
                                <s:fielderror fieldName="usuario.username" />
                            </div>
                        </div>                        
                        <s:password name="usuario.password" key="formulario.password" />
                        <div class="form-group">
                            <div class="col-sm-3"></div>
                            <div class="col-sm-9">
                                <s:fielderror fieldName="usuario.password" />
                            </div>
                        </div>                                 
                        <div class="row">
                            <div class="col-md-12">
                                <div class="pull-right">
                                    <button type="submit" class="btn btn-primary">
                                        <span class="glyphicon glyphicon-log-in"></span>
                                        <s:text name="formulario.boton" />
                                    </button>
                                </div>                                
                                <div class="clearfix"></div>
                            </div>                            
                        </div>                        
                    </s:form>
                </div>
                <div class="panel-footer">
                    <s:url var="ingles" includeParams="all" value="">
                        <s:param name="request_locale">en</s:param>
                    </s:url>
                    <s:url var="espanol" includeParams="all" value="">
                        <s:param name="request_locale">es</s:param>
                    </s:url>

                    <span class="glyphicon glyphicon-globe"></span>
                    <s:a href="%{ingles}">Ingles</s:a>
                    <s:a href="%{espanol}">Español</s:a>
                </div>
            </div>
        </div>        
    </body>
</html>
