<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<s:url action="logout" id="salir"/>
<s:url action="inicializarCliente" id="crearCliente"/>
<s:url action="listarCliente" id="listarCliente"/>
<s:url action="editarCliente" id="editarCliente"/>
<s:url action="eliminarCliente" id="eliminarCliente"/>
<div class="list-group">
    <s:a href="%{salir}" cssClass="list-group-item"><span class="glyphicon glyphicon-log-out"></span> <s:text name="enlace.logout"/></s:a>
    <s:a href="%{crearCliente}" cssClass="list-group-item"><span class="glyphicon glyphicon-plus-sign  "></span> <s:text name="enlace.cliente.nuevo"/></s:a>
    <s:a href="%{listarCliente}" cssClass="list-group-item"><span class="glyphicon glyphicon-list"></span> <s:text name="enlace.cliente.listar"/></s:a>
    <s:a href="%{editarCliente}" cssClass="list-group-item"><span class="glyphicon glyphicon-edit"></span> <s:text name="enlace.cliente.editar"/></s:a>
    <s:a href="%{eliminarCliente}" cssClass="list-group-item"><span class="glyphicon glyphicon-trash"></span> <s:text name="enlace.cliente.eliminar"/></s:a>    
</div>   
