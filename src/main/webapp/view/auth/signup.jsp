<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html lang="en">

	<head>
		<meta charset="utf-8">
		<title>Ghazwa Immobilier</title>
		<meta content="width=device-width, initial-scale=1.0" name="viewport">
		<link href="${pageContext.request.contextPath}/view/assets/img/favicon.ico" rel="icon">
		<link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/view/assets/css/bootstrap.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/view/assets/css/login.css" rel="stylesheet">
		<style type="text/css">
			.btn-outline-info:hover {
				color: #FFF;
			}
		</style>
	</head>

	<body>
		<div class="d-lg-flex half">
			<div class="bg order-1 order-md-2" style="background-image: url('${pageContext.request.contextPath}/view/assets/img/signup.jpg');"></div>
			<div class="contents order-2 order-md-1">
				<div class="container">
					<div class="row align-items-center justify-content-center ">
						<div class="col-md-7">
							<h3>
								SignUp to <strong>
									<h1 class="m-0 text-primary">
										<span class="text-info">Ghazwa</span> Immobilier
									</h1>
								</strong>
							</h3>
							<p class="mb-4">Lorem ipsum dolor sit amet elit. Sapiente sit
								aut eos consectetur adipisicing.</p>
							<form action="${pageContext.request.contextPath}/signup" method="post" class="d-flex flex-column gap-3">
								<div class="form-group first">
									<label for="fname">First name</label> <input type="text" class="form-control"
										placeholder="your first name" id="fname" name="fname">
								</div>
								<div class="form-group first">
									<label for="lname">Last name</label> <input type="text" class="form-control"
										placeholder="your last name" id="lname" name="lname">
								</div>
								<div class="form-group first">
									<label for="email">Email</label> <input type="text" class="form-control"
										placeholder="your-email@gmail.com" id="email" name="email">
								</div>
								<div class="form-group first">
									<label for="password">Password</label> <input type="password" class="form-control"
										placeholder="your password here" id="password" name="password">
								</div>
								<div class="form-group first">
									<label for="password_confirmation">Password confirmation</label> <input type="password"
										class="form-control" placeholder="confirm password here" id="password_confirmation"
										name="password_confirmation">
								</div>


								<input type="submit" value="Sign up" class="btn btn-block btn-outline-info">

								<span> Already have an account ? <a href="${pageContext.request.contextPath}/login">Sign in</a>
								</span>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>

	</html>