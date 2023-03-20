<!DOCTYPE html>
<html lang="fr">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=5, user-scalable=1"
	name="viewport" />

<!-- Fonts-->
<link
	href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500;600;700;800&display=swap"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Muli:300,400,600,700"
	rel="stylesheet" type="text/css">
<!-- CSS Library-->

<meta name="twitter:title"
	content="Sublime Riad De 8 Ch, Prestations Exceptionnelles">

<link media="all" type="text/css" rel="stylesheet"
	href="https://www.marrakechimmobilier.ma/vendor/core/plugins/cookie-consent/css/cookie-consent.css?v=1.0.0">
<link media="all" type="text/css" rel="stylesheet"
	href="https://www.marrakechimmobilier.ma/vendor/core/plugins/language/css/language-public.css?v=1.0.0">
<link media="all" type="text/css" rel="stylesheet"
	href="https://www.marrakechimmobilier.ma/themes/resido/plugins/animation.css">
<link media="all" type="text/css" rel="stylesheet"
	href="https://www.marrakechimmobilier.ma/themes/resido/plugins/bootstrap/bootstrap.min.css">
<link media="all" type="text/css" rel="stylesheet"
	href="https://www.marrakechimmobilier.ma/themes/resido/plugins/ion.rangeSlider.min.css">
<link media="all" type="text/css" rel="stylesheet"
	href="https://www.marrakechimmobilier.ma/themes/resido/plugins/dropzone.css">
<link media="all" type="text/css" rel="stylesheet"
	href="https://www.marrakechimmobilier.ma/themes/resido/plugins/select2.css">
<link media="all" type="text/css" rel="stylesheet"
	href="https://www.marrakechimmobilier.ma/themes/resido/plugins/slick.css">
<link media="all" type="text/css" rel="stylesheet"
	href="https://www.marrakechimmobilier.ma/themes/resido/plugins/slick-theme.css">
<link media="all" type="text/css" rel="stylesheet"
	href="https://www.marrakechimmobilier.ma/themes/resido/plugins/fontawesome/css/fontawesome.min.css">
<link media="all" type="text/css" rel="stylesheet"
	href="https://www.marrakechimmobilier.ma/themes/resido/plugins/icofont.css">
<link media="all" type="text/css" rel="stylesheet"
	href="https://www.marrakechimmobilier.ma/themes/resido/plugins/light-box.css">
<link media="all" type="text/css" rel="stylesheet"
	href="https://www.marrakechimmobilier.ma/themes/resido/plugins/line-icon.css">
<link media="all" type="text/css" rel="stylesheet"
	href="https://www.marrakechimmobilier.ma/themes/resido/plugins/themify.css">
<link media="all" type="text/css" rel="stylesheet"
	href="https://www.marrakechimmobilier.ma/themes/resido/css/style.css?v=2.4.0">
<link media="all" type="text/css" rel="stylesheet"
	href="https://www.marrakechimmobilier.ma/themes/resido/plugins/leaflet.css">
<link media="all" type="text/css" rel="stylesheet"
	href="https://www.marrakechimmobilier.ma/themes/resido/plugins/jquery-bar-rating/themes/fontawesome-stars.css">
<link media="all" type="text/css" rel="stylesheet"
	href="https://www.marrakechimmobilier.ma/themes/resido/plugins/magnific-popup.css">

<link media="all" type="text/css" rel="stylesheet"
	href="https://www.marrakechimmobilier.ma/themes/resido/css/style.integration.css?v=1674470260">

<script
	src="https://www.marrakechimmobilier.ma/themes/resido/plugins/jquery.min.js"></script>


<link type="application/atom+xml" rel="alternate"
	title="Properties feed"
	href="https://www.marrakechimmobilier.ma/feed/properties">

<link
	href="${pageContext.request.contextPath}/view/assets/img/favicon.ico"
	rel="icon">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/view/assets/lib/animate/animate.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/view/assets/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/view/assets/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/view/assets/css/style.css"
	rel="stylesheet">
</head>


</head>

<body class="blue-skin">
	<div id="alert-container"></div>


	<!-- ============================================================== -->
	<!-- Main wrapper - style you can find in pages.scss -->
	<!-- ============================================================== -->
	<div id="main-wrapper">

		<%@ include file="../partials/header.jsp"%>

		<div id="app">
			<!-- ============================ Hero Banner  Start================================== -->
			<div class="featured_slick_gallery gray">
				<div class="featured_slick_gallery-slide">
					<c:forEach items="${immobilier.images}" var="image">
						<div class="featured_slick_padd">
							<a href="${pageContext.request.contextPath}/view/assets/img/<c:out value="${image.path }">placeholderIHome.jpg</c:out>"
							   class="mfp-gallery"> <img
								src="${pageContext.request.contextPath}/view/assets/img/<c:out value="${image.path }">placeholderIHome.jpg</c:out>"
								class="img-fluid mx-auto"
								alt="Sublime Riad De 8 Ch, Prestations Exceptionnelles-1" />
							</a>
						</div>
					</c:forEach>
				</div>

			</div>
			<!-- ============================ Hero Banner End ================================== -->

			<!-- ============================ Property Header Info Start================================== -->
			<section class="gray-simple rtl p-0">
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-8 col-md-12">

							<div class="property_block_wrap style-3">
								<div class="pbw-flex-1">
									<div class="pbw-flex-thumb">
										<img class="img-fluid"
											style="width: 200px;height: 200px;"
<%-- 											src="${immobilier.images[0].path }" --%>
				src="${pageContext.request.contextPath}/view/assets/img/<c:out value="${immobilier.images[0].path }">placeholderIHome.jpg</c:out>"
											alt="Luxuryestate Marrakech">
									</div>
								</div>

								<div class="pbw-flex">
									<div class="prt-detail-title-desc ">
										<div class="bg-primary rounded text-white ps-2 py-2 mb-4">
											${immobilier.listing_type}</div>

										<h3 class="d-inline-block text-truncate" style="max-width: 300px;">${immobilier.title }</h3>
										<p>
											<i
												class="fa fa-map-marker-alt text-primary me-2 text-truncate"></i>
											${immobilier.adresse}
										</p>
										<h3 class="prt-price-fix">${immobilier.prix}DH</h3>
										<div class="list-fx-features">
											<div class="listing-card-info-icon">
												<div class="inc-fleat-icon">
													<img
														src="https://www.marrakechimmobilier.ma/themes/resido/img/bed.svg"
														width="13" alt="">
												</div>
												${immobilier.room_nbr} bed
											</div>
											<div class="listing-card-info-icon">
												<div class="inc-fleat-icon">
													<img
														src="https://www.marrakechimmobilier.ma/themes/resido/img/bathtub.svg"
														width="13" alt="">
												</div>
												${immobilier.bathroomNumber} bath
											</div>
											<div class="listing-card-info-icon">
												<div class="inc-fleat-icon">
													<img
														src="https://www.marrakechimmobilier.ma/themes/resido/img/move.svg"
														width="13" alt="">
												</div>
												${immobilier.surface} m²
											</div>
										</div>
									</div>
								</div>

							</div>

						</div>
					</div>
				</div>
			</section>
			<!-- ============================ Property Header Info End ================================== -->


			<!-- ============================ Property Detail Start ================================== -->
			<section class="property-detail gray-simple">
				<div data-property-id="63"></div>
				<div class="container">
					<div class="row">
						<!-- property main detail -->
						<div class="col-lg-8 col-md-12 col-sm-12">

							<!-- Single Block Wrap - Features -->
							<div class="property_block_wrap style-2">

								<div class="property_block_wrap_header">
									<a data-bs-toggle="collapse" data-parent="#features"
										data-bs-target="#clOne" aria-controls="clOne"
										href="javascript:void(0);" aria-expanded="false">
										<h4 class="property_block_title">Detail &amp; Features</h4>
									</a>
								</div>
								<div id="clOne" class="panel-collapse collapse show"
									aria-labelledby="clOne">
									<div class="block-body">
										<ul class="detail_features">
											<li><strong>Title:</strong>${immobilier.title } m²</li>
											<li><strong>Address:</strong> ${immobilier.adresse }</li>
											<li><strong>City:</strong>${immobilier.ville }</li>
											<li><strong>Surface:</strong>${immobilier.surface }</li>
											<li><strong>Listing type:</strong>${immobilier.listing_type }</li>
											<li><strong>Bathroom Number:</strong>${immobilier.room_nbr }</li>
										</ul>
									</div>
								</div>

							</div>


							<!-- Single Block Wrap -->
							<div class="property_block_wrap style-2">

								<div class="property_block_wrap_header">
									<a data-bs-toggle="collapse" data-parent="#dsrp"
										data-bs-target="#clTwo" aria-controls="clTwo"
										href="javascript:void(0);" aria-expanded="true">
										<h4 class="property_block_title">Description</h4>
									</a>
								</div>
								<div id="clTwo" class="panel-collapse collapse show">
									<div class="block-body">
									${immobilier.adresse}
									</div>
								</div>
							</div>
							<!-- Single Block Wrap - Gallery -->
							<div class="property_block_wrap style-2">

								<div class="property_block_wrap_header">
									<a data-bs-toggle="collapse" data-parent="#clSev"
										data-bs-target="#clSev" aria-controls="clOne"
										href="javascript:void(0);" aria-expanded="true"
										class="collapsed">
										<h4 class="property_block_title">Galerie</h4>
									</a>
								</div>

								<div id="clSev" class="panel-collapse collapse show">
									<div class="block-body">
										<ul class="list-gallery-inline">

											<c:forEach items="${immobilier.images}" var="image">
												<li><a
													href="${pageContext.request.contextPath}/view/assets/img/<c:out value="${image.path }">placeholderIHome.jpg</c:out>"
													class="mfp-gallery"> <img 
													src="${pageContext.request.contextPath}/view/assets/img/<c:out value="${image.path }">placeholderIHome.jpg</c:out>"
<%-- 													src="${pageContext.request.contextPath}/view/assets/img/<c:out value="${image.path }">placeholderIHome.jpg</c:out>" --%>
														data-src="${pageContext.request.contextPath}/view/assets/img/<c:out value="${image.path }">placeholderIHome.jpg</c:out>"
														class="img-fluid mx-auto lazy"
														alt="Sublime Riad De 8 Ch, Prestations Exceptionnelles-1" />
												</a></li>
											</c:forEach>


										</ul>
									</div>
								</div>

							</div>


							<!-- Single Block Wrap - Nearby -->


						</div>

						<!-- property Sidebar -->
						<div class="col-lg-4 col-md-12 col-sm-12">



							<div class="details-sidebar">
								<!-- Agent Detail -->
								<div class="sides-widget">
									<div class="sides-widget-header">
										<div class="">
											<img
											style="width: 150px ; height: 150px;border-radius: 50%;"
												src="${pageContext.request.contextPath}/view/assets/img/${immobilier.proprietaire.avatar }"
												alt="Luxuryestate Marrakech">
										</div>
										<div class="sides-widget-details">
											<h4>
												<a>
													${immobilier.proprietaire.nom } ${immobilier.proprietaire.prenom }
													</a>
											</h4>
											<h3><span><i class="lni-phone-handset"></i>${immobilier.proprietaire.tel }</span></h3>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>

							</div>
						</div>
					</div>

					<div class="row"></div>
				</div>
			</section>

			<!-- ============================ Property Detail End ================================== -->

		</div>

		<div class="widget_shortcode">

			<div class="raw-html-embed">
				<section class="theme-bg call-to-act-wrap">
					<div class="container">
						<div class="row">
							<div class="col-lg-12">

								<div class="call-to-act">
									<div class="call-to-act-head">
										<h3>Want to Become a Real Estate Agent?</h3>
										<span>We'll help you to grow your career and growth.</span>
									</div>
									<a href="/register" class="btn btn-call-to-act">Sign Up
										Today</a>
								</div>

							</div>
						</div>
					</div>
				</section>
			</div>

		</div>

		<a id="back2Top" class="top-scroll" title="Back to top" href="#"><i
			class="ti-arrow-up"></i></a>
		<%@ include file="../partials/footer.jsp"%>
	</div>


	<script
		src="https://www.marrakechimmobilier.ma/themes/resido/plugins/bootstrap/popper.min.js"></script>
	<script
		src="https://www.marrakechimmobilier.ma/themes/resido/plugins/bootstrap/bootstrap.min.js"></script>
	<script
		src="https://www.marrakechimmobilier.ma/themes/resido/plugins/rangeslider.js"></script>

	<script
		src="https://www.marrakechimmobilier.ma/themes/resido/plugins/jquery.magnific-popup.min.js"></script>
	<script
		src="https://www.marrakechimmobilier.ma/themes/resido/plugins/slick.js"></script>
	<script
		src="https://www.marrakechimmobilier.ma/themes/resido/plugins/slider-bg.js"></script>
	<script
		src="https://www.marrakechimmobilier.ma/themes/resido/plugins/lightbox.js"></script>
	<script
		src="https://www.marrakechimmobilier.ma/themes/resido/plugins/imagesloaded.js"></script>
	<script
		src="https://www.marrakechimmobilier.ma/themes/resido/plugins/lazyload.min.js"></script>
	<script
		src="https://www.marrakechimmobilier.ma/themes/resido/js/components.js?v=2.4.0"></script>
	<script
		src="https://www.marrakechimmobilier.ma/themes/resido/js/wishlist.js"></script>
	<script
		src="https://www.marrakechimmobilier.ma/themes/resido/js/app.js?v=2.4.0"></script>
	<script
		src="https://www.marrakechimmobilier.ma/themes/resido/plugins/leaflet.js"></script>
	<script
		src="https://www.marrakechimmobilier.ma/themes/resido/plugins/jquery.magnific-popup.min.js"></script>
	<script
		src="https://www.marrakechimmobilier.ma/themes/resido/js/property.js"></script>
	<script
		src="https://www.marrakechimmobilier.ma/themes/resido/plugins/jquery-bar-rating/jquery.barrating.min.js"></script>
	
	<script>
		$('#select-type').parent().parent().addClass('simple')
	</script>
</body>

</html>