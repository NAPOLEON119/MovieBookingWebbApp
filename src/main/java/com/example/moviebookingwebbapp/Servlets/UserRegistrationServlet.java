package com.example.moviebookingwebbapp.Servlets;

import com.example.moviebookingwebbapp.Classes.User;
import com.example.moviebookingwebbapp.Management.UserManager;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/registerServlet")
public class UserRegistrationServlet extends HttpServlet {
    private UserManager userManager;
        private final String FILE_PATH = "D:/SLIIT/Movie_BookingWeb/MovieBookingWebbApp/users.txt";

    @Override
    public void init() {
        userManager = new UserManager();
        userManager.loadFromFile(FILE_PATH);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if (username == null || email == null || password == null ||
                username.trim().isEmpty() || email.trim().isEmpty() || password.trim().isEmpty()) {
            response.sendRedirect("register.jsp?error=Missing fields");
            return;
        }

        if (userManager.userExists(username)) {
            response.sendRedirect("register.jsp?error=Username already exists");
            return;
        }

        User newUser = new User(username, email, password);
        userManager.addUser(newUser);
        userManager.saveToFile(FILE_PATH);

        response.sendRedirect("index.html"); // Go to homepage
    }
}
