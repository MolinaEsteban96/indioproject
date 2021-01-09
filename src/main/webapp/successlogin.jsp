<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link rel="stylesheet" href="/css/style.css">
</head>
<body>
	<div id="bg">
		<nav class="navbar navbar-nav navbar-dark bg-dark">
			<div class="container-fluid d-flex justify-content-between">
				<a class="navbar-brand" href="index.html">IndioProject</a>
				<a href="/registration"><button type="button" class="btn btn-outline-light p-2">Unirse</button></a>
			</div>
		</nav>
		<div id="main">
			<div class="container text-white">
				<div class="row mt-3">
					<div class="col-md-12 text-center">
						<h2>Login realizado con exito!</h2>
						<h4>Nombre: ${userLogin.name} ${userLogin.surname}</h4>
						<h5><a href="index.html" class="text-white">Volver a la pagina pricipal</a></h5>
					</div>
				</div>
				
			</div>
		</div>
		<footer class="text-white text-center mt-5">
			<h6>Ejercicio realizado por Esteban Molina, Desarrollo Web Fullstack</h6>
		</footer>
	</div>
</body>
</html>