<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags/" prefix="tg" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Projeto fj21-agenda</title>

<link href="css/jquery.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<script src="js/jquery-ui.js"></script>
</head>
<body>
<c:import url="cabecalho.jsp" />
	<!-- <h1>Altera Contato</h1> -->
	<hr />
	<form action="adicionaContato" method="post">
		<input type="hidden" name="id" value="${param.id}">
		<label>Nome:</label> <input type="text" name="nome" value="${param.nome}"><br>
		<label>E-mail:</label> <input type="text" name="email" value="${param.email}"><br>
		<label>Endereço:</label> <input type="text" name="endereco" value="${param.endereco}"><br>
		<label>Data Nascimento:</label> 
		<tg:campoData id="dataNascimento" value="${param.dataNascimento}" /><br>
			
		
		<input type="submit" value="Alterar" />
	</form>
<c:import url="rodape.jsp" />
</body>
</html>