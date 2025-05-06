<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true" %>
<%
  String username = (String) session.getAttribute("username");
  if (username == null) {
    response.sendRedirect("login.jsp");
    return;
  }
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Dashboard | Movie Theme</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/font-awesome.min.css" rel="stylesheet">
  <link href="css/global.css" rel="stylesheet">
  <link href="css/index.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@300;400;500;600;700&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="js/bootstrap.bundle.min.js"></script>
</head>
<body>

<!-- Header Navbar -->
<section id="header">
  <nav class="navbar navbar-expand-md navbar-light px_4" id="navbar_sticky">
    <div class="container-fluid">
      <a class="navbar-brand p-0 fw-bold text-white" href="index.html">
        <i class="fa fa-modx col_oran"></i> Movie Theme
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mb-0 ms-auto">
          <li class="nav-item"><a class="nav-link" href="index.html">Home</a></li>
          <li class="nav-item"><a class="nav-link" href="about.html">About Us</a></li>
          <li class="nav-item"><a class="nav-link" href="movies.html">Movies</a></li>
          <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
          <li class="nav-item">
            <a class="nav-link text-white" href="#">
              <i class="fa fa-user"></i> Hi, <%= username %>
            </a>
          </li>
          <li class="nav-item">
            <form action="logout" method="post" class="d-inline">
              <button class="nav-link text-white bg-transparent border-0" style="cursor:pointer">
                <i class="fa fa-sign-out"></i> Logout
              </button>
            </form>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</section>

<!-- Dashboard Content -->
<section class="p-5">
  <div class="container">
    <h1 class="text-center text-dark">Welcome to your Dashboard, <%= username %>!</h1>
    <p class="text-center text-muted">This is your personalized movie booking panel.</p>
    <div class="text-center mt-4">
      <a href="movies.html" class="btn btn-primary px-4">Book Tickets</a>
      <a href="blog.html" class="btn btn-secondary px-4">Read Blogs</a>
    </div>
  </div>
</section>

<!-- Footer -->
<section id="footer_b" class="pt-3 pb-3 bg-dark">
  <div class="container-xl">
    <div class="footer_b1 row text-center">
      <div class="col-md-12">
        <p class="mb-0 text-white-50">© 2025 Movie Theme. All Rights Reserved.</p>
      </div>
    </div>
  </div>
</section>

<script src="js/common.js"></script>
</body>
</html>
