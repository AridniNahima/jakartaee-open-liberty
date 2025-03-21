<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TITULO</title>
</head>
<body>
	<form action="miservlet">
		Usuario: <input type="text" name="nombreusuario" placeholder="Nombre de Usuario"><br>
		<input type="submit" value="Enviar">
	</form>
	<h3>Ahora con POST</h3>
	<form action="miservlet" method="POST">
    	Usuario: <input type="text" name="nombreusuario" placeholder="Nombre de Usuario"><br>
    	<input type="submit" value="Enviar">
    </form>
    <form action="miservlet" method="POST">
        	Usuario: <input type="text" name="usuario" placeholder="Nombre de Usuario..."><br>
        	Contraseña: <input type="text" name="contraseña" placeholder="Contraseña..."><br>
        	<input type="submit" value="Enviar">
        </form>
</body>
</html>
