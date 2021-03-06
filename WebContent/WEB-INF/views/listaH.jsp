<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!-- FORMATO DE FECHAS -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Huerfanos</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
<!-- script -->
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
	integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
	crossorigin="anonymous"></script>
<spring:url value="/resources" var="urlPublic" />
</head>
<body>
	<div class="card">

		<div class="card-header">Lista de ni�os del Albergue</div>
		<div class="card-body">
			<table class="table table-striped table-bordered table-hover">
				<thead class="thead-dark">
					<tr>
						<th scope="col">ID</th>
						<th scope="col">Nombre</th>
						<th scope="col">Apellidos</th>
						<th scope="col">Edad</th>
						<th scope="col">Genero</th>
						<th scope="col">Estado</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="dato">
						<tr>
							<td>${dato.id}</td>
							<td>${dato.nombre}</td>
							<td>${dato.apellido}</td>
							<td>${dato.edad}</td>
							<td>${dato.genero}</td>
							<td><c:choose>
									<c:when test="${dato.estado=='Adoptado'}">
									<span class="alert alert-success">Adoptado</span>
									</c:when>
									<c:otherwise>
										<span class="alert alert-danger">En Albergue</span>
									</c:otherwise>
								</c:choose>
								<a class="btn btn-sm btn-primary"
									href="Huerfanos/${dato.id}" role="button">
										ver mas detalles </a> <!--  <a class="btn btn-sm btn-primary"
									href="detail?id=${dato.id}&fecha=${fechaBuqueda}" role="button"> Ver
										Detalle Horario </a>--></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<nav>
		<div class="opciones">
			<ul>
				<li><a href="data">Estadisticas</a></li>
				<li><a href="Principal">SALIR</a></li>
				
			</ul>
		</div>
	</nav>
	
</body>
</html>
