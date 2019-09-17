<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Projeto fj21-agenda</title>
</head>
<body>
	<c:import url="cabecalho.jsp"></c:import>
	<!-- cria o DAO -->
	<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao"></jsp:useBean>

	<table border="1">
		<tr bgcolor='E9967A'>
			<td>ID</td>
			<td>Nome</td>
			<td>E-mail</td>
			<td>Endereço</td>
			<td>Data de Nascimento</td>
		</tr>
		<!--  percorre contatos montando as linhas da tabela -->
		<c:forEach var="contato" items="${dao.lista}" varStatus="id">
			<tr bgcolor="#${id.count % 2 == 0 ? 'E9967A' : 'FDF5E6'}">
				<td>${id.count}</td>
				<td>${contato.nome}</td>
				<td><c:choose>
						<c:when test="${not empty contato.email}">
							<a href="mailto:${contato.email}">${contato.email}</a>
						</c:when>
						<c:otherwise>E-mail não informado</c:otherwise>
					</c:choose></td>
				<td>${contato.endereco}</td>
				<td>
				<fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy" />
				</td>
			</tr>
		</c:forEach>
	</table>
	<c:import url="rodape.jsp"></c:import>
</body>
</html>