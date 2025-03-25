package com.indira.jakarta.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

@WebServlet("/eliminar")
public class EliminarEstudianteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public EliminarEstudianteServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idEstudiante = request.getParameter("id");

        try {
            //Conexión a BBDD
            String urlBD = "jdbc:postgresql://192.168.1.14:5432/universidadx";
            Connection connection = DriverManager.getConnection(urlBD, "usuario1", "123456ABCxyz+");
            //se crea un objeto
            Statement statement = connection.createStatement();
            statement.execute("DELETE FROM estudiante WHERE id = " + idEstudiante);//borramos el registro
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("");
    }
}
