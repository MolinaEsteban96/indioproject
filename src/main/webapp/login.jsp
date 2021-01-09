<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
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
				<div class="row">
                    <div class="col-md-12">
                        <h2 class="text-center mt-3">Ingresa en nuestro sistema</h2>
                    </div>
                </div>
                <form:form action="/checklogin" id="form" modelAttribute="userLogin">
                    <div class="row mt-3">
                        <div class="col-md-6 form-group">
                            <h4>Nombre de usuario</h4>
                            <form:input path="username" id="username" class="form-control"/>
                            <p id="errorUsername"></p>
                        </div>
                        <div class="col-md-6 form-group">
                            <h4>Contraseña</h4>
                            <form:input type="password" path="password" id="password" class="form-control"/>
                            <p id="errorPassword"></p>
                        </div>
                    </div>
                    <div class="row mt-3 text-center">
                        <div class="col-sm-12 form-group">
                            <button type="submit" class="btn btn-outline-light">Enviar</button>
                        </div>
                    </div>
                </form:form>
			</div>
		</div>
		<footer class="text-white text-center mt-5">
			<h6>Ejercicio realizado por Esteban Molina, Desarrollo Web Fullstack</h6>
		</footer>
    </div>
    
    
    
  	<script src="https://code.jquery.com/jquery-3.5.1.slim.js" integrity="sha256-DrT5NfxfbHvMHux31Lkhxg42LY6of8TaYyK50jnxRnM=" crossorigin="anonymous"></script>
</body>
</html>