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
    private final String FILE_PATH = "D:/SLIIT/OOP_FinalProject/MovieBookingWebbApp/users.txt"; // ✅ Adjust if needed

    @Override
    public void init() throws ServletException {
        userManager = new UserManager();
        userManager.loadFromFile(FILE_PATH);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // ✅ Validate required fields
        if (username == null || email == null || password == null ||
                username.trim().isEmpty() || email.trim().isEmpty() || password.trim().isEmpty()) {
            // Redirect with error message
            response.sendRedirect("register.jsp?error=All+fields+are+required");
            return;
        }

        // ✅ Check for duplicate username
        if (userManager.userExists(username)) {
            response.sendRedirect("register.jsp?error=Username+already+exists");
            return;
        }

        // ✅ Add and save user
        User newUser = new User(username, email, password);
        userManager.addUser(newUser);
        userManager.saveToFile(FILE_PATH);

        // ✅ Redirect on success
        response.sendRedirect("index.html");
    }
}
