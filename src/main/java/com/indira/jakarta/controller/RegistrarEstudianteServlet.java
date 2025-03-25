package com.indira.jakarta.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

@WebServlet("/registrar")
public class RegistrarEstudianteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public RegistrarEstudianteServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("<--- 3er servlet --->");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Rescatar los parametros del formulario
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String fechaNacimiento = request.getParameter("fechaNacimiento");
        String email = request.getParameter("email");
        String id = request.getParameter("id"); //se añade id para poder editar y eliminar
        //Establecer la conexion a la base de datos
        try {
            Class.forName("org.postgresql.Driver");
            String urlBD = "jdbc:postgresql://192.168.1.14:5432/universidadx";
            Connection connection = DriverManager.getConnection(urlBD, "usuario1", "123456ABCxyz+");
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO estudiante (nombre,apellido,fecha_nacimiento, email) VALUES (?,?,?,?)"); // Primero prepara con una cadena CON
            if(id != null){
                preparedStatement = connection.prepareStatement("UPDATE estudiante set nombre = ?, apellido = ?, fecha_nacimiento = ?, email = ? WHERE id = "+id);
            }
            preparedStatement.setString(1, nombre);
            preparedStatement.setString(2, apellido);

            SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
            preparedStatement.setDate(3, new java.sql.Date(formato.parse(fechaNacimiento).getTime()));

            preparedStatement.setString(4, email);
            preparedStatement.executeUpdate();//recibe un numero podemos guardar en una variable si lo requerimos "int n =preparedStatement.executeUpdate();"

        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect("Conexion.jsp");
    }
}
