<%@page import="Beans.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String pageName = (String)request.getAttribute("pageName");
	String path = request.getContextPath() + "/agent/profile";
	User currentUser = (User) request.getSession().getAttribute("user");
%>
    
    <div class="card mb-5 mb-xl-10">
  <div class="card-body pt-9 pb-0">
    <!--begin::Details-->
    <div class="d-flex flex-wrap flex-sm-nowrap mb-3">
      <!--begin: Pic-->
      <div class="me-7 mb-4">
        <div
          class="symbol symbol-100px symbol-lg-160px symbol-fixed position-relative"
        >
          <img src="<%= request.getContextPath() %>/view/assets/img/<%=  currentUser.getAvatar() %>" alt="image" />
          <div
            class="position-absolute translate-middle bottom-0 start-100 mb-6 bg-success rounded-circle border border-4 border-white h-20px w-20px"
          ></div>
        </div>
      </div>
      <!--end::Pic-->
      <!--begin::Info-->
      <div class="flex-grow-1">
        <!--begin::Title-->
        <div
          class="d-flex justify-content-between align-items-start flex-wrap mb-2"
        >
          <!--begin::User-->
          <div class="d-flex flex-column">
            <!--begin::Name-->
            <div class="d-flex align-items-center mb-2">
              <a
                class="text-gray-900 text-hover-primary fs-2 fw-bolder me-1"
                ><%= currentUser.getFullName() %></a
              >
            </div>
            <!--end::Name-->
            <!--begin::Info-->
            <div class="d-flex flex-wrap fw-bold fs-6 mb-4 pe-2">
              <span
                class="d-flex align-items-center text-gray-400 text-hover-primary me-5 mb-2"
              >
                <!--begin::Svg Icon | path: icons/duotune/communication/com006.svg-->
                <span class="svg-icon svg-icon-4 me-1">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="24"
                    height="24"
                    viewBox="0 0 24 24"
                    fill="none"
                  >
                    <path
                      opacity="0.3"
                      d="M22 12C22 17.5 17.5 22 12 22C6.5 22 2 17.5 2 12C2 6.5 6.5 2 12 2C17.5 2 22 6.5 22 12ZM12 7C10.3 7 9 8.3 9 10C9 11.7 10.3 13 12 13C13.7 13 15 11.7 15 10C15 8.3 13.7 7 12 7Z"
                      fill="black"
                    ></path>
                    <path
                      d="M12 22C14.6 22 17 21 18.7 19.4C17.9 16.9 15.2 15 12 15C8.8 15 6.09999 16.9 5.29999 19.4C6.99999 21 9.4 22 12 22Z"
                      fill="black"
                    ></path>
                  </svg>
                </span>
                <!--end::Svg Icon-->Real Estate Agent</span
              >
              <span
                class="d-flex align-items-center text-gray-400 text-hover-primary mb-2"
              >
                <!--begin::Svg Icon | path: icons/duotune/communication/com011.svg-->
                <span class="svg-icon svg-icon-4 me-1">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="24"
                    height="24"
                    viewBox="0 0 24 24"
                    fill="none"
                  >
                    <path
                      opacity="0.3"
                      d="M21 19H3C2.4 19 2 18.6 2 18V6C2 5.4 2.4 5 3 5H21C21.6 5 22 5.4 22 6V18C22 18.6 21.6 19 21 19Z"
                      fill="black"
                    ></path>
                    <path
                      d="M21 5H2.99999C2.69999 5 2.49999 5.10005 2.29999 5.30005L11.2 13.3C11.7 13.7 12.4 13.7 12.8 13.3L21.7 5.30005C21.5 5.10005 21.3 5 21 5Z"
                      fill="black"
                    ></path>
                  </svg>
                </span>
                <!--end::Svg Icon--><%= currentUser.getEmail() %></span
              >
            </div>
            <!--end::Info-->
          </div>
          <!--end::User-->
        </div>
        <!--end::Title-->
        <!--begin::Stats-->
        <div class="d-flex flex-wrap flex-stack">
          <!--begin::Wrapper-->
          <div class="d-flex flex-column flex-grow-1 pe-8">
            <!--begin::Stats-->
            <div class="d-flex flex-wrap">
              <!--begin::Stat-->
              <div
                class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 me-6 mb-3"
              >
                <!--begin::Number-->
                <div class="d-flex align-items-center">
                  <div>
                    <%= ((List<Integer>)request.getAttribute("counts")).get(0) %>
                  </div>
                </div>
                <!--end::Number-->
                <!--begin::Label-->
                <div class="fw-bold fs-6 text-gray-400">Total</div>
                <!--end::Label-->
              </div>
              <!--end::Stat-->
              <!--begin::Stat-->
              <div
                class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 me-6 mb-3"
              >
                <!--begin::Number-->
                <div class="d-flex align-items-center">
                  
                  <div>
                    <%= ((List<Integer>)request.getAttribute("counts")).get(1) %>
                  </div>
                </div>
                <!--end::Number-->
                <!--begin::Label-->
                <div class="fw-bold fs-6 text-gray-400">Available</div>
                <!--end::Label-->
              </div>
              <!--end::Stat-->
              <!--begin::Stat-->
              <div
                class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 me-6 mb-3"
              >
                <!--begin::Number-->
                <div class="d-flex align-items-center">
                  
                  <div>
                    <%= ((List<Integer>)request.getAttribute("counts")).get(2) %>
                  </div>
                </div>
                <!--end::Number-->
                <!--begin::Label-->
                <div class="fw-bold fs-6 text-gray-400">Unavailable</div>
                <!--end::Label-->
              </div>
              <!--end::Stat-->
            </div>
            <!--end::Stats-->
          </div>
          <!--end::Wrapper-->
        </div>
        <!--end::Stats-->
      </div>
      <!--end::Info-->
    </div>
    <!--end::Details-->
    <!--begin::Navs-->
    <ul
      class="nav nav-stretch nav-line-tabs nav-line-tabs-2x border-transparent fs-5 fw-bolder"
    >
      <!--begin::Nav item-->
      <li class="nav-item mt-2">
        <a
          class="nav-link text-active-primary ms-0 me-10 py-5 <%= pageName.equals("overview") ? "active" : "" %>"
          href="<%=path %>"
          >Overview</a
        >
      </li>
      <!--end::Nav item-->
      <!--begin::Nav item-->
      <li class="nav-item mt-2">
        <a
          class="nav-link text-active-primary ms-0 me-10 py-5 <%= pageName.equals("settings") ? "active" : "" %>"
          href="<%=path+"/settings" %>"
          >Settings</a
        >
      </li>
      <!--end::Nav item-->
      <!--begin::Nav item-->
      <li class="nav-item mt-2">
        <a
          class="nav-link text-active-primary ms-0 me-10 py-5 <%= pageName.equals("security") ? "active" : "" %>"
          href="<%=path+"/security" %>"
          >Security</a
        >
      </li>
      <!--end::Nav item-->
      <!--begin::Nav item-->
      <li class="nav-item mt-2">
        <a
          class="nav-link text-active-primary ms-0 me-10 py-5 <%= pageName.equals("properties") ? "active" : "" %>"
          href="<%=path+"/properties" %>"
          >Properties</a
        >
      </li>
      <!--end::Nav item-->
    </ul>
    <!--begin::Navs-->
  </div>
</div>