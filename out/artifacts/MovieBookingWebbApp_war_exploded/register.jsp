<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Register | Movie Theme</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<script src="js/bootstrap.bundle.min.js"></script>
</head>
<body>

<section id="register" class="p-3">
	<div class="container">
		<div class="row">
			<div class="col-md-6 mx-auto">
				<div class="bg-light p-5 rounded">
					<h2 class="text-center mb-4">Create Account</h2>
					<form action="registerServlet" method="post">
						<div class="mb-3">
							<label>Username</label>
							<input class="form-control" name="username" required>
						</div>
						<div class="mb-3">
							<label>Email</label>
							<input class="form-control" type="email" name="email" required>
						</div>
						<div class="mb-3">
							<label>Password</label>
							<input class="form-control" type="password" name="password" required>
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input" required>
							<label class="form-check-label">I agree to the Terms & Conditions</label>
						</div>
						<button type="submit" class="btn btn-primary w-100 mt-4">Register</button>
						<p class="text-center mt-3">Already have an account? <a href="login.jsp">Login</a></p>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>

</body>
</html>
