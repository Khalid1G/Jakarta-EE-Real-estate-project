<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ include file="./Partials/topPage.jsp" %>

<%@ include file="./Components/profileCard.jsp" %>

<div class="card mb-5 mb-xl-10" id="kt_profile_details_view">
	<!--begin::Card header-->
	<div class="card-header cursor-pointer">
		<!--begin::Card title-->
		<div class="card-title m-0">
			<h3 class="fw-bolder m-0">Profile Details</h3>
		</div>
		<!--end::Card title-->
		<!--begin::Action-->
		<a href="<%= request.getContextPath() %>/agent/profile/settings" class="btn btn-primary align-self-center">Edit Profile</a>
		<!--end::Action-->
	</div>
	<!--begin::Card header-->
	<!--begin::Card body-->
	<div class="card-body p-9">
		<!--begin::Row-->
		<div class="row mb-7">
			<!--begin::Label-->
			<label class="col-lg-4 fw-bold text-muted">Full Name</label>
			<!--end::Label-->
			<!--begin::Col-->
			<div class="col-lg-8">
				<span class="fw-bolder fs-6 text-gray-800"><%= currentUser.getFullName() %></span>
			</div>
			<!--end::Col-->
		</div>
		<!--end::Row-->
		<!--begin::Input group-->
		<div class="row mb-7">
			<!--begin::Label-->
			<label class="col-lg-4 fw-bold text-muted">Contact Phone
			<i class="fas fa-exclamation-circle ms-1 fs-7" data-bs-toggle="tooltip" title="" data-bs-original-title="Phone number must be active" aria-label="Phone number must be active"></i></label>
			<!--end::Label-->
			<!--begin::Col-->
			<div class="col-lg-8 d-flex align-items-center">
				<span class="fw-bolder fs-6 text-gray-800 me-2"><%= currentUser.getTel() %></span>
			</div>
			<!--end::Col-->
		</div>
		<!--end::Input group-->
		<!--begin::Input group-->
		<div class="row mb-7">
			<!--begin::Label-->
			<label class="col-lg-4 fw-bold text-muted">Communication</label>
			<!--end::Label-->
			<!--begin::Col-->
			<div class="col-lg-8">
				<span class="fw-bolder fs-6 text-gray-800">Email, Phone</span>
			</div>
			<!--end::Col-->
		</div>
		<!--end::Input group-->
	</div>
	<!--end::Card body-->
</div>

<%@ include file="./Partials/bottomPage.jsp" %>
