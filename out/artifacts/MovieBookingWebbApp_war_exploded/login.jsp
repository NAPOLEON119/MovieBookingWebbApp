<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Movie Theme</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/global.css" rel="stylesheet">
    <link href="css/blog.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="main_o main">
    <div class="main_o1 bg_back">
        <section id="header">
            <nav class="navbar navbar-expand-md navbar-light px_4" id="navbar_sticky">
                <div class="container-fluid">
                    <a class="navbar-brand p-0 fw-bold text-white" href="index.html"><i class="fa fa-modx col_oran"></i> Movie Theme</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mb-0 ms-auto">
                            <li class="nav-item"><a class="nav-link" href="index.html">Home</a></li>
                            <li class="nav-item"><a class="nav-link" href="about.html">About Us</a></li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Movies</a>
                                <ul class="dropdown-menu drop_1">
                                    <li><a class="dropdown-item" href="movies.html">Movies</a></li>
                                    <li><a class="dropdown-item" href="detail.html">Movie Details</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Blogs</a>
                                <ul class="dropdown-menu drop_1">
                                    <li><a class="dropdown-item" href="blog.html">Blogs</a></li>
                                    <li><a class="dropdown-item" href="blog_detail.html">Blog Details</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle active" href="#" role="button" data-bs-toggle="dropdown">Pages</a>
                                <ul class="dropdown-menu drop_1">
                                    <li><a class="dropdown-item" href="faq.html">Faqs</a></li>
                                    <li><a class="dropdown-item" href="login.jsp">Login</a></li>
                                    <li><a class="dropdown-item" href="register.jsp">Register</a></li>
                                    <li><a class="dropdown-item" href="ticket.html">Ticket</a></li>
                                </ul>
                            </li>
                            <li class="nav-item"><a class="nav-link" href="contact.html">Contact Us</a></li>
                        </ul>
                        <ul class="navbar-nav mb-0 ms-auto">
                            <li class="nav-item"><a class="nav-link fs-5" data-bs-target="#exampleModal2" data-bs-toggle="modal"><i class="fa fa-search"></i></a></li>
                            <li class="nav-item"><a class="nav-link fs-5" href="#"><i class="fa fa-user"></i></a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </section>
        <section id="center" class="centre_o pt-5 pb-5">
            <div class="container-xl">
                <div class="row centre_o1 text-center">
                    <div class="col-md-12">
                        <h1 class="text-white font_60">Login</h1>
                        <h5 class="mb-0 mt-3 fw-normal col_oran"><a class="text-light" href="#">Home</a> <span class="mx-2 text-muted">/</span> Login</h5>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>

<div class="border_dashed"></div>

<section id="login" class="p_3">
    <div class="container-xl">
        <div class="row login_1">
            <div class="col-md-12">
                <div class="login_1m p-5 px-4 bg-light w-50 mx-auto">
                    <form id="loginForm">
                        <h6 class="mb-3 fw-bold">Username</h6>
                        <input class="form-control" placeholder="Username" type="text" name="username" required>
                        <h6 class="mb-3 fw-bold mt-4">Password</h6>
                        <input class="form-control" placeholder="Password" type="password" name="password" required>
                        <div class="mt-4">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-check">
                                        <input type="checkbox" class="form-check-input" id="rememberMe">
                                        <label class="form-check-label" for="rememberMe">Remember me</label>
                                    </div>
                                </div>
                                <div class="col-sm-6 text-sm-end">
                                    <a class="text-decoration-none text-muted" href="#">Lost your password?</a>
                                </div>
                            </div>
                        </div>
                        <h6 class="mt-3 center_sm">
                            <button type="submit" class="button_2 d-block text-center w-100 border-0">LOGIN</button>
                        </h6>
                    </form>
                    <div id="loginMessage" class="mt-3 text-center"></div>
                </div>
            </div>
        </div>
    </div>
</section>

<script>
    function handleLogin(event) {
        event.preventDefault();

        const form = document.getElementById("loginForm");
        const formData = new FormData(form);

        fetch("login", {
            method: "POST",
            body: formData
        })
            .then(response => {
                if (response.redirected) {
                    window.location.href = response.url;
                } else {
                    return response.text();
                }
            })
            .then(data => {
                if (data) {
                    document.getElementById("loginMessage").innerHTML = `<span class="text-danger">${data}</span>`;
                }
            })
            .catch(error => {
                console.error("Login error:", error);
                document.getElementById("loginMessage").innerHTML = `<span class="text-danger">An error occurred. Please try again.</span>`;
            });
    }

    document.getElementById("loginForm").addEventListener("submit", handleLogin);
</script>

</body>
</html>
