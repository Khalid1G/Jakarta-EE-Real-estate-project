<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Ghazwa Immobilier</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<link href="assets/img/favicon.ico" rel="icon">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap"
	rel="stylesheet">
<link href="assets/css/bootstrap.min.css" rel="stylesheet">
<link href="assets/css/login.css" rel="stylesheet">
<style type="text/css">
.btn-outline-info:hover {
	color: #FFF;
}

.form-control:focus{
    outline: 2px solid var(--bs-info) !important;
}
</style>
</head>

<body>
	<div class="d-lg-flex half flex-row-reverse">
		<div class="bg order-1 order-md-2"
			style="background-image: url('assets/img/about.jpg');"></div>
		<div class="contents order-2 order-md-1">
			<div class="container">
				<div class="row align-items-center justify-content-center ">
					<div class="col-md-7">
						<h3>
							Login to <strong>
								<h1 class="m-0 text-primary">
									<span class="text-info">Ghazwa</span> Immobilier
								</h1>
							</strong>
						</h3>
						<p class="mb-4">Lorem ipsum dolor sit amet elit. Sapiente sit
							aut eos consectetur adipisicing.</p>
						<form action="#" method="post" class="d-flex flex-column gap-3">
							<div class="form-group first">
								<label for="email">Email</label> <input type="text"
									class="form-control" placeholder="your-email@gmail.com"
									id="email" name="email">
							</div>
							<div class="form-group last">
								<label for="password">Password</label> <input type="password"
									class="form-control" placeholder="Your Password" id="password"
									name="password">
							</div>
							<div class="d-flex  align-items-center">
								<label class="control control--checkbox mb-0"> <span
									class="caption">Remember me</span> <input type="checkbox"
									checked="checked" />
									<div class="control__indicator"></div>
								</label>
							</div>
							<input type="submit" value="Log In"
								class="btn btn-block btn-outline-info"> <span>
								Don't you have an account ? <a href="./signup.jsp">Sign up</a>
							</span>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>