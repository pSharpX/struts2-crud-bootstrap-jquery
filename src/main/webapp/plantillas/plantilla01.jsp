<%-- 
    Document   : plantilla01
    Created on : 2/05/2012, 10:11:27 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>   
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page - Principal</title>
        <style>
            .list-group > a.list-group-item {
                color: #337ab7;
            }
        </style>
        <sj:head jqueryui="true" jquerytheme="cupertino"/>
        <sb:head />
        <link rel="stylesheet" href="base.css" />
    </head>
    <body>
        <div class="container-fluid center-block w-100 w-md-75">
            <div class="row">
                <div class="col-md-12">
                    <tiles:insertAttribute name="cabecera" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <ol class="breadcrumb">
                        <s:url action="inicio" id="inicio"/>
                        <li><s:a href="%{inicio}"><s:text name="navegacion.inicio" /></s:a></li>                        
                    </ol>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <tiles:insertAttribute name="menu" />
                </div>
                <div class="col-md-9">
                    <tiles:insertAttribute name="cuerpo" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <tiles:insertAttribute name="pie" />
                </div>
            </div>
        </div>        
    </body>
</html>
