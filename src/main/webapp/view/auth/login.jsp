<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Ghazwa Immobilier</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<link
	href="${pageContext.request.contextPath}/view/assets/img/favicon.ico"
	rel="icon">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/view/assets/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/view/assets/css/login.css"
	rel="stylesheet">
<style type="text/css">
.btn-outline-info:hover {
	color: #FFF;
}

.form-control:focus {
	outline: 2px solid var(- -bs-info) !important;
}
</style>
</head>

<body>
	<c:if test="${ !empty sessionScope.user }">
		<c:redirect url="/agent" />
	</c:if>
	<div class="d-lg-flex half flex-row-reverse">
		<div class="bg order-1 order-md-2"
			style="background-image: url('${pageContext.request.contextPath}/view/assets/img/about.jpg');"></div>
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
	
						<c:if test="${ !empty param.error }">
							<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
						  <symbol id="check-circle-fill" fill="currentColor"
									viewBox="0 0 16 16">
						    <path
									d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z" />
						  </symbol>
						  <symbol id="info-fill" fill="currentColor" viewBox="0 0 16 16">
						    <path
									d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2z" />
						  </symbol>
						  <symbol id="exclamation-triangle-fill" fill="currentColor"
									viewBox="0 0 16 16">
						    <path
									d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
						  </symbol>
						</svg>

							<div class="alert alert-danger d-flex align-items-center"
								role="alert">
								<svg class="bi flex-shrink-0 me-2" width="24" height="24"
									role="img" aria-label="Danger:">
								<use xlink:href="#exclamation-triangle-fill" /></svg>
								<div>${param.error}</div>
							</div>
						</c:if>

						
						<form action="${pageContext.request.contextPath}/login" method="post"
							class="d-flex flex-column gap-3">
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
								Don't you have an account ? <a href="${pageContext.request.contextPath}/signup">Sign up</a>
							</span>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>