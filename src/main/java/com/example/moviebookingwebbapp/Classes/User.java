package com.example.moviebookingwebbapp.Classes;

public class User {
    private String username;
    private String email;
    private String password;

    public User(String username, String email, String password) {
        this.username = username;
        this.email = email;
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String toFileString() {
        return username + "," + email + "," + password;
    }

    public static User fromFileString(String line) {
        String[] parts = line.split(",");
        if (parts.length == 3) {
            return new User(parts[0], parts[1], parts[2]);
        }
        return null;
    }
}
