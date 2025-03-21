package com.indira.jakarta.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/respuesta")
public class RespuestaServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public RespuestaServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("<--- agregamos textos externos ---> valor 1:" +request.getAttribute("valor1") + " valor 2: "+request.getAttribute("valor2"));
        response.sendRedirect("redireccion");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Holaaaaaa :D, me enviaste ");
    }
}
