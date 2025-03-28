<%--
  Created by IntelliJ IDEA.
  User: IE-pc3
  Date: 26/3/2025
  Time: 18:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--nos sirve para hacer tratamirnto de varios htmls-->
<%@ taglib prefix="core" uri="jakarta.tags.core" %>
<%@ taglib prefix="sql" uri="jakarta.tags.sql" %>
<%@ taglib prefix="function" uri="jakarta.tags.functions" %>
<!--interactua con cadenas numeros-->

<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String[] array = new String[5];
    array[0] = "Casa";
    array[1] = "Cuarto";
    array[2] = "Puerta";
    array[3] = "Pared";
    array[4] = "Piso";
    pageContext.setAttribute("array1", array);
%>

<core:set var="mensaje" value="Hola Mundo..."/>

<p>
    ${function:toUpperCase(mensaje)} <!--Imprimir en mayusculas-->
</p>

<h3> Tabla </h3>
<%= array.length %>

<table border="1">
    <core:forEach items="${array1}" var="cosa">
        <tr>
            <td><core:out value="${cosa}"/></td>
        </tr>
    </core:forEach>
</table>

<h3>TagLib SQL</h3>
<sql:setDataSource
        var="ds"
        driver="org.postgresql.Driver"
        url="jdbc:postgresql://192.168.1.14:5432/universidadx"
        user="usuario1"
        password="123456ABCxyz+"
/>
<sql:query var="rs">
    SELECT * FROM estudiante;
</sql:query>

<c:forEach var="student" items="${rs.rows}">
    ${student.nombre} ${student.apellido}<br>
</c:forEach>
</body>
</html>
