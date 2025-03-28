package com.indira.jakarta.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class MiPrimerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public MiPrimerServlet() {
        super();
    }

    //request todo lo que el cliente solicita
    //response toda las respuiestas que brinda el sitio

    /**
     * @see HttpServlet#doGet(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        //en el request envia la peticion (recivimos lo del form) y respondemos en el response
        String valor = request.getParameter("nombreusuario");
        response.getWriter().append("Served at: ").append("Holaaaaaa :D, me enviaste " + valor);

        String valorImportante1 = "codigo interno Y";
        int valorImportante2 = 153;

        request.setAttribute("valor1", valorImportante1);
        request.setAttribute("valor2", valorImportante2);

        RequestDispatcher var = request.getRequestDispatcher("respuesta");
        var.forward(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*String valor = request.getParameter("nombreusuario");
        response.getWriter().append("<html><body><h2>Holaaaaaa :D, me enviaste " + valor + "</h2></body></html>");
        */
        String usuario = request.getParameter("usuario");
        String contraseña = request.getParameter("contraseña");
        if (usuario.equals("admin") && contraseña.equals("admin"))
            response.getWriter().append("<html><body><h4>Usuario Activo " + usuario + "</h4></body></html>");
        else
            response.getWriter().append("<html><body><h4 class='text-danger'>Usuario Incorrecto</h4></body></html>");


    }
}
