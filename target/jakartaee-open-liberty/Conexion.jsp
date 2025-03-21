<%--
  Created by IntelliJ IDEA.
  User: IE-pc3
  Date: 20/3/2025
  Time: 18:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<html>
<head>
    <title>Conexión JDBC</title>
    <%@include file="EstiloBootstrap.jsp" %>
</head>
<body>
<%
    //0 paso: agregar import a java.sql
    //1er paso: agregar dependencia en POM

    //2do paso: inscribir el driver
    Class.forName("org.postgresql.Driver");

    //3er Paso: Crear una conexion (conexion a la base da datos, nombre de base de datos, contraseña de base de datos)
    String urlBD = "jdbc.postgresql://192.168.1.14:5432/universidadx";
    Connection connection = DriverManager.getConnection(urlBD, "usuario1", "123456ABCxyz+");

    //4to paso: Crear un statment
    Statement statement = connection.createStatement();

    //5to paso: ejecutar un Query
    ResultSet resultSet = statement.executeQuery("SELECT * FROM estudiante;");

    //6to paso: procesar los resultdos

    while (resultSet.next()) {
        //guardar los datos en una lista
    }
    resultSet.next();
    String nombre = resultSet.getString("nombre");
    String nombre1 = resultSet.getString(3);
%>
<%= "Éxito conectandose a la base de datos"%>
<br>
El nombre es: <%= nombre %>

<%
    resultSet.next();
    nombre = resultSet.getString("nombre");
%>
<br>
El nombre es: <%= nombre %>

<%
    resultSet.close();
    statement.close();
    connection.close();
%>
</body>
</html>
