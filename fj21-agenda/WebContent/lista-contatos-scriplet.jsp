<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,
		br.com.caelum.agenda.dao.*,
		br.com.caelum.agenda.modelo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Projeto fj21-agenda</title>
</head>
<body>
	<table>
		<%
		ContatoDao dao = new ContatoDao();
		List<Contato> contatos = dao.getLista();
		for (Contato contato : contatos) {
		%>
			<tr>
				<td>Nome</td>
				<td>E-mail</td>
				<td>Endereço</td>
				<td>Data de Nascimento</td>
			</tr>
		
			<tr>
				<td><%=contato.getNome() %></td>
				<td><%=contato.getEmail() %></td>
				<td><%=contato.getEndereco() %></td>
				<%
				Date date = contato.getDataNascimento().getTime();
				SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyy");
				String data = sdf.format(date); %>
				<td><%=data %></td>
			</tr>
	
		<%
		}
		%>
	
	</table>
	
</body>
</html>