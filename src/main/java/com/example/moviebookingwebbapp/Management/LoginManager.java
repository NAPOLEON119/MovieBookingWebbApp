package com.example.moviebookingwebbapp.Management;
import com.example.moviebookingwebbapp.Classes.User;
import java.util.List;

public class LoginManager {

    private final UserManager UserManager;

    public LoginManager(UserManager UserManager) {
        this.UserManager = UserManager;
    }

    public User login(String username, String password) {
        List<User> users = UserManager.getAllUsers();
        for (User user : users) {
            if (user.getUsername().equals(username) && user.getPassword().equals(password)) {
                return user;
            }
        }
        return null;
    }
}
