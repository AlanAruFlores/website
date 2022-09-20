<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dato.*" %>;
<%@page import="clases.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int cantidadPuntos  = Integer.parseInt(request.getParameter("puntos"));
		UsuarioDAO usuariodao = new UsuarioDAO();
		usuariodao.establecerPuntos(Usuario.idSeleccionado, cantidadPuntos);
		response.sendRedirect("../html/tablaPosiciones.jsp");
	%>
</body>
</html>