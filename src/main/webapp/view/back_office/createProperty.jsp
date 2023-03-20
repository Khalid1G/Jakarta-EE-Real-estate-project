<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


	<%@ include file="./Partials/topPage.jsp" %>
		<link href="<%= request.getContextPath()%>/view/assets/plugins/filepond/css/filepond.css" rel="stylesheet" />
		<link href="<%= request.getContextPath()%>/view/assets/plugins/filepond/css/filepond-plugin-image-preview.css"
			rel="stylesheet" />

		<div class="card">
			<div class="card-header">
				<h1 class="card-title">Add new property</h1>
			</div>
			<div class="card-body">
				<form action="" method="post" enctype="multipart/form-data">
					<div class="row my-4">
						<div class="fv-row fv-plugins-icon-container">
							<!--begin::Label-->
							<label class="required fs-6 fw-bold mb-2 text-first-capitalize">Title</label>
							<!--end::Label-->
							<!--begin::Input-->
							<div class="position-relative">
								<input autocomplete="OFF" type="text" class="form-control  rounded" name="title"
									placeholder="Title">
								<span class="text-danger fw-boldest"></span>
							</div>
							<!--end::Input-->
						</div>
					</div>
					<div class="row my-4">
						<div class="col-md-8">
							<div class="fv-row fv-plugins-icon-container">
								<!--begin::Label-->
								<label class="required fs-6 fw-bold mb-2 text-first-capitalize">Adresse</label>
								<!--end::Label-->
								<!--begin::Input-->
								<div class="position-relative">
									<input autocomplete="OFF" type="text" class="form-control  rounded" name="adresse"
										placeholder="Adresse">
									<span class="text-danger fw-boldest"></span>
								</div>
								<!--end::Input-->
							</div>
						</div>
						<div class="col-md-4">
							<div class="fv-row fv-plugins-icon-container">
								<!--begin::Label-->
								<label class="required fs-6 fw-bold mb-2 text-first-capitalize">City</label>
								<!--end::Label-->
								<!--begin::Input-->
								<div class="position-relative">
									<select name="city" class="form-select" data-control="select2" data-placeholder="Select a city">
										<option></option>
										<option value="agadir">Agadir</option>
										<option value="al hoceima">Al Hoceima</option>
										<option value="beni mellal">Beni Mellal</option>
										<option value="casablanca">Casablanca</option>
										<option value="el jadida">El Jadida</option>
										<option value="errachidia">Errachidia</option>
										<option value="essaouira">Essaouira</option>
										<option value="fes">Fes</option>
										<option value="ifrane">Ifrane</option>
										<option value="kenitra">Kenitra</option>
										<option value="khenifra">Khenifra</option>
										<option value="khouribga">Khouribga</option>
										<option value="laayoune">Laayoune</option>
										<option value="marrakech">Marrakech</option>
										<option value="meknes">Meknes</option>
										<option value="nador">Nador</option>
										<option value="ouarzazate">Ouarzazate</option>
										<option value="oujda">Oujda</option>
										<option value="rabat">Rabat</option>
										<option value="safi">Safi</option>
										<option value="settat">Settat</option>
										<option value="tangier">Tangier</option>
										<option value="taza">Taza</option>
										<option value="tetouan">Tetouan</option>
									</select>
								</div>
								<!--end::Input-->
							</div>
						</div>
					</div>
					<div class="row my-4">
						<div class="fv-row fv-plugins-icon-container">
							<!--begin::Label-->
							<label class="required fs-6 fw-bold mb-2 text-first-capitalize">Description</label>
							<!--end::Label-->
							<!--begin::Input-->
							<div class="position-relative">
								<textarea name="description" placeholder="Description"
									class="form-control textarea"></textarea>
								<span class="text-danger fw-boldest"></span>
							</div>
							<!--end::Input-->
						</div>
					</div>
					<div class="row my-4">
						<div class="col-6 col-md-4 col-lg-3 mb-5">
							<!--begin::Label-->
							<label class="required fs-6 fw-bold mb-2 text-first-capitalize">Surface</label>
							<!--end::Label-->
							<!--begin::Input group-->
							<div class="input-group">
								<span class="input-group-text" id="basic-addon1">
									<!--begin::Svg Icon | path: icons/duotune/communication/com006.svg-->
									<span class="fa fa-ruler-combined"></span>
									<!--end::Svg Icon-->
								</span>
								<input type="number" class="form-control" placeholder="m²" aria-label="Surface" name="surface"
									aria-describedby="basic-addon1" />
							</div>
							<!--end::Input group-->
						</div>
						<div class="col-6 col-md-4 col-lg-3 mb-5">
							<!--begin::Label-->
							<label class="required fs-6 fw-bold mb-2 text-first-capitalize">Bedrooms</label>
							<!--end::Label-->
							<!--begin::Input group-->
							<div class="input-group">
								<span class="input-group-text" id="basic-addon2">
									<!--begin::Svg Icon | path: icons/duotune/communication/com006.svg-->
									<span class="fa fa-bed"></span>
									<!--end::Svg Icon-->
								</span>
								<input type="number" class="form-control" placeholder="Bedrooms" aria-label="Bedrooms" name="bedrooms"
									aria-describedby="basic-addon2" />
							</div>
							<!--end::Input group-->
						</div>
						<div class="col-6 col-md-4 col-lg-3 mb-5">
							<!--begin::Label-->
							<label class="required fs-6 fw-bold mb-2 text-first-capitalize">Bathrooms</label>
							<!--end::Label-->
							<!--begin::Input group-->
							<div class="input-group">
								<span class="input-group-text" id="basic-addon3">
									<!--begin::Svg Icon | path: icons/duotune/communication/com006.svg-->
									<span class="fa fa-bath"></span>
									<!--end::Svg Icon-->
								</span>
								<input type="number" class="form-control" placeholder="Bathrooms" aria-label="Bathrooms" name="bathrooms"
									aria-describedby="basic-addon3" />
							</div>
							<!--end::Input group-->
						</div>
						<div class="col-6 col-md-4 col-lg-3 mb-5">
							<!--begin::Label-->
							<label class="required fs-6 fw-bold mb-2 text-first-capitalize">Floors</label>
							<!--end::Label-->
							<!--begin::Input group-->
							<div class="input-group">
								<span class="input-group-text" id="basic-addon4">
									<!--begin::Svg Icon | path: icons/duotune/communication/com006.svg-->
									<span class="fa fa-building"></span>
									<!--end::Svg Icon-->
								</span>
								<input type="number" class="form-control" placeholder="Floors" aria-label="Floors" name="floors"
									aria-describedby="basic-addon4" />
							</div>
							<!--end::Input group-->
						</div>
					</div>
					<div class="row my-4">
						<div class="col-md-4">
							<div class="fv-row fv-plugins-icon-container">
								<!--begin::Label-->
								<label class="required fs-6 fw-bold mb-2 text-first-capitalize">Property Type</label>
								<!--end::Label-->
								<!--begin::Input-->
								<div class="position-relative">
									<select name="property_type" class="form-select" data-control="select2" data-placeholder="Select a type">
										<option></option>
										<option value="apartment">Apartment</option>
										<option value="home">Home</option>
										<option value="villa">Villa</option>
										<option value="office">Office</option>
										<option value="building">Building</option>
										<option value="townhouse">TownHouse</option>
										<option value="shop">Shop</option>
										<option value="garage">Garage</option>
									</select>
									<span class="text-danger fw-boldest"></span>
								</div>
								<!--end::Input-->
							</div>
						</div>
						<div class="col-md-4">
							<div class="fv-row fv-plugins-icon-container">
								<!--begin::Label-->
								<label class="required fs-6 fw-bold mb-2 text-first-capitalize">Operation Type</label>
								<!--end::Label-->
								<!--begin::Input-->
								<div class="position-relative">
									<select name="operation_type" class="form-select" data-control="select2" data-placeholder="Select a type">
										<option></option>
										<option value="For Sell">Sell</option>
										<option value="For Rent">Rent</option>
									</select>
									<span class="text-danger fw-boldest"></span>
								</div>
								<!--end::Input-->
							</div>
						</div>
						<div class="col-md-4">
							<div class="fv-row fv-plugins-icon-container">
								<!--begin::Label-->
								<label class="required fs-6 fw-bold mb-2 text-first-capitalize">Price</label>
								<!--end::Label-->
								<!--begin::Input group-->
								<div class="input-group">
									<span class="input-group-text" id="basic-addon5">
										<!--begin::Svg Icon | path: icons/duotune/communication/com006.svg-->
										<span class="fas fa-money-bill-wave"></span>
										<!--end::Svg Icon-->
									</span>
									<input type="text" class="form-control" placeholder="Price" aria-label="Price" name="price"
										aria-describedby="basic-addon5" />
								</div>
								<!--end::Input group-->
							</div>
						</div>

					</div>
					<div class="row my-4">
						<div class="col-md-6">
							<div class="fv-row fv-plugins-icon-container">
								<!--begin::Label-->
								<label class="required fs-6 fw-bold mb-2 text-first-capitalize">Gallery</label>
								<!--end::Label-->
								<!--begin::Input-->
								<div class="position-relative">
									<input type="file" id="images1" class="filepond" name="filepond" multiple
										data-max-file-size="100MB" />
									<span class="text-danger fw-boldest"></span>
								</div>
								<!--end::Input-->
							</div>
						</div>
					</div>
					<div class="row mt-10">
						<button class="btn btn-primary w-100" type="submit">Create</button>
					</div>
				</form>
			</div>
		</div>


		</div>
		<!--end::Container-->
		</div>
		<!--end::Content-->
		<!--begin::Footer-->
		<%@ include file="Partials/footer.jsp" %>
			<!--end::Footer-->
			</div>
			<!--end::Wrapper-->
			</div>
			<!--end::Page-->
			</div>
			<!--end::Root-->

			<!--begin::Scrolltop-->
			<div id="kt_scrolltop" class="scrolltop" data-kt-scrolltop="true">
				<!--begin::Svg Icon | path: icons/duotune/arrows/arr066.svg-->
				<span class="svg-icon">
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
						<rect opacity="0.5" x="13" y="6" width="13" height="2" rx="1" transform="rotate(90 13 6)"
							fill="black" />
						<path
							d="M12.5657 8.56569L16.75 12.75C17.1642 13.1642 17.8358 13.1642 18.25 12.75C18.6642 12.3358 18.6642 11.6642 18.25 11.25L12.7071 5.70711C12.3166 5.31658 11.6834 5.31658 11.2929 5.70711L5.75 11.25C5.33579 11.6642 5.33579 12.3358 5.75 12.75C6.16421 13.1642 6.83579 13.1642 7.25 12.75L11.4343 8.56569C11.7467 8.25327 12.2533 8.25327 12.5657 8.56569Z"
							fill="black" />
					</svg>
				</span>
				<!--end::Svg Icon-->
			</div>
			<!--end::Scrolltop-->
			<!--end::Main-->
			<script>var hostUrl = "assets/";</script>
			<!--begin::Javascript-->
			<!--begin::Global Javascript Bundle(used by all pages)-->
			<script src="<%= request.getContextPath() %>/view/assets/plugins/global/plugins.bundle.js"></script>
			<script src="<%= request.getContextPath() %>/view/assets/js/scripts.bundle.js"></script>
			<!--end::Global Javascript Bundle-->

			<script
				src="<%= request.getContextPath()%>/view/assets/plugins/filepond/js/filepond-plugin-image-preview.js"></script>
			<script
				src="<%= request.getContextPath()%>/view/assets/plugins/filepond/js/filepond-plugin-file-validate-type.js"></script>
			<script src="<%= request.getContextPath()%>/view/assets/plugins/filepond/js/filepond.js"></script>

			<script>
				FilePond.registerPlugin(FilePondPluginImagePreview);
				FilePond.registerPlugin(FilePondPluginFileValidateType);
				const inputElement = document.getElementById('images');
				const pond = FilePond.create(inputElement);
			</script>
			<!--end::Javascript-->
			</body>
			<!--end::Body-->

			</html>