package com.indira.jakarta.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/recibir-cookies")
public class RecibirCookieServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public RecibirCookieServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie[] galletas = request.getCookies();

        for (int i = 0; i < galletas.length; i++) {
            response.getWriter().append(galletas[i].getName() + " ");
            response.getWriter().append(galletas[i].getValue());
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("");
    }
}
