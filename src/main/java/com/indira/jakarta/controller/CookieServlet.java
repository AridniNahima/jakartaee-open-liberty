package com.indira.jakarta.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebInitParam;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(urlPatterns = "/cookies", initParams = {
        @WebInitParam(name = "USD", value = "123")})

public class CookieServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public CookieServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie galleta1 = new Cookie("usuario", "pepe");

        Cookie galleta2 = new Cookie("token", "123abc456");
        Cookie galleta3 = new Cookie("id", "u07");

        //galleta1.setComment("Galleta usuarios");
        //galleta2.setComment("asdad");
        galleta3.setMaxAge(1268);


        response.addCookie(galleta1);
        response.addCookie(galleta2);
        response.addCookie(galleta3);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("");
    }
}
