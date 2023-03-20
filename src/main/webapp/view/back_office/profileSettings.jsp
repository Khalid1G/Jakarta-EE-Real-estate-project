<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

	<%@ include file="./Partials/topPage.jsp" %>

		<%@ include file="./Components/profileCard.jsp" %>


			<div class="card mb-5 mb-xl-10">
				<!--begin::Card header-->
				<div class="card-header border-0 cursor-pointer" role="button" data-bs-toggle="collapse"
					data-bs-target="#kt_account_profile_details" aria-expanded="true"
					aria-controls="kt_account_profile_details">
					<!--begin::Card title-->
					<div class="card-title m-0">
						<h3 class="fw-bolder m-0">Profile Details</h3>
					</div>
					<!--end::Card title-->
				</div>
				<!--begin::Card header-->
				<!--begin::Content-->
				<div id="kt_account_profile_details" class="collapse show">
					<!--begin::Form-->
					<form id="kt_account_profile_details_form" class="form fv-plugins-bootstrap5 fv-plugins-framework"
						novalidate="novalidate" action="" method="POST" enctype="multipart/form-data">
						<!--begin::Card body-->
						<div class="card-body border-top p-9">
							<!--begin::Input group-->
							<div class="row mb-6">
								<!--begin::Label-->
								<label class="col-lg-4 col-form-label fw-bold fs-6">Avatar</label>
								<!--end::Label-->
								<!--begin::Col-->
								<div class="col-lg-8">
									<!--begin::Image input-->
									<div class="image-input image-input-outline" data-kt-image-input="true"
										style="background-image: url(<%= request.getContextPath()%>/view/assets/media/avatars/blank.png)">
										<!--begin::Preview existing avatar-->
										<div class="image-input-wrapper w-125px h-125px"
											style="background-image: url(<%= request.getContextPath()%>/view/assets/img/<%= currentUser.getAvatar() %>)"></div>
										<!--end::Preview existing avatar-->
										<!--begin::Label-->
										<label
											class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow"
											data-kt-image-input-action="change" data-bs-toggle="tooltip" title=""
											data-bs-original-title="Change avatar">
											<i class="bi bi-pencil-fill fs-7"></i>
											<!--begin::Inputs-->
											<input type="file" name="avatar">
											<input type="hidden" name="avatar_remove">
											<!--end::Inputs-->
										</label>
										<!--end::Label-->
										<!--begin::Cancel-->
										<span
											class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow"
											data-kt-image-input-action="cancel" data-bs-toggle="tooltip" title=""
											data-bs-original-title="Cancel avatar">
											<i class="bi bi-x fs-2"></i>
										</span>
										<!--end::Cancel-->
										<!--begin::Remove-->
										<span
											class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow"
											data-kt-image-input-action="remove" data-bs-toggle="tooltip" title=""
											data-bs-original-title="Remove avatar">
											<i class="bi bi-x fs-2"></i>
										</span>
										<!--end::Remove-->
									</div>
									<!--end::Image input-->
									<!--begin::Hint-->
									<div class="form-text">Allowed file types: png, jpg, jpeg.</div>
									<!--end::Hint-->
								</div>
								<!--end::Col-->
							</div>
							<!--end::Input group-->
							<!--begin::Input group-->
							<div class="row mb-6">
								<!--begin::Label-->
								<label class="col-lg-4 col-form-label required fw-bold fs-6">Full Name</label>
								<!--end::Label-->
								<!--begin::Col-->
								<div class="col-lg-8">
									<!--begin::Row-->
									<div class="row">
										<!--begin::Col-->
										<div class="col-lg-6 fv-row fv-plugins-icon-container">
											<input type="text" name="fname"
												class="form-control form-control-lg form-control-solid mb-3 mb-lg-0"
												placeholder="First name" value="<%= currentUser.getPrenom() %>">
											<div class="fv-plugins-message-container invalid-feedback"></div>
										</div>
										<!--end::Col-->
										<!--begin::Col-->
										<div class="col-lg-6 fv-row fv-plugins-icon-container">
											<input type="text" name="lname"
												class="form-control form-control-lg form-control-solid"
												placeholder="Last name" value="<%= currentUser.getNom() %>">
											<div class="fv-plugins-message-container invalid-feedback"></div>
										</div>
										<!--end::Col-->
									</div>
									<!--end::Row-->
								</div>
								<!--end::Col-->
							</div>
							<!--end::Input group-->
							<!--begin::Input group-->
							<div class="row mb-6">
								<!--begin::Label-->
								<label class="col-lg-4 col-form-label fw-bold fs-6">
									<span class="required">Contact Phone</span>
									<i class="fas fa-exclamation-circle ms-1 fs-7" data-bs-toggle="tooltip" title=""
										data-bs-original-title="Phone number must be active"
										aria-label="Phone number must be active"></i>
								</label>
								<!--end::Label-->
								<!--begin::Col-->
								<div class="col-lg-8 fv-row fv-plugins-icon-container">
									<input type="tel" name="phone"
										class="form-control form-control-lg form-control-solid"
										placeholder="Phone number" value="<%= currentUser.getTel() %>">
									<div class="fv-plugins-message-container invalid-feedback"></div>
								</div>
								<!--end::Col-->
							</div>
							<!--end::Input group-->
						</div>
						<!--end::Card body-->
						<!--begin::Actions-->
						<div class="card-footer d-flex justify-content-end py-6 px-9">
							<button type="reset" class="btn btn-light btn-active-light-primary me-2">Discard</button>
							<button type="submit" class="btn btn-primary" id="kt_account_profile_details_submit">Save
								Changes</button>
						</div>
						<!--end::Actions-->
						<input type="hidden">
						<div></div>
					</form>
					<!--end::Form-->
				</div>
				<!--end::Content-->
			</div>

			<%@ include file="./Partials/bottomPage.jsp" %>