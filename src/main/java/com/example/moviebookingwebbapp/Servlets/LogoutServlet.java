package com.example.moviebookingwebbapp.Servlets;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(false); // don't create if not exists
        if (session != null) {
            session.invalidate(); // destroy session
        }
        response.sendRedirect("index.html"); // redirect to homepage
    }
}
