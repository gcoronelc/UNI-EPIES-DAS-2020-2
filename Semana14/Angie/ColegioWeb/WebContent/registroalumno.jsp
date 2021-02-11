<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="head.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>

	<div class="container mt-2">
		<div class="card">
			<div class="card-header">REGISTRAR ALUMNO</div>
			<div class="card-body">

				<form method="post" action="Registrar alumno">

					<div class="form-group row">
						<label for="nombres" class="col-sm-2 col-form-label">Nombre</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="nombre" name="nombre"
								placeholder="Ingrese nombres.">
						</div>
					</div>

					<div class="form-group row">
						<label for="apellidos" class="col-sm-2 col-form-label">Apellidos</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="apellidos"
								name="apellidos" placeholder="Ingrese apellidos.">
						</div>
					</div>

					<div class="form-group row">
						<label for="dni" class="col-sm-2 col-form-label">DNI</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="dni" name="dni"
								placeholder="Ingrese DNI.">
						</div>
					</div>

					<div class="form-group row">
						<label for="fecnac" class="col-sm-2 col-form-label">FechaNac</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="fecnac" name="fecnac"
								placeholder="Ingrese fecha de nacimiento.">
						</div>
					</div>





					<div class="form-group row">
						<label for="direccion" class="col-sm-2 col-form-label">Direccion</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="direccion"
								name="direccion" placeholder="Especifique direccion.">
						</div>
					</div>

					<div class="form-group row">
						<label for="sexo" class="col-sm-2 col-form-label">Sexo</label>
						<div class="col-sm-10">
							<select class="form-control" id="sexo" name="sexo">
								<option value="H">Hombre</option>
								<option value="M">Mujer</option>
							</select>
						</div>
					</div>


					<div class="form-group row">
						<div class="col-sm-10 offset-sm-2">
							<button type="submit" class="btn btn-primary">REGISTRAR</button>
						</div>
					</div>
				</form>

				<div>Error: ${error }</div>

			</div>
		</div>

	</div>