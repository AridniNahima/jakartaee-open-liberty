<%@ page contentType="text/html;  charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Sesion</title>
</head>
<body>
<!--
<form action="miservlet">
    Usuario: <input type="text" name="nombreusuario" placeholder="Nombre de Usuario"><br>
    <input type="submit" value="Enviar">
</form>

<h3>Ahora con POST</h3>
<form action="miservlet" method="POST">
    Usuario: <input type="text" name="nombreusuario" placeholder="Nombre de Usuario"><br>
    <input type="submit" value="Enviar">
</form>
-->
<form action="miservlet" method="POST">
    Usuario: <input type="text" name="usuario" placeholder="Usuario..."><br>
    Contraseña: <input type="password" name="contraseña" placeholder="Contraseña..."><br>
    <input type="submit" value="Enviar">
</form>
</body>
</html>
