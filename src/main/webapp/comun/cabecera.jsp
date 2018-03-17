<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<div class="container-fluid">
    <div class="row page-header">
        <div class="col-md-10"><h1>JAVA MASTER DEVELOPER</h1></div>
        <div class="col-md-2">
            <div>
                <s:url var="ingles" includeParams="all" value="">
                    <s:param name="request_locale">en</s:param>
                </s:url>
                <s:url var="espanol" includeParams="all" value="">
                    <s:param name="request_locale">es</s:param>
                </s:url>

                <div class="btn-group">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <span class="glyphicon glyphicon-globe"></span> <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu">
                        <li><s:a href="%{ingles}">Ingles</s:a></li>
                        <li><s:a href="%{espanol}">Español</s:a></li>                
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>