<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
  </script>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
<title>INGRESO AL SISTEMA</title>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	background-image:url('https://png.pngtree.com/thumb_back/fw800/back_pic/03/82/23/2357c6c0ce98502.jpg');
	background-color: #17a2b8;
	height: 100vh;
	font: normal 20px solid,arial,sans-serif;
	ont-family: 'Dancing Script', cursive!important;
	font-size: 20px;}
	
}

#login .container #login-row #login-column #login-box {
	margin-top: 60px;
	max-width: 600px;
	border: 1px solid #9C9C9C;
	background-color: #ffffff;
	font: normal 14px Roboto,arial,sans-serif;
  font-family: 'Dancing Script', cursive!important;
  box-shadow: -10px -10px 9px #14abc4; 
}

#login .container #login-row #login-column #login-box #login-form {
	padding: 20px;
}

#login .container #login-row #login-column #login-box #login-form #register-link
	{
	margin-top: -85px;
}
</style>
</head>
<body>

	<div id="login">
		<h3 class="text-center text-white pt-5">COLEGIO CHAMPAGNAT</h3>
		<h5 class="text-center text-white">LA EDUCACION ES LO PRIMERO</h5>
		<div class="container">
			<div id="login-row"
				class="row justify-content-center align-items-center">
				<div id="login-column" class="col-md-6">
					<div id="login-box" class="col-md-12">
						<form id="login-form" class="form" action="Ingresar" method="post">
							<h3 class="text-center text-info">Ingreso al sistema</h3>
							<div class="form-group">
								<label for="username" class="text-info">Usuario:</label><br>
								<input type="text" name="username" id="username"
									class="form-control">
							</div>
							<div class="form-group">
								<label for="password" class="text-info">Contraseña:</label><br>
								<input type="password" name="password" id="password"
									class="form-control">
							</div>
							<div class="form-group">
								<input type="submit" name="submit" class="btn btn-info btn-md"
									value="Ingresar">
							</div>
							<c:if test="${ not empty error }">
								<div class="alert alert-danger" role="alert">${error}</div>
							</c:if>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="js/jquery.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>