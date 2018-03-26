<%-- 
    Document   : detalle
    Created on : 11-mar-2018, 13:51:55
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
				<s:text name="formulario.titulo.detalle" />
			</h1>
		</div>
		<div class="panel-body">
			<fieldset>
				<legend>
					<s:text name="formulario.titulo.detalle.info" />
				</legend>
				<div class="row">
					<div class="col-md-3">
						<label class="text-right" style="display: block;"><s:text
								name="formulario.nombre" />:</label>
					</div>
					<div class="col-md-9">
						<s:property value="clienteSeleccionado.nombre" />
					</div>
				</div>
				<div class="row">
					<div class="col-md-3">
						<label class="text-right" style="display: block;"><s:text
								name="formulario.apellido" />:</label>
					</div>
					<div class="col-md-9">
						<s:property value="clienteSeleccionado.apellido" />
					</div>
				</div>
				<div class="row">
					<div class="col-md-3">
						<label class="text-right" style="display: block;"><s:text
								name="formulario.genero" />:</label>
					</div>
					<div class="col-md-9">
						<s:property value="clienteSeleccionado.genero" />
					</div>
				</div>
				<div class="row">
					<div class="col-md-3">
						<label class="text-right" style="display: block;"><s:text
								name="formulario.profesion" />:</label>
					</div>
					<div class="col-md-9">
						<s:property value="clienteSeleccionado.profesion" />
					</div>
				</div>
				<div class="row">
					<div class="col-md-3">
						<label class="text-right" style="display: block;"><s:text
								name="formulario.numeroMovil" />:</label>
					</div>
					<div class="col-md-9">
						<s:property value="clienteSeleccionado.numeroMovil" />
					</div>
				</div>
				<div class="row">
					<div class="col-md-3">
						<label class="text-right" style="display: block;"><s:text
								name="formulario.operadorMovil" />:</label>
					</div>
					<div class="col-md-9">
						<s:property value="clienteSeleccionado.operadorMovil" />
					</div>
				</div>
				<div class="row">
					<div class="col-md-3">
						<label class="text-right" style="display: block;"><s:text
								name="formulario.correo" />:</label>
					</div>
					<div class="col-md-9">
						<s:property value="clienteSeleccionado.correo" />
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<!-- Split button -->
						<hr />
						<div class="btn-group">
							<button type="button" class="btn btn-default">
								<span class="glyphicon glyphicon-chevron-left"></span>
								<s:text name="navegacion.regresar" />
							</button>
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								<span class="caret"></span> <span class="sr-only">Toggle
									Dropdown</span>
							</button>
							<s:url id="editarCliente" action="editarCliente">
								<s:param name="idCliente" value="%{clienteSeleccionado.codigo}" />
							</s:url>
							<s:url id="eliminarCliente" action="eliminarCliente">
								<s:param name="idCliente" value="%{clienteSeleccionado.codigo}" />
							</s:url>
							<ul class="dropdown-menu">
								<li><s:a href="%{editarCliente}">
										<s:text name="formulario.titulo.editar" />
									</s:a></li>
								<li role="separator" class="divider"></li>
								<li><s:a href="%{eliminarCliente}">
										<s:text name="formulario.titulo.eliminar" />
									</s:a></li>
							</ul>
						</div>
					</div>
				</div>
			</fieldset>

		</div>
	</div>
</body>
</html>
