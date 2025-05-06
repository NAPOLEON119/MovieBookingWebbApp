package com.example.moviebookingwebbapp.Servlets;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.*;


@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    private final String filePath = "D:/SLIIT/Movie_BookingWeb/MovieBookingWebbApp/users.txt";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean validUser = false;

        try (BufferedReader reader = new BufferedReader(new FileReader(filePath))) {
            String line;
            while ((line = reader.readLine()) != null) {
                String[] parts = line.split(",");
                if (parts.length == 3 && parts[0].equals(username) && parts[2].equals(password)) {
                    validUser = true;
                    break;
                }
            }
        }

        if (validUser) {
            HttpSession session = request.getSession();
            session.setAttribute("username", username);
            response.sendRedirect("dashboard.jsp");
        } else {
            response.sendRedirect("login.jsp?error=true");
        }
    }
}
