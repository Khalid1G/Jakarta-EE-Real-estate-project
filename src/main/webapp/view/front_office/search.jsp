<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Ghazwa Immobilier</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
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


<body>

	<%@ include file="../partials/header.jsp"%>

	<div class="container-xxl bg-white p-0">

		<!-- Search Start -->
		<div class="container-fluid bg-primary mb-1 mt-5 wow fadeIn rounded"
			data-wow-delay="0.1s" style="padding: 35px;">
							<form id="simple-search-form" onsubmit="return mergeSearchParams();">
							
			<div class="container">
				<div class="row g-2">
					<div class="col-md-10">
						<div class="row g-2">
								<div class="col-md-4">
									<input type="text" class="form-control border-0 py-3"
										placeholder="Search Keyword" name="keyword" value="${param.keyword}">
								</div>
								<div class="col-md-4" >
									<select class="form-select border-0 py-3" name="property_type">
										<option selected="" value="">Property Type</option>
										<c:forEach items="${proprtyTypes}" var="type">
											<option <c:if test="${type.equals(param.property_type)}">selected</c:if>>${type}</option>
										</c:forEach>
									</select>
								</div>
								<div class="col-md-4">
									<select class="form-select border-0 py-3" name="ville">
										<option selected value="">Location</option>
										<c:forEach items="${villes}" var="ville" >
											<option <c:if test="${ville.equals(param.ville)}">selected</c:if>>${ville}</option>
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
			
							</form>
		</div>
		<!-- Search End -->


		<!--Section Start-->
		<section class="gray wow fadeIn">
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
									<form 
										class="d-flex flex-column gap-3"
										id="advanced-search-form" onsubmit="return mergeSearchParams();"
										>
										<div>
											<label for="listing_type" class="form-label">listing
												type</label> <select class="form-select" id="listing_type"
												name="listing_type">
												<option selected value="">Choose type</option>
												<option value="Featured" <c:if test='${ "Featured".equals(param.listing_type)}'>selected</c:if>>Featured</option>
												<option value="For Sell" <c:if test='${ "For Sell".equals(param.listing_type)}'>selected</c:if>>For Sell</option>
												<option value="For Rent" <c:if test='${ "For Rent".equals(param.listing_type)}'>selected</c:if>>For Rent</option>
											</select>
										</div>

										<div>
											<label for="Surface" class="form-label">Surface</label>
											<div class="row d-flex justify-content-between">
												<div class="col-6">
													<input type="number" class="form-control" value="${param.min_surface}"
														name="min_surface" placeholder="Min Surface">
												</div>

												<div class="col-6">
													<input type="number" class="form-control" value="${param.max_surface}"
														name="max_surface" placeholder="Max Surface">
												</div>
											</div>
										</div>

										<div>
											<label for="Surface" class="form-label">Floor</label>
											<div class="row d-flex justify-content-between">
												<div class="col-6">
													<input type="number" class="form-control" name="min_floor" value="${param.min_floor}"
														placeholder="Min Floor">
												</div>

												<div class="col-6">
													<input type="number" class="form-control" name="max_floor" value="${param.max_floor}"
														placeholder="Max Floor">
												</div>
											</div>
										</div>

										<div>
											<label for="Surface" class="form-label">Price</label>
											<div class="row d-flex justify-content-between">
												<div class="col-6">
													<input type="number" class="form-control" name="min_price" value="${param.min_price}"
														placeholder="Min Price">
												</div>

												<div class="col-6">
													<input type="number" class="form-control" name="max_price" value="${param.max_price}"
														placeholder="Max Price">
												</div>
											</div>
										</div>

										<div>
											<label for="Surface" class="form-label">Room number</label>
											<div class="row d-flex justify-content-between">
												<div class="col-6">
													<input type="number" class="form-control" value="${param.min_room_nbr}"
														name="min_room_nbr" placeholder="Min Room number">
												</div>

												<div class="col-6">
													<input type="number" class="form-control" value="${param.max_room_nbr}"
														name="max_room_nbr" placeholder="Max Room number">
												</div>
											</div>
										</div>

										<button type="submit" class="btn btn-outline-dark w-100 py-2">Find
											a new home</button>
									</form>
								</div>
							</div>
						</div>
					</div>
					<div
						class="col-lg-8 col-md-12 list-layout border-end-0 border border-3 border-top-0 border-bottom-0">
						<div class="row">
							<c:forEach items="${proprties}" var="property">
								<div class="col-lg-4 col-md-6 wow fadeInUp mb-3"
									data-wow-delay="0.1s">
									<div class="property-item rounded overflow-hidden">
										<div class="position-relative overflow-hidden">
											<a href="${pageContext.request.contextPath}/showProperty/${property.id}"><img class="img-fluid"
<%-- 												src="${pageContext.request.contextPath}/view/assets/img/<c:out value="${property.images[0].path }">placeholderIHome.jpg</c:out>" --%>
													src="<c:out value="${property.images[0].path }">placeholderIHome.jpg</c:out>"
												
												alt=""></a>
											<div
												class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
												${property.listing_type}</div>
											<div
												class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">
												${property.type}</div>
										</div>
										<div class="p-4 pb-0">
											<h5 class="text-primary mb-3">${property.prix}$</h5>
											<a class="d-block h5 mb-2 text-truncate" href="${pageContext.request.contextPath}/showProperty/${property.id}">${property.title}</a>
											<p>
												<i class="fa fa-map-marker-alt text-primary me-2 text-truncate"></i>${property.adresse}
											</p>
										</div>
										<div class="d-flex border-top">
											<small class="flex-fill text-center border-end py-2"><i
												class="fa fa-ruler-combined text-primary me-2"></i>${property.surface}</small>
											<small class="flex-fill text-center border-end py-2"><i
												class="fa fa-bed text-primary me-2"></i>${property.room_nbr}
												Bed</small> <small class="flex-fill text-center py-2"><i
												class="fa fa-bath text-primary me-2"></i>${property.bathroomNumber}
												Bath</small>
										</div>
									</div>
								</div>
							</c:forEach>
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
	<script type="text/javascript">
	
	function mergeSearchParams() {
		  // Get the form fields
		  const simpleSearchForm = document.getElementById("simple-search-form");
		  const advancedSearchForm = document.getElementById("advanced-search-form");
		  const simpleSearchParams = new URLSearchParams(new FormData(simpleSearchForm));
		  const advancedSearchParams = new URLSearchParams(new FormData(advancedSearchForm));

		  // Merge the parameters
		  const mergedParams = new URLSearchParams();

		  for (const [key, value] of simpleSearchParams) {
		    mergedParams.set(key, value);

		  }
		  for (const [key, value] of advancedSearchParams) {
		    mergedParams.set(key, value);

		  }
		  
		  console.log(mergedParams.toString());

		  // Construct the search results URL
		  const searchResultsUrl = "${pageContext.request.contextPath}/property?" + mergedParams.toString();

		  // Navigate to the search results page
		  window.location.href = searchResultsUrl;
		  return false;
		}
	
	</script>
</body>

</html>