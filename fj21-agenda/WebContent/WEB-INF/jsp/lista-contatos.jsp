<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Projeto fj21-agenda</title>
</head>
<body>
	<!-- cria o DAO -->
	<%--<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao"></jsp:useBean>--%>
	<!-- a linha acima foi removida devido à utilização da arquitetura MVC -->

	<table border="1">
		<tr bgcolor='E9967A'>
			<td>ID</td>
			<td>Nome</td>
			<td>E-mail</td>
			<td>Endereço</td>
			<td>Data de Nascimento</td>
			<td />
			<td />
		</tr>
		<!--  percorre contatos montando as linhas da tabela -->
		<%--<c:forEach var="contato" items="${dao.lista}" varStatus="id">--%>
		<!-- a linha acima foi substituída devido à utilização da arquitetura MVC -->
		<c:forEach var="contato" items="${contatos}">
			<tr bgcolor="#${id.count % 2 == 0 ? 'E9967A' : 'FDF5E6'}">
				<td>${contato.id}</td>
				<td>${contato.nome}</td>
				<td><c:choose>
						<c:when test="${not empty contato.email}">
							<a href="mailto:${contato.email}">${contato.email}</a>
						</c:when>
						<c:otherwise>E-mail não informado</c:otherwise>
					</c:choose></td>
				<td>${contato.endereco}</td>
				<td><fmt:formatDate value="${contato.dataNascimento.time}"
						pattern="dd/MM/yyyy" /></td>
				<td><a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover</a>
				</td>
				<td><a href="mvc?logica=AlteraContatoLogic&id=${contato.id}">Alterar</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<a href="mvc?logica=AdicionaContatoLogic">Adicionar Contato</a>
</body>
</html>