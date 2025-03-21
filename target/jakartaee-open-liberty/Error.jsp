<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
  <head>
    <%@ include file="EstiloBootstrap.jsp"%>
	<meta charset="UTF-8">
	<title>ERROR</title>
  </head>
  <body>
    <h1 class="text-danger">Ocurrió un error</h1>
    <p class="text-info-emphasis">Contactese con soporte</p>
    <%= exception.getMessage() %>
  </body>
</html>