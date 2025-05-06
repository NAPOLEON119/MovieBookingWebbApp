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

<!-- Header and Navigation here (same as yours) -->

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
    document.getElementById("loginForm").addEventListener("submit", function(event) {
        event.preventDefault();
        const form = event.target;
        const formData = new FormData(form);

        fetch("login", {
            method: "POST",
            body: formData
        })
            .then(res => res.text())
            .then(data => {
                if (data.trim() === "success") {
                    window.location.href = "dashboard.jsp";
                } else {
                    document.getElementById("loginMessage").innerHTML =
                        `<span class="text-danger">${data}</span>`;
                }
            })
            .catch(err => {
                console.error(err);
                document.getElementById("loginMessage").innerHTML =
                    `<span class="text-danger">Error occurred. Try again.</span>`;
            });
    });
</script>

</body>
</html>
