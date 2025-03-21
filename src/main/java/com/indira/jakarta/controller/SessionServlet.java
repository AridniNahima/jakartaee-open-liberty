package com.indira.jakarta.controller;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/sesiones")
public class SessionServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private String valorSesion, valorContexto;

    public SessionServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombreUsuario = request.getParameter("usuario");
        response.getWriter().append("Valor de petición: " + nombreUsuario + "\n");
        //inicialiozamos HttpSession (a nivel de usauario)
        HttpSession session = request.getSession();

        if (valorSesion == null)
            session.setAttribute("nomUsuario", nombreUsuario);

        valorSesion = (String) session.getAttribute("nomUsuario");
        response.getWriter().append("Valor de sesión: " + valorSesion + "\n");

        //inicializamos Context, se guarda para todos los usuarios (a nivel global)
        ServletContext contexto = request.getSession().getServletContext();

        if (valorContexto == null)
            contexto.setAttribute("nomUsuario", nombreUsuario);

        valorContexto = (String) contexto.getAttribute("nomUsuario");
        response.getWriter().append("Valor de contexto: " + valorContexto + "\n");




    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("");
    }
}
