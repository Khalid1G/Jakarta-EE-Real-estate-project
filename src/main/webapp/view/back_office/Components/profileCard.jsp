<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <div class="card mb-5 mb-xl-10">
  <div class="card-body pt-9 pb-0">
    <!--begin::Details-->
    <div class="d-flex flex-wrap flex-sm-nowrap mb-3">
      <!--begin: Pic-->
      <div class="me-7 mb-4">
        <div
          class="symbol symbol-100px symbol-lg-160px symbol-fixed position-relative"
        >
          <img src="<%= request.getContextPath() %>/view/assets/media/avatars/150-26.jpg" alt="image" />
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
                href="#"
                class="text-gray-900 text-hover-primary fs-2 fw-bolder me-1"
                >Max Smith</a
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
                <!--end::Svg Icon-->max@kt.com</span
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
                  <!--begin::Svg Icon | path: icons/duotune/arrows/arr066.svg-->
                  <span class="svg-icon svg-icon-3 svg-icon-success me-2">
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      width="24"
                      height="24"
                      viewBox="0 0 24 24"
                      fill="none"
                    >
                      <rect
                        opacity="0.5"
                        x="13"
                        y="6"
                        width="13"
                        height="2"
                        rx="1"
                        transform="rotate(90 13 6)"
                        fill="black"
                      ></rect>
                      <path
                        d="M12.5657 8.56569L16.75 12.75C17.1642 13.1642 17.8358 13.1642 18.25 12.75C18.6642 12.3358 18.6642 11.6642 18.25 11.25L12.7071 5.70711C12.3166 5.31658 11.6834 5.31658 11.2929 5.70711L5.75 11.25C5.33579 11.6642 5.33579 12.3358 5.75 12.75C6.16421 13.1642 6.83579 13.1642 7.25 12.75L11.4343 8.56569C11.7467 8.25327 12.2533 8.25327 12.5657 8.56569Z"
                        fill="black"
                      ></path>
                    </svg>
                  </span>
                  <!--end::Svg Icon-->
                  <div
                    class="fs-2 fw-bolder counted"
                    data-kt-countup="true"
                    data-kt-countup-value="4500"
                    data-kt-countup-prefix="$"
                  >
                    $4,500
                  </div>
                </div>
                <!--end::Number-->
                <!--begin::Label-->
                <div class="fw-bold fs-6 text-gray-400">Earnings</div>
                <!--end::Label-->
              </div>
              <!--end::Stat-->
              <!--begin::Stat-->
              <div
                class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 me-6 mb-3"
              >
                <!--begin::Number-->
                <div class="d-flex align-items-center">
                  <!--begin::Svg Icon | path: icons/duotune/arrows/arr065.svg-->
                  <span class="svg-icon svg-icon-3 svg-icon-danger me-2">
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      width="24"
                      height="24"
                      viewBox="0 0 24 24"
                      fill="none"
                    >
                      <rect
                        opacity="0.5"
                        x="11"
                        y="18"
                        width="13"
                        height="2"
                        rx="1"
                        transform="rotate(-90 11 18)"
                        fill="black"
                      ></rect>
                      <path
                        d="M11.4343 15.4343L7.25 11.25C6.83579 10.8358 6.16421 10.8358 5.75 11.25C5.33579 11.6642 5.33579 12.3358 5.75 12.75L11.2929 18.2929C11.6834 18.6834 12.3166 18.6834 12.7071 18.2929L18.25 12.75C18.6642 12.3358 18.6642 11.6642 18.25 11.25C17.8358 10.8358 17.1642 10.8358 16.75 11.25L12.5657 15.4343C12.2533 15.7467 11.7467 15.7467 11.4343 15.4343Z"
                        fill="black"
                      ></path>
                    </svg>
                  </span>
                  <!--end::Svg Icon-->
                  <div
                    class="fs-2 fw-bolder counted"
                    data-kt-countup="true"
                    data-kt-countup-value="75"
                  >
                    75
                  </div>
                </div>
                <!--end::Number-->
                <!--begin::Label-->
                <div class="fw-bold fs-6 text-gray-400">Projects</div>
                <!--end::Label-->
              </div>
              <!--end::Stat-->
              <!--begin::Stat-->
              <div
                class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 me-6 mb-3"
              >
                <!--begin::Number-->
                <div class="d-flex align-items-center">
                  <!--begin::Svg Icon | path: icons/duotune/arrows/arr066.svg-->
                  <span class="svg-icon svg-icon-3 svg-icon-success me-2">
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      width="24"
                      height="24"
                      viewBox="0 0 24 24"
                      fill="none"
                    >
                      <rect
                        opacity="0.5"
                        x="13"
                        y="6"
                        width="13"
                        height="2"
                        rx="1"
                        transform="rotate(90 13 6)"
                        fill="black"
                      ></rect>
                      <path
                        d="M12.5657 8.56569L16.75 12.75C17.1642 13.1642 17.8358 13.1642 18.25 12.75C18.6642 12.3358 18.6642 11.6642 18.25 11.25L12.7071 5.70711C12.3166 5.31658 11.6834 5.31658 11.2929 5.70711L5.75 11.25C5.33579 11.6642 5.33579 12.3358 5.75 12.75C6.16421 13.1642 6.83579 13.1642 7.25 12.75L11.4343 8.56569C11.7467 8.25327 12.2533 8.25327 12.5657 8.56569Z"
                        fill="black"
                      ></path>
                    </svg>
                  </span>
                  <!--end::Svg Icon-->
                  <div
                    class="fs-2 fw-bolder counted"
                    data-kt-countup="true"
                    data-kt-countup-value="60"
                    data-kt-countup-prefix="%"
                  >
                    %60
                  </div>
                </div>
                <!--end::Number-->
                <!--begin::Label-->
                <div class="fw-bold fs-6 text-gray-400">Success Rate</div>
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
          class="nav-link text-active-primary ms-0 me-10 py-5 active"
          href="../../demo6/dist/account/overview.html"
          >Overview</a
        >
      </li>
      <!--end::Nav item-->
      <!--begin::Nav item-->
      <li class="nav-item mt-2">
        <a
          class="nav-link text-active-primary ms-0 me-10 py-5"
          href="../../demo6/dist/account/settings.html"
          >Settings</a
        >
      </li>
      <!--end::Nav item-->
      <!--begin::Nav item-->
      <li class="nav-item mt-2">
        <a
          class="nav-link text-active-primary ms-0 me-10 py-5"
          href="../../demo6/dist/account/security.html"
          >Security</a
        >
      </li>
      <!--end::Nav item-->
      <!--begin::Nav item-->
      <li class="nav-item mt-2">
        <a
          class="nav-link text-active-primary ms-0 me-10 py-5"
          href="../../demo6/dist/account/billing.html"
          >Properties</a
        >
      </li>
      <!--end::Nav item-->
    </ul>
    <!--begin::Navs-->
  </div>
</div>