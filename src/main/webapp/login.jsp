<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login | Movie Booking</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to bottom, #141e30, #243b55);
            font-family: 'Segoe UI', sans-serif;
            color: white;
            overflow-x: hidden;
        }

        .login-box {
            background-color: rgba(255, 255, 255, 0.1);
            border-radius: 15px;
            padding: 40px;
            margin-top: 60px;
            backdrop-filter: blur(10px);
            animation: floatIn 1.2s ease-in-out forwards;
        }

        @keyframes floatIn {
            0% {
                opacity: 0;
                transform: translateY(50px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .emoji-road {
            font-size: 2rem;
            text-align: center;
            animation: moveCar 10s linear infinite;
            white-space: nowrap;
        }

        @keyframes moveCar {
            0% { transform: translateX(-100%); }
            100% { transform: translateX(100vw); }
        }

        .form-control {
            background-color: rgba(255, 255, 255, 0.2);
            color: white;
            border: none;
        }

        .form-control::placeholder {
            color: #ccc;
        }

        .btn-primary {
            background-color: #ff5733;
            border: none;
            font-weight: bold;
        }

        .btn-primary:hover {
            background-color: #ff2e00;
        }
    </style>
</head>
<body>

<div class="emoji-road mt-3">
    🧍‍♂️🧍‍♀️🧍‍♂️🧍‍♀️ 🚗🚗🚙🚕🚌 — Welcome to the Movie Booking Portal!
</div>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="login-box">
                <h2 class="text-center mb-4">🎬 Movie Booking Login</h2>
                <form method="post" action="loginServlet">
                    <div class="mb-3">
                        <label class="form-label fw-bold">Username</label>
                        <input type="text" class="form-control" name="username" placeholder="Enter Username" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label fw-bold">Password</label>
                        <input type="password" class="form-control" name="password" placeholder="Enter Password" required>
                    </div>
                    <button type="submit" class="btn btn-primary w-100">🚪 Login</button>
                </form>

                <%
                    String error = request.getParameter("error");
                    if (error != null) {
                %>
                <div class="mt-3 text-center text-warning">
                    ❌ Invalid username or password!
                </div>
                <% } %>
            </div>
        </div>
    </div>
</div>

<script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>
