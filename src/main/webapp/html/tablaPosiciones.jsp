<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dato.*" %>
<%@page import="clases.*" %>
<%@page import="java.util.*" %>

<!DOCTYPE html>
<html lang = "es">
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Fira+Sans:wght@500&family=Kanit:wght@300&family=Oswald:wght@300;400&display=swap" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Fira+Sans:wght@500&family=Kanit:wght@300&family=Mouse+Memoirs&family=Oswald:wght@300;400&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="../styles/posicionamiento.css">
<meta charset="UTF-8">
<title>Posiciones</title>
</head>
<body>
	<header class="row">
		<h1>Posicionamiento</h1>
	</header>
	<main>
		<table class="tablaPosicionamiento">
			<thead>
				<th colspan="2">Top Jugadores</th>
			<thead>		
			<%
				UsuarioDAO usuariodao = new UsuarioDAO();
				List<Usuario> listaUsuarios = usuariodao.getUsuarios();
				for(Usuario usuario : listaUsuarios){
					out.println("<tr><td>"+usuario.getNombre()+"</td><td>"+usuario.getPuntos()+"</td></tr>");
				}
			%>
			<tr><td colspan="2">......</td></tr>
		</table>
		<a href="../index.jsp" title="Volver al inicio"><button class="btn">Volver al Inicio</button></a>
	</main>
	
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>
	<footer>
		<ul>
			<li>Terminos</li>
			<li>Condiciones</li>
			<li>Informacion</li>
			<li>Sobre Mi</li>
		</ul>
	</footer>
</body>
</html>