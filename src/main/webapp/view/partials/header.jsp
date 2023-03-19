<!-- Navbar Start -->
<div class="container-fluid nav-bar bg-transparent">
	<nav class="navbar navbar-expand-lg bg-white navbar-light py-0 px-4">
		<div class="container-xxl bg-white p-0">
			<a href="index.jsp"
				class="navbar-brand d-flex align-items-center text-center">
				<div class="icon p-2 me-2">
					<img class="img-fluid"
						src="${pageContext.request.contextPath}/view/assets/img/icon-deal.png"
						alt="Icon" style="width: 30px; height: 30px;">
				</div>
				<h1 class="m-0 text-primary">
					<span class="text-info">Ghazwa</span> Immobilier
				</h1>
			</a>
			<button type="button" class="navbar-toggler"
				data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<div class="navbar-nav ms-auto">
					<a href="${ pageContext.request.contextPath}/home" class="nav-item nav-link active">Home</a>
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle"
							data-bs-toggle="dropdown">Property</a>
						<div class="dropdown-menu rounded-0 m-0">
							<c:forEach items="${proprtyTypes}" var="type">
								<a href="${pageContext.request.contextPath}/property?property_type=${type}" class="dropdown-item">${type}</a>
							</c:forEach>
						</div>
					</div>
				</div>
				<a href="${pageContext.request.contextPath}/agent" class="btn btn-primary px-3 d-none d-lg-flex">Add
					Property</a>
			</div>
		</div>
	</nav>
</div>
<!-- Navbar End -->