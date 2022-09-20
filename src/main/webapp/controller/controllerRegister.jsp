<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="clases.*"%>
<%@page import="dato.*"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Usuario usuario = new Usuario(request.getParameter("nombreUsuario"));
		UsuarioDAO usuariodao = new UsuarioDAO();
		boolean registroExitoso = usuariodao.seleccionarUsuario(usuario);
		if(registroExitoso){
			response.sendRedirect("../html/game.html");
		}else{
			usuariodao.insertarUsuario(usuario);
			response.sendRedirect("../html/game.html");
		}
	%>
</body>
</html>