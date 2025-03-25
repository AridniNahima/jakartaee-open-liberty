<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: IE-pc3
  Date: 21/3/2025
  Time: 18:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registro de Estudiante</title>
</head>
<body>
<h3>Registro de Estudiante</h3>
<form method="post" action="registrar">
    <%
        String nn = (String) request.getParameter("id"); //nn, rescata el id
        if (nn == null) {
            out.append("Nombre: <input name='nombre'><br>");
            out.append("Apellido: <input name='apellido'><br>");
            out.append("Fecha de nacimiento: <input type='date' name='fechaNacimiento'><br>");
            out.append("email: <input name='email'><br>");
        } else {
            //primero rescatamos el registro nn
            String urlBD = "jdbc:postgresql://192.168.1.14:5432/universidadx";
            Connection connection = DriverManager.getConnection(urlBD, "usuario1", "123456ABCxyz+");
            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery("select * from estudiante where id = " + nn);
            if (rs.next()) {
                int id = rs.getInt("id");
                String nombre = rs.getString("nombre");
                String apellido = rs.getString("apellido");
                Date fechaNacimiento = rs.getDate("fecha_nacimiento"); //date debe ser import java.sql
                String email = rs.getString("email");
                //Ahora armamos el resto del formulario
                out.append("Nombre: <input name='nombre' value='" + nombre + "'><br>");
                out.append("Apellido: <input name='apellido' value='" + apellido + "'><br>");
                out.append("Fecha de nacimiento: <input type='date' name='fechaNacimiento' value='" + fechaNacimiento + "'><br>");
                out.append("email: <input name='email' value='" + email + "'><br>");
                out.append("<input type='hidden' name='id' value='" + id + "'><br>"); // id esta oculto porque
            }
        }
    %>
    <input type="submit" value="Registrar">
</form>
</body>
</html>
