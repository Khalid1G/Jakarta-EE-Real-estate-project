<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta charset="utf-8">
		<title>Ghazwa Immobilier</title>
		<meta content="width=device-width, initial-scale=1.0" name="viewport">
		<link href="${pageContext.request.contextPath}/view/assets/img/favicon.ico" rel="icon">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap"
			rel="stylesheet">
		<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/view/assets/lib/animate/animate.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/view/assets/lib/owlcarousel/assets/owl.carousel.min.css"
			rel="stylesheet">
		<link href="${pageContext.request.contextPath}/view/assets/css/bootstrap.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/view/assets/css/style.css" rel="stylesheet">
	</head>


<body>

	<%@ include file="../partials/header.jsp"%>

	<div class="container-xxl bg-white p-0">

		<!-- Search Start -->
		<div class="container-fluid bg-primary mb-1 mt-5 wow fadeIn rounded"
			data-wow-delay="0.1s" style="padding: 35px;">
			<div class="container">
				<div class="row g-2">
					<div class="col-md-10">
						<div class="row g-2">
							<div class="col-md-4">
								<input type="text" class="form-control border-0 py-3"
									placeholder="Search Keyword">
							</div>
							<div class="col-md-4">
								<select class="form-select border-0 py-3">
									<option selected="">Property Type</option>
									<c:forEach items="${proprtyTypes}" var="type">
										<option>${type}</option>
									</c:forEach>
								</select>
							</div>
							<div class="col-md-4">
								<select class="form-select border-0 py-3">
									<option selected>Location</option>
									<c:forEach items="${villes}" var="ville">
										<option>${ville}</option>
									</c:forEach>
								</select>
							</div>
						</div>
					</div>
					<div class="col-md-2">
						<button class="btn btn-dark border-0 w-100 py-3">Search</button>
					</div>
				</div>
			</div>
		</div>
		<!-- Search End -->


		<!--Section Start-->
		<section class="gray">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-4 col-sm-12">
						<div id="filter_search" class="simple-sidebar sm-sidebar"
							style="left: -310px;">

							<div class="sidebar-widgets">
								<div class="sidebar-widgets">
									<div class="widget-boxed-header">
										<h4>
											<a href="#features" data-bs-toggle="collapse"
												aria-expanded="true" role="button">Recherche Avancée</a>
										</h4>
									</div>
									<form action="#" method="get" id="filters-form">
										<div class="row">
											<div class="col-lg-6 col-md-6 col-sm-6">
												<select class="form-select" aria-label="Default select example">
												  <option selected>Open this select menu</option>
												  <option value="1">One</option>
												  <option value="2">Two</option>
												  <option value="3">Three</option>
												</select>
											</div>
											
										</div>
										
										
										<div class="row">
											<div class="col-lg-6 col-md-6 col-sm-6">
												<div class="form-group">
													<div class="simple-input">
														<input type="text" name="min_area" value=""
															placeholder="Surface min" class="form-control">
													</div>
												</div>
											</div>
											<div class="col-lg-6 col-md-6 col-sm-6">
												<div class="form-group">
													<div class="simple-input">
														<input type="text" name="max_area" value=""
															placeholder="Surface max" class="form-control">
													</div>
												</div>
											</div>
										</div>

										<button type="submit"
											class="btn btn-primary rounded full-width mt-3  ">Trouver
											une nouvelle maison</button>
									</form>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-8 col-md-12 list-layout">
						
						<div class="row">
							<!--first property start-->
							<div class="col-12 col-md-6 pt-3 mb-3">
								<div class="property-item rounded overflow-hidden">
									<div class="position-relative overflow-hidden">
										<a href=""><img class="img-fluid"
											src="assets/img/property-5.jpg" alt=""></a>
										<div
											class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
											For Sell</div>
										<div
											class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">
											Home</div>
									</div>
									<div class="p-4 pb-0">
										<h5 class="text-primary mb-3">$12,345</h5>
										<a class="d-block h5 mb-2" href="">Golden Urban House For
											Sell</a>
										<p>
											<i class="fa fa-map-marker-alt text-primary me-2"></i>123
											Street, New York, USA
										</p>
									</div>
									<div class="d-flex border-top">
										<small class="flex-fill text-center border-end py-2"><i
											class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
										<small class="flex-fill text-center border-end py-2"><i
											class="fa fa-bed text-primary me-2"></i>3 Bed</small> <small
											class="flex-fill text-center py-2"><i
											class="fa fa-bath text-primary me-2"></i>2 Bath</small>
									</div>
								</div>
							</div>
							<!--first property end-->

						</div>
					</div>

				</div>
			</div>

		</section>
	</div>
	<!-- Section End-->
	<%@ include file="../partials/footer.jsp"%>

	<!-- Back to Top -->
	<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
		class="bi bi-arrow-up"></i></a>





	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/assets/lib/wow/wow.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/assets/lib/easing/easing.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/assets/lib/waypoints/waypoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/assets/lib/owlcarousel/owl.carousel.min.js"></script>


	<script src="${pageContext.request.contextPath}/view/assets/js/main.js"></script>
</body>

</html>