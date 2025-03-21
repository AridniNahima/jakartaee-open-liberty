<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page  import="java.util.Random" %>
<%@ page  errorPage="Error.jsp" %>

<!DOCTYPE html>
<html>
  <head>
    <%@ include file="EstiloBootstrap.jsp"%>
	<meta charset="UTF-8">
	<title>Ejemplos JSP</title>
  </head>
  <body>
	<h3>Ejemplo de uso de Scriptlet</h3>
	<%-- http://localhost:9080/ejemplojsp.jsp?n=7 --%>
	<%
		int n = Integer.parseInt(request.getParameter("n"));
	%>
	<p>A continuación se muestra el valor de
	una variable:</p>
	<%= n %><%-- Expresión --%>
	<p>El siguiente es un valor "aleatorio"</p>
	<%! Random aleatorio = new Random(); %><%-- Declaración --%>

	<%= aleatorio.nextInt(100,700) %>

	<div class="display-1">Ejemplo de estilos con Bootstrap</div>

    <p>A continuacionn viene una división</p>
    <%@ include file="Operaciones.jsp" %>

  </body>
</html>