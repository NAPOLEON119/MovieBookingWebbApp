<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Register | Movie Theme</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<link href="css/global.css" rel="stylesheet">
	<link href="css/blog.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Platypi:wght@400;700&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
</head>
<body>

<!-- Register Form -->
<section id="register" class="p-3">
	<div class="container-xl">
		<div class="row">
			<div class="col-md-6 mx-auto">
				<div class="bg-light p-5 rounded">
					<h2 class="mb-4 text-center">Create Account</h2>

					<%-- Show error from servlet (optional) --%>
					<%
						String errorMessage = request.getParameter("error");
						if (errorMessage != null) {
					%>
					<div class="alert alert-danger text-center"><%= errorMessage %></div>
					<% } %>

					<form id="registerForm" action="registerServlet" method="post">
						<div class="mb-3">
							<label for="username" class="form-label">Username</label>
							<input class="form-control" placeholder="Enter your username" type="text" name="username" required>
						</div>
						<div class="mb-3">
							<label for="email" class="form-label">Email</label>
							<input class="form-control" placeholder="Enter your email" type="email" name="email" required>
						</div>
						<div class="mb-3">
							<label for="password" class="form-label">Password</label>
							<input class="form-control" placeholder="Enter your password" type="password" name="password" required>
						</div>
						<div class="form-check mt-4">
							<input type="checkbox" class="form-check-input" id="termsCheck" name="terms" required>
							<label class="form-check-label" for="termsCheck">
								I agree to the <a class="fw-bold" href="#">Terms & Conditions</a>
							</label>
						</div>
						<button type="submit" class="btn btn-primary w-100 mt-4">Register</button>
						<p class="text-center mt-3">Already have an account? <a class="fw-bold col_oran" href="login.jsp">Login</a></p>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>

</body>
</html>
