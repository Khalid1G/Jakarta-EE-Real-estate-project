<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
		<!-- Navbar Start -->
		<div class="container-fluid nav-bar bg-transparent">
			<nav class="navbar navbar-expand-lg bg-white navbar-light py-0 px-4">
				<div class="container-xxl bg-white p-0">
					<a href="index.html" class="navbar-brand d-flex align-items-center text-center">
						<div class="icon p-2 me-2">
							<img class="img-fluid" src="${pageContext.request.contextPath}/view/assets/img/icon-deal.png" alt="Icon"
								style="width: 30px; height: 30px;">
						</div>
						<h1 class="m-0 text-primary">
							<span class="text-info">Ghazwa</span> Immobilier
						</h1>
					</a>
					<button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarCollapse">
						<div class="navbar-nav ms-auto">
							<a href="index.html" class="nav-item nav-link active">Home</a> <a href="about.html"
								class="nav-item nav-link">About</a>
							<div class="nav-item dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Property</a>
								<div class="dropdown-menu rounded-0 m-0">
									<a href="property-list.html" class="dropdown-item">Property
										List</a> <a href="property-type.html" class="dropdown-item">Property
										Type</a> <a href="property-agent.html" class="dropdown-item">Property
										Agent</a>
								</div>
							</div>
							<div class="nav-item dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
								<div class="dropdown-menu rounded-0 m-0">
									<a href="testimonial.html" class="dropdown-item">Testimonial</a>
									<a href="404.html" class="dropdown-item">404 Error</a>
								</div>
							</div>
							<a href="contact.html" class="nav-item nav-link">Contact</a>
						</div>
						<a href="" class="btn btn-primary px-3 d-none d-lg-flex">Add
							Property</a>
					</div>
				</div>
			</nav>
		</div>
		<!-- Navbar End -->

		<div class="container-xxl bg-white p-0">

			<!-- Header Start -->
			<div class="container-fluid header bg-white p-0">
				<div class="row g-0 align-items-center flex-column-reverse flex-md-row">
					<div class="col-md-6 p-5 mt-lg-5">
						<h1 class="display-5 animated fadeIn mb-4">
							Find A <span class="text-primary">Perfect Home</span> To Live With
							Your Family
						</h1>
						<p class="animated fadeIn mb-4 pb-2">Discover a wide range of
							stunning properties that cater to your family's every need. From
							spacious living areas to convenient locations, we have everything
							you need to find your dream home..</p>
						<a href="" class="btn btn-primary py-3 px-5 me-3 animated fadeIn">Get
							Started</a>
					</div>
					<div class="col-md-6 animated fadeIn">
						<div class="owl-carousel header-carousel">
							<div class="owl-carousel-item">
								<img class="img-fluid" src="${pageContext.request.contextPath}/view/assets/img/carousel-1.jpg" alt="">
							</div>
							<div class="owl-carousel-item">
								<img class="img-fluid" src="${pageContext.request.contextPath}/view/assets/img/carousel-2.jpg" alt="">
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Header End -->


			<!-- Search Start -->
			<div class="container-fluid bg-primary mb-5 wow fadeIn rounded" data-wow-delay="0.1s" style="padding: 35px;">
				<div class="container">
					<div class="row g-2">
						<div class="col-md-10">
							<div class="row g-2">
								<div class="col-md-4">
									<input type="text" class="form-control border-0 py-3" placeholder="Search Keyword">
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


			<!-- Category Start -->
			<div class="container-xxl py-5">
				<div class="container">
					<div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
						<h1 class="mb-3">Property Types</h1>
						<p>Browse our selection of diverse property types, including
							everything from charming cottages to modern condos and expansive
							estates. Whatever your preferences and needs, we have the perfect
							property for you</p>
					</div>
					<div class="row g-4">
						<div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
							<a class="cat-item d-block bg-light text-center rounded p-3" href="">
								<div class="rounded p-4">
									<div class="icon mb-3">
										<img class="img-fluid" src="${pageContext.request.contextPath}/view/assets/img/icon-apartment.png"
											alt="Icon">
									</div>
									<h6>Apartment</h6>
									<span>${apartmentsCount} Properties</span>
								</div>
							</a>
						</div>
						<div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
							<a class="cat-item d-block bg-light text-center rounded p-3" href="">
								<div class="rounded p-4">
									<div class="icon mb-3">
										<img class="img-fluid" src="${pageContext.request.contextPath}/view/assets/img/icon-villa.png"
											alt="Icon">
									</div>
									<h6>Villa</h6>
									<span>${villasCount } Properties</span>
								</div>
							</a>
						</div>
						<div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.5s">
							<a class="cat-item d-block bg-light text-center rounded p-3" href="">
								<div class="rounded p-4">
									<div class="icon mb-3">
										<img class="img-fluid" src="${pageContext.request.contextPath}/view/assets/img/icon-house.png"
											alt="Icon">
									</div>
									<h6>Home</h6>
									<span>${homesCount } Properties</span>
								</div>
							</a>
						</div>
						<div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.7s">
							<a class="cat-item d-block bg-light text-center rounded p-3" href="">
								<div class="rounded p-4">
									<div class="icon mb-3">
										<img class="img-fluid" src="${pageContext.request.contextPath}/view/assets/img/icon-housing.png"
											alt="Icon">
									</div>
									<h6>Office</h6>
									<span>${officesCount } Properties</span>
								</div>
							</a>
						</div>
						<div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
							<a class="cat-item d-block bg-light text-center rounded p-3" href="">
								<div class="rounded p-4">
									<div class="icon mb-3">
										<img class="img-fluid" src="${pageContext.request.contextPath}/view/assets/img/icon-building.png"
											alt="Icon">
									</div>
									<h6>Building</h6>
									<span>${buildingsCount } Properties</span>
								</div>
							</a>
						</div>
						<div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
							<a class="cat-item d-block bg-light text-center rounded p-3" href="">
								<div class="rounded p-4">
									<div class="icon mb-3">
										<img class="img-fluid"
											src="${pageContext.request.contextPath}/view/assets/img/icon-neighborhood.png" alt="Icon">
									</div>
									<h6>Townhouse</h6>
									<span>${townhousesCount } Properties</span>
								</div>
							</a>
						</div>
						<div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.5s">
							<a class="cat-item d-block bg-light text-center rounded p-3" href="">
								<div class="rounded p-4">
									<div class="icon mb-3">
										<img class="img-fluid" src="${pageContext.request.contextPath}/view/assets/img/icon-condominium.png"
											alt="Icon">
									</div>
									<h6>Shop</h6>
									<span>${shopsCount } Properties</span>
								</div>
							</a>
						</div>
						<div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.7s">
							<a class="cat-item d-block bg-light text-center rounded p-3" href="">
								<div class="rounded p-4">
									<div class="icon mb-3">
										<img class="img-fluid" src="${pageContext.request.contextPath}/view/assets/img/icon-luxury.png"
											alt="Icon">
									</div>
									<h6>Garage</h6>
									<span>${garagesCount } Properties</span>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
			<!-- Category End -->


			<!-- About Start -->
			<div class="container-xxl py-5">
				<div class="container">
					<div class="row g-5 align-items-center">
						<div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
							<div class="about-img position-relative overflow-hidden p-5 pe-0">
								<img class="img-fluid w-100" src="${pageContext.request.contextPath}/view/assets/img/about.jpg">
							</div>
						</div>
						<div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
							<h1 class="mb-4">#1 Place To Find The Perfect Property</h1>
							<p class="mb-4">Looking for your dream property? Look no
								further than our website. With our extensive database of
								properties, expert guidance, and personalized service, we're the
								top choice for finding the perfect place to call home.</p>
							<p>
								<i class="fa fa-check text-primary me-3"></i>Stability and
								security
							</p>
							<p>
								<i class="fa fa-check text-primary me-3"></i>Long-term investment
							</p>
							<p>
								<i class="fa fa-check text-primary me-3"></i>Personalization and
								freedom
							</p>
							<a class="btn btn-primary py-3 px-5 mt-3" href="">Read More</a>
						</div>
					</div>
				</div>
			</div>
			<!-- About End -->


			<!-- Property List Start -->
			<div class="container-xxl py-5">
				<div class="container">
					<div class="row g-0 gx-5 align-items-end">
						<div class="col-lg-6">
							<div class="text-start mx-auto mb-5 wow slideInLeft" data-wow-delay="0.1s">
								<h1 class="mb-3">Property Listing</h1>
								<p>Eirmod sed ipsum dolor sit rebum labore magna erat. Tempor
									ut dolore lorem kasd vero ipsum sit eirmod sit diam justo sed
									rebum.</p>
							</div>
						</div>
						<div class="col-lg-6 text-start text-lg-end wow slideInRight" data-wow-delay="0.1s">
							<ul class="nav nav-pills d-inline-flex justify-content-end mb-5">
								<li class="nav-item me-2"><a class="btn btn-outline-primary active" data-bs-toggle="pill"
										href="#tab-1">Featured</a></li>
								<li class="nav-item me-2"><a class="btn btn-outline-primary" data-bs-toggle="pill" href="#tab-2">For
										Sell</a></li>
								<li class="nav-item me-0"><a class="btn btn-outline-primary" data-bs-toggle="pill" href="#tab-3">For
										Rent</a></li>
							</ul>
						</div>
					</div>
					<div class="tab-content">
						<div id="tab-1" class="tab-pane fade show p-0 active">
							<div class="row g-4">
								<c:forEach items="${propertiesFeatureds}" var="propertiesFeatured">

									<div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
										<div class="property-item rounded overflow-hidden">
											<div class="position-relative overflow-hidden">
												<a href=""><img class="img-fluid"
														src="${pageContext.request.contextPath}/view/assets/img/property-1.jpg" alt=""></a>
												<div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
													${propertiesForSell.listing_type}</div>
												<div
													class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">
													${propertiesFeatured.type}</div>
											</div>
											<div class="p-4 pb-0">
												<h5 class="text-primary mb-3">${propertiesFeatured.prix}$</h5>
												<a class="d-block h5 mb-2" href=""
													style="text-overflow: ellipsis;">${propertiesFeatured.description}</a>
												<p>
													<i class="fa fa-map-marker-alt text-primary me-2"></i>${propertiesFeatured.adresse}
												</p>
											</div>
											<div class="d-flex border-top">
												<small class="flex-fill text-center border-end py-2"><i
														class="fa fa-ruler-combined text-primary me-2"></i>${propertiesFeatured.surface}</small>
												<small class="flex-fill text-center border-end py-2"><i
														class="fa fa-bed text-primary me-2"></i>${propertiesFeatured.bathroomNumber}
													Bed</small> <small class="flex-fill text-center py-2"><i
														class="fa fa-bath text-primary me-2"></i>${propertiesFeatured.bathroomNumber}
													Bath</small>
											</div>
										</div>
									</div>

								</c:forEach>
								<div class="col-12 text-center wow fadeInUp" data-wow-delay="0.1s">
									<a class="btn btn-primary py-3 px-5" href="">Browse More
										Property</a>
								</div>
							</div>
						</div>
						<div id="tab-2" class="tab-pane fade show p-0">
							<div class="row g-4">
								<c:forEach items="${propertiesForSells}" var="propertiesForSell">
									<div class="col-lg-4 col-md-6">
										<div class="property-item rounded overflow-hidden">
											<div class="position-relative overflow-hidden">
												<a href="">

													<c:choose>
														<c:when test="${propertiesForSell.images.size() != 0}">
															<img class="img-fluid"
																src="${pageContext.request.contextPath}/view/assets/img/${propertiesForSell.images[0].path}"
																alt="">
														</c:when>
														<c:otherwise>
															<img class="img-fluid"
																src="${pageContext.request.contextPath}/view/assets/img/placeholderIHome.jpg" alt="">
															<img class="img-fluid"
																src="${pageContext.request.contextPath}/view/assets/img/placeholderIHome.jpg" alt="">

														</c:otherwise>
													</c:choose>

												</a>
												<div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
													${propertiesForSell.listing_type}</div>
												<div
													class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">
													${propertiesForSell.type}</div>
											</div>
											<div class="p-4 pb-0">
												<h5 class="text-primary mb-3">${propertiesForSell.prix}</h5>
												<a class="d-block h5 mb-2" href=""
													style="text-overflow: ellipsis;">${propertiesForSell.description}</a>
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
													class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
											</div>
										</div>
									</div>
								</c:forEach>
								<div class="col-12 text-center">
									<a class="btn btn-primary py-3 px-5" href="">Browse More
										Property</a>
								</div>
							</div>
						</div>
						<div id="tab-3" class="tab-pane fade show p-0">
							<div class="row g-4">
								<c:forEach items="${propertiesForRents}" var="propertiesForRent">
									<div class="col-lg-4 col-md-6">
										<div class="property-item rounded overflow-hidden">
											<div class="position-relative overflow-hidden">
												<a href=""><img class="img-fluid"
														src="${pageContext.request.contextPath}/view/assets/img/property-1.jpg" alt=""></a>
												<div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For
													Sell</div>
												<div
													class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">
													Appartment</div>
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
													class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
											</div>
										</div>
									</div>
								</c:forEach>
								<div class="col-12 text-center">
									<a class="btn btn-primary py-3 px-5" href="">Browse More
										Property</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Property List End -->
		</div>


		<!-- Footer Start -->
		<div class="container-fluid bg-dark text-white-50 footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
			<div class="container py-5">
				<div class="row g-5">
					<div class="col-lg-3 col-md-6">
						<h5 class="text-white mb-4">Get In Touch</h5>
						<p class="mb-2">
							<i class="fa fa-map-marker-alt me-3"></i>123 Street, New York, USA
						</p>
						<p class="mb-2">
							<i class="fa fa-phone-alt me-3"></i>+012 345 67890
						</p>
						<p class="mb-2">
							<i class="fa fa-envelope me-3"></i>info@example.com
						</p>
						<div class="d-flex pt-2">
							<a class="btn btn-outline-light btn-social" href=""><i class="fab fa-twitter"></i></a> <a
								class="btn btn-outline-light btn-social" href=""><i class="fab fa-facebook-f"></i></a> <a
								class="btn btn-outline-light btn-social" href=""><i class="fab fa-youtube"></i></a> <a
								class="btn btn-outline-light btn-social" href=""><i class="fab fa-linkedin-in"></i></a>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<h5 class="text-white mb-4">Quick Links</h5>
						<a class="btn btn-link text-white-50" href="">About Us</a> <a class="btn btn-link text-white-50"
							href="">Contact Us</a> <a class="btn btn-link text-white-50" href="">Our Services</a> <a
							class="btn btn-link text-white-50" href="">Privacy Policy</a> <a class="btn btn-link text-white-50"
							href="">Terms & Condition</a>
					</div>
					<div class="col-lg-3 col-md-6">
						<h5 class="text-white mb-4">Photo Gallery</h5>
						<div class="row g-2 pt-2">
							<div class="col-4">
								<img class="img-fluid rounded bg-light p-1"
									src="${pageContext.request.contextPath}/view/assets/img/property-1.jpg" alt="">
							</div>
							<div class="col-4">
								<img class="img-fluid rounded bg-light p-1"
									src="${pageContext.request.contextPath}/view/assets/img/property-2.jpg" alt="">
							</div>
							<div class="col-4">
								<img class="img-fluid rounded bg-light p-1"
									src="${pageContext.request.contextPath}/view/assets/img/property-3.jpg" alt="">
							</div>
							<div class="col-4">
								<img class="img-fluid rounded bg-light p-1"
									src="${pageContext.request.contextPath}/view/assets/img/property-4.jpg" alt="">
							</div>
							<div class="col-4">
								<img class="img-fluid rounded bg-light p-1"
									src="${pageContext.request.contextPath}/view/assets/img/property-5.jpg" alt="">
							</div>
							<div class="col-4">
								<img class="img-fluid rounded bg-light p-1"
									src="${pageContext.request.contextPath}/view/assets/img/property-6.jpg" alt="">
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<h5 class="text-white mb-4">Newsletter</h5>
						<p>Dolor amet sit justo amet elitr clita ipsum elitr est.</p>
						<div class="position-relative mx-auto" style="max-width: 400px;">
							<input class="form-control bg-transparent w-100 py-3 ps-4 pe-5" type="text" placeholder="Your email">
							<button type="button" class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">SignUp</button>
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="copyright">
					<div class="row">
						<div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
							&copy; <a class="border-bottom" href="#">Your Site Name</a>, All
							Right Reserved. Designed By <a class="border-bottom" href="">your
								Site name</a>
						</div>
						<div class="col-md-6 text-center text-md-end">
							<div class="footer-menu">
								<a href="">Home</a> <a href="">Cookies</a> <a href="">Help</a> <a href="">FQAs</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Footer End -->



		<!-- Back to Top -->
		<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>





		<!-- JavaScript Libraries -->
		<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
		<script src="${pageContext.request.contextPath}/view/assets/lib/wow/wow.min.js"></script>
		<script src="${pageContext.request.contextPath}/view/assets/lib/easing/easing.min.js"></script>
		<script src="${pageContext.request.contextPath}/view/assets/lib/waypoints/waypoints.min.js"></script>
		<script src="${pageContext.request.contextPath}/view/assets/lib/owlcarousel/owl.carousel.min.js"></script>


		<script src="${pageContext.request.contextPath}/view/assets/js/main.js"></script>

	</body>

	</html>