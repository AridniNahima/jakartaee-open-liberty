<%--
  Created by IntelliJ IDEA.
  User: Indira Poma
  Date: 20/3/2025
  Time: 18:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;  charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>
<%

%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Conexión JDBC</title>
    <%@ include file="EstiloBootstrap.jsp" %>
</head>
<body>
<%
    //0 paso: agregar import a java.sql
    //1er paso: agregar dependencia en POM

    //2do paso: inscribir el driver
    Class.forName("org.postgresql.Driver");

    //3er Paso: Crear una conexion (conexion a la base da datos, nombre de base de datos, contraseña de base de datos)
    String urlBD = "jdbc:postgresql://192.168.1.14:5432/universidadx";
    Connection connection = DriverManager.getConnection(urlBD, "usuario1", "123456ABCxyz+");

    //4to paso: Crear un statment
    Statement statement = connection.createStatement(); //recibe cualquier sentencia Sql

    //5to paso: ejecutar un Query
    ResultSet resultSet = statement.executeQuery("SELECT * FROM estudiante;");

    //6to paso: procesar los resultdos

    resultSet.next();
    String nombre = resultSet.getString("nombre");

    //String nombre1 = resultSet.getString(3);
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
<div class="container">
    <div class="row">
        <div class="col-1"></div>
        <div class="col-10">
            <table class="table">
                <tr>
                    <td>Id</td>
                    <td>Nombre</td>
                    <td>Apellido</td>
                    <td>Fecha de Nacimiento</td>
                    <td>Email</td>
                    <td>Acciones</td>
                </tr>
                <%
                    while (resultSet.next()) {

                        int id = resultSet.getInt(1);
                        String nombres = resultSet.getString(2);
                        String apellidos = resultSet.getString(3);
                        Date fechaNacimiento = resultSet.getDate(4);
                        String email = resultSet.getString(5);

                        out.append("<tr>");
                        out.append("<td>" + id);
                        out.append("</td>");
                        out.append("<td>" + nombres);
                        out.append("</td>");
                        out.append("<td>" + apellidos);
                        out.append("</td>");
                        out.append("<td>" + fechaNacimiento);
                        out.append("</td>");
                        out.append("<td>" + email);
                        out.append("</td>");

                        out.append("<td>");
                        out.append("<a class = 'btn btn-primary' href='/RegistroEstudiante.jsp?id=" + id + "'>Editar");
                        out.append("</a>");
                        out.append("<a class = 'btn btn-danger' href='/eliminar?id=" + id + "'>Eliminar");
                        out.append("</a>");
                        out.append("</td>");
                        out.append("</tr>");
                    }

                    resultSet.close();
                    statement.close();
                    connection.close();
                %>
            </table>
        </div>
    </div>
</div>
</body>
</html>
