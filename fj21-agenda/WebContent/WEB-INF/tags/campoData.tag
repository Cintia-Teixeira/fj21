<%@ tag language="java" pageEncoding="ISO-8859-1"%>

<%@ attribute name="id" required="true" %>
<%@ attribute name="value" required="false" %>

<input type="text" id="${id}" name="${id}" />
<script>
	$("#${id}").datepicker({dateFormat: 'dd/mm/yy'});
	<!--posso percorrer os meses do ano e mudar de ano -->
	$("#${id}").datepicker({changeYear: true});
	
	<!--Selecionando o ano por meio de um dropdown-->
	<!--getter-->
	var changeYear=$("#${id}").datepicker("option", "changeYear");
	<!--setter-->
	$("#${id}").datepicker( "option", "changeYear", true );
	
	<!--Selecionando o mês por meio de um dropdown-->
	<!--getter-->
	var changeMonth=$("#${id}").datepicker("option", "changeMonth");
	<!--setter-->
	$("#${id}").datepicker( "option", "changeMonth", true );


</script>