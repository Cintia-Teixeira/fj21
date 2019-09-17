<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tg" %>
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
	<!-- <h1>Adiciona Contatos</h1> -->
	<hr />
	<form action="adicionaContato" method="post">
		Nome: <input type="text" name="nome" /><br />
		E-mail: <input type="text" name="email" /><br />
		Endereço: <input type="text" name="endereco" /><br />
		Data Nascimento: <tg:campoData id="dataNascimento" /><br />
			<!-- Texto substituído pela declaração acima 
			<input type="text" name="dataNascimento" /><br />  -->
		
		<input type="submit" value="Gravar" />
	</form>
<c:import url="rodape.jsp" />
</body>
</html>