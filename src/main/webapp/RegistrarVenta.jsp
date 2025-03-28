<%--
  Created by IntelliJ IDEA.
  User: IE-pc3
  Date: 28/3/2025
  Time: 18:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registrar Venta</title>
</head>
<body>
<table class="table" border="1">
    <thead class="thead-dark">
    <tr>
        <th scope="col">NIT:</th>
        <th scope="col"><input type="text" name="nit" placeholder="Nit..."></th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <th>Cliente:</th>
        <td><input type="text" name="nit" placeholder="Nit..."></td>
    </tr>
    <tr>
        <td>Seleccionar Producto</td>
        <td>
            <div class="dropdown">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Dropdown button
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="#">Arroz - 10 bs</a>
                    <a class="dropdown-item" href="#">Fideo - 5 bs </a>
                    <a class="dropdown-item" href="#">Trigo - 8 bs</a>
                </div>
            </div>
        </td>
    </tr>
    <tr>
        <th>Cantidad</th>
        <td></td>
    </tr>
    <tr>
        <th>
            <button type="button" class="btn btn-secondary">Agregar Producto</button>
        </th>
        <td></td>
    </tr>
    </tbody>
</table>
</body>
</html>
