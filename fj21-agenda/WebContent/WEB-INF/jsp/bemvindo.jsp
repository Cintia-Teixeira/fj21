<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Projeto fj21-agenda</title>
</head>
<body>
	<%-- coment�rio em JSP aqui: nossa primeira p�gina JSP --%>
	<%
	String mensagem = "Bem vindo ao sistema de agenda do FJ-21!";
	%>
	<% out.println(mensagem); %>
	
	<br />
	
	<% String desenvolvido = "Desenvolvido por Cintia Teixeira"; %>
	<%= desenvolvido %>
	
	<br />
	
	<% System.out.println("Tudo foi executado!"); %>
</body>
</html>