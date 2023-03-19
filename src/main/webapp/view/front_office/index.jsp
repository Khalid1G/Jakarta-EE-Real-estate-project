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
		<%@ include file="../partials/header.jsp" %>
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
												<a href="">
													<img class="img-fluid" src="${pageContext.request.contextPath}/view/assets/img/<c:out value="${propertiesFeatured.images[0].path }">placeholderIHome.jpg</c:out>" alt=""></a>
												<div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
													${propertiesFeatured.listing_type}</div>
												<div
													class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">
													${propertiesFeatured.type}</div>
											</div>
											<div class="p-4 pb-0">
												<h5 class="text-primary mb-3">${propertiesFeatured.prix}$</h5>
												<a class="d-block h5 mb-2" href=""
													style="text-overflow: ellipsis;">${propertiesFeatured.title}</a>
												<p>
													<i class="fa fa-map-marker-alt text-primary me-2"></i>${propertiesFeatured.adresse}
												</p>
											</div>
											<div class="d-flex border-top">
												<small class="flex-fill text-center border-end py-2"><i
														class="fa fa-ruler-combined text-primary me-2"></i>${propertiesFeatured.surface}</small>
												<small class="flex-fill text-center border-end py-2"><i
														class="fa fa-bed text-primary me-2"></i>${propertiesFeatured.room_nbr}
													Bed</small> <small class="flex-fill text-center py-2"><i
														class="fa fa-bath text-primary me-2"></i>${propertiesFeatured.bathroomNumber}
													Bath</small>
											</div>
										</div>
									</div>

								</c:forEach>
								<div class="col-12 text-center wow fadeInUp" data-wow-delay="0.1s">
									<a class="btn btn-primary py-3 px-5" href="${pageContext.request.contextPath}/property">Browse More
										Property</a>
								</div>
							</div>
						</div>
						<div id="tab-2" class="tab-pane fade show p-0">
							<div class="row g-4">
								<c:forEach items="${propertiesForSells}" var="propertiesForSell">

									<div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
										<div class="property-item rounded overflow-hidden">
											<div class="position-relative overflow-hidden">
												<a href=""><img class="img-fluid"
														src="${pageContext.request.contextPath}/view/assets/img/<c:out value="${propertiesForSell.images[0].path }">placeholderIHome.jpg</c:out>" alt=""></a>
												<div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
													${propertiesForSell.listing_type}</div>
												<div
													class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">
													${propertiesForSell.type}</div>
											</div>
											<div class="p-4 pb-0">
												<h5 class="text-primary mb-3">${propertiesForSell.prix}$</h5>
												<a class="d-block h5 mb-2" href=""
													style="text-overflow: ellipsis;">${propertiesForSell.title}</a>
												<p>
													<i class="fa fa-map-marker-alt text-primary me-2"></i>${propertiesForSell.adresse}
												</p>
											</div>
											<div class="d-flex border-top">
												<small class="flex-fill text-center border-end py-2"><i
														class="fa fa-ruler-combined text-primary me-2"></i>${propertiesForSell.surface}</small>
												<small class="flex-fill text-center border-end py-2"><i
														class="fa fa-bed text-primary me-2"></i>${propertiesForSell.room_nbr}
													Bed</small> <small class="flex-fill text-center py-2"><i
														class="fa fa-bath text-primary me-2"></i>${propertiesForSell.bathroomNumber}
													Bath</small>
											</div>
										</div>
									</div>


								</c:forEach>
								<div class="col-12 text-center">
									<a class="btn btn-primary py-3 px-5" href="${pageContext.request.contextPath}/property">Browse More
										Property</a>
								</div>
							</div>
						</div>
						<div id="tab-3" class="tab-pane fade show p-0">
							<div class="row g-4">
								<c:forEach items="${propertiesForRents}" var="propertiesForRent">

									<div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
										<div class="property-item rounded overflow-hidden">
											<div class="position-relative overflow-hidden">
												<a href=""><img class="img-fluid"
														src="${pageContext.request.contextPath}/view/assets/img/<c:out value="${propertiesForRent.images[0].path }">placeholderIHome.jpg</c:out>" alt=""></a>
												<div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
													${propertiesForRent.listing_type}</div>
												<div
													class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">
													${propertiesForRent.type}</div>
											</div>
											<div class="p-4 pb-0">
												<h5 class="text-primary mb-3">${propertiesForRent.prix}$</h5>
												<a class="d-block h5 mb-2" href=""
													style="text-overflow: ellipsis;">${propertiesForRent.title}</a>
												<p>
													<i class="fa fa-map-marker-alt text-primary me-2"></i>${propertiesForRent.adresse}
												</p>
											</div>
											<div class="d-flex border-top">
												<small class="flex-fill text-center border-end py-2"><i
														class="fa fa-ruler-combined text-primary me-2"></i>${propertiesForRent.surface}</small>
												<small class="flex-fill text-center border-end py-2"><i
														class="fa fa-bed text-primary me-2"></i>${propertiesForRent.room_nbr}
													Bed</small> <small class="flex-fill text-center py-2"><i
														class="fa fa-bath text-primary me-2"></i>${propertiesForRent.bathroomNumber}
													Bath</small>
											</div>
										</div>
									</div>


								</c:forEach>
								<div class="col-12 text-center">
									<a class="btn btn-primary py-3 px-5" href="${pageContext.request.contextPath}/property">Browse More
										Property</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Property List End -->
		</div>

<%@ include file="../partials/footer.jsp" %>

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