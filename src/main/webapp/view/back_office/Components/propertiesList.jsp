<%@page import="java.util.List" %>
	<%@page import="Beans.Immobiliers" %>
		<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


			<div>
				<!--begin::Tables Widget 9-->
				<div class="card card-xxl-stretch mb-5 mb-xl-8">
					<!--begin::Header-->
					<div class="card-header border-0 pt-5">
						<h3 class="card-title align-items-start flex-column">
							<span class="card-label fw-bolder fs-3 mb-1">Properties list</span>
						</h3>
						<div class="card-toolbar" data-bs-toggle="tooltip" data-bs-placement="top"
							data-bs-trigger="hover" title="" data-bs-original-title="Click to add a property">
							<a href="${pageContext.request.contextPath}/agent/property/add" class="btn btn-sm btn-light btn-active-primary">
								<!--begin::Svg Icon | path: icons/duotune/arrows/arr075.svg-->
								<span class="svg-icon svg-icon-3">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
										fill="none">
										<rect opacity="0.5" x="11.364" y="20.364" width="16" height="2" rx="1"
											transform="rotate(-90 11.364 20.364)" fill="black"></rect>
										<rect x="4.36396" y="11.364" width="16" height="2" rx="1" fill="black"></rect>
									</svg>
								</span>
								<!--end::Svg Icon-->New Property</a>
						</div>
					</div>
					<!--end::Header-->
					<!--begin::Body-->
					<div class="card-body py-3">
						<!--begin::Table container-->
						<div class="table-responsive">
							<!--begin::Table-->
							<table class="table table-row-dashed table-row-gray-300 align-middle gs-0 gy-4">
								<!--begin::Table head-->
								<thead>
									<tr class="fw-bolder text-muted">
										<th class="min-w-160px">Type</th>
										<th class="min-w-140px">City</th>
										<th class="min-w-130px">Operation</th>
										<th class="min-w-120px">Availability</th>
										<th class="min-w-100px text-end">Actions</th>
									</tr>
								</thead>
								<!--end::Table head-->
								<!--begin::Table body-->
								<tbody>
									<% for(Immobiliers imm : (List<Immobiliers>)request.getAttribute("properties")) { %>
										<tr>
											<td>
												<div class="d-flex align-items-center">
													<div class="symbol symbol-45px me-5">
														<img src="https://dchba.org/wp-content/uploads/2020/06/house-placeholder.png"
															alt="">
													</div>
													<div class="d-flex justify-content-start flex-column">
														<a href="#" class="text-dark fw-bolder text-hover-primary fs-6">
															<%= imm.getTitle() %>
														</a>
														<span class="text-muted fw-bold text-muted d-block fs-7">
															<%= imm.getType() %>
														</span>
													</div>
												</div>
											</td>
											<td>
												<span class="text-dark fw-bolder d-block fs-6">
													<%= imm.getVille() %>
												</span>
											</td>
											<td class="text-end">
												<div class="d-flex flex-column w-100 me-2">
													<span
														class='badge badge-light-<%= imm.getListing_type().equals("For Sell") ? "success" : "warning" %>'>
														<%= imm.getListing_type() %>
													</span>
												</div>
											</td>
											<td class="text-end">
												<div class="d-flex flex-column w-100 me-2">
													<span
														class='badge badge-light-<%= imm.getDisponibilite().equals("available") ? "success" : "danger" %>'>
														<%= imm.getDisponibilite() ? "Available" :  "Unavailable"%>
													</span>
												</div>
											</td>
											<td>
												<div class="d-flex justify-content-end flex-shrink-0">
													<a href="${pageContext.request.contextPath}/showProperty/<%= imm.getId() %>"
														class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm me-1">
														<!--begin::Svg Icon | path: icons/duotune/general/gen019.svg-->
														<span class="svg-icon svg-icon-3">
															<svg xmlns="http://www.w3.org/2000/svg" width="24"
																height="24" viewBox="0 0 24 24" fill="none">
																<path
																	d="M17.5 11H6.5C4 11 2 9 2 6.5C2 4 4 2 6.5 2H17.5C20 2 22 4 22 6.5C22 9 20 11 17.5 11ZM15 6.5C15 7.9 16.1 9 17.5 9C18.9 9 20 7.9 20 6.5C20 5.1 18.9 4 17.5 4C16.1 4 15 5.1 15 6.5Z"
																	fill="black"></path>
																<path opacity="0.3"
																	d="M17.5 22H6.5C4 22 2 20 2 17.5C2 15 4 13 6.5 13H17.5C20 13 22 15 22 17.5C22 20 20 22 17.5 22ZM4 17.5C4 18.9 5.1 20 6.5 20C7.9 20 9 18.9 9 17.5C9 16.1 7.9 15 6.5 15C5.1 15 4 16.1 4 17.5Z"
																	fill="black"></path>
															</svg>
														</span>
														<!--end::Svg Icon-->
													</a>
													<a href="<%= request.getContextPath() %>/agent/properties/delete?id=<%= imm.getId() %>"
														class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm">
														<!--begin::Svg Icon | path: icons/duotune/general/gen027.svg-->
														<span class="svg-icon svg-icon-3">
															<svg xmlns="http://www.w3.org/2000/svg" width="24"
																height="24" viewBox="0 0 24 24" fill="none">
																<path
																	d="M5 9C5 8.44772 5.44772 8 6 8H18C18.5523 8 19 8.44772 19 9V18C19 19.6569 17.6569 21 16 21H8C6.34315 21 5 19.6569 5 18V9Z"
																	fill="black"></path>
																<path opacity="0.5"
																	d="M5 5C5 4.44772 5.44772 4 6 4H18C18.5523 4 19 4.44772 19 5V5C19 5.55228 18.5523 6 18 6H6C5.44772 6 5 5.55228 5 5V5Z"
																	fill="black"></path>
																<path opacity="0.5"
																	d="M9 4C9 3.44772 9.44772 3 10 3H14C14.5523 3 15 3.44772 15 4V4H9V4Z"
																	fill="black"></path>
															</svg>
														</span>
														<!--end::Svg Icon-->
													</a>
												</div>
											</td>
										</tr>
										<% } %>
								</tbody>
								<!--end::Table body-->
							</table>
							<!--end::Table-->
						</div>
						<!--end::Table container-->
					</div>
					<!--begin::Body-->
				</div>
				<!--end::Tables Widget 9-->
			</div>
