<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="head.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>


	<div class="container mt-2">
		<div class="card">
			<div class="card-header">Featured</div>
			<div class="card-body">
				<form>

					<div class="form-group row">
						<label for="IDCLIENTE" class="col-sm-2 col-form-label">IDCLIENTE</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="IDCLIENTE"
								name="IDCLIENTE">
						</div>
					</div>

					<div class="form-group row">
						<label for="NOMBRE" class="col-sm-2 col-form-label">NOMBRE</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="NOMBRE" name="NOMBRE">
						</div>
					</div>

					<div class="form-group row">
						<label for="IDTIPODOC" class="col-sm-2 col-form-label">IDTIPODOC</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="IDTIPODOC"
								name="IDTIPODOC">
						</div>
					</div>

					<div class="form-group row">
						<label for="NRODOC" class="col-sm-2 col-form-label">NRODOC</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="NRODOC" name="NRODOC">
						</div>
					</div>

					<div class="form-group row">
						<label for="DIRECCION" class="col-sm-2 col-form-label">DIRECCION</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="DIRECCION"
								name="DIRECCION">
						</div>
					</div>

					<div class="form-group row">
						<label for="CELULAR" class="col-sm-2 col-form-label">CELULAR</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="CELULAR"
								name="CELULAR">
						</div>
					</div>

					<div class="form-group row">
						<label for="CORREO" class="col-sm-2 col-form-label">CORREO</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="CORREO" name="CORREO">
						</div>
					</div>

					<div class="form-group row">
						<div class="col-sm-10 offset-sm-2">
							<button type="submit" class="btn btn-primary">Sign in</button>
						</div>
					</div>

				</form>
			</div>

		</div>
		
		<div>
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
</body>
</html>