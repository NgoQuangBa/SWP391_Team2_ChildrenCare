

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Inner Page - Medilab Bootstrap Template</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
  <style>
      .main {
    padding-left: var(--sidebar-size);
}

.main-header {
    height: var(--main-header-height);
    display: flex;
    align-items: center;
    padding: 20px;
    background-color: var(--box-bg);
    box-shadow: var(--shadow);
}

.dark .main-header {
    border-bottom: 2px solid var(--border-color);
}

.mobile-toggle {
    display: none;
}

.main-title {
    text-transform: capitalize;
    font-size: 1.5rem;
}

.main-content {
    padding: 20px;
}

.box {
    background-color: var(--box-bg);
    padding: 20px;
    border: 0.5px solid var(--border-color);
    border-radius: var(--box-border-radius);
}

.box-hover:hover {
    border-color: var(--main-color);
}

.counter-title {
    margin-bottom: 20px;
    text-transform: capitalize;
}

.counter-info {
    display: flex;
    align-items: center;
    justify-content: space-between;
    font-size: 2rem;
    font-weight: 700;
}

.counter-info i {
    color: var(--main-color);
}

.box-header {
    text-transform: capitalize;
    font-size: 1.25rem;
    font-weight: 700;
}

.box-body {
    padding: 20px 0;
}

.product-list {
    list-style-type: none;
}

.product-list-item {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 15px 0;
}

.item-info {
    display: flex;
    align-items: center;
}

.item-info img {
    width: 50px;
    height: 50px;
    border-radius: 10px;
    margin-right: 10px;
}

.product-name,
.product-sales {
    font-weight: 600;
    text-transform: capitalize;
}

.product-name {
    margin-bottom: 5px;
}

.product-sales {
    margin-top: 5px;
}

.text-second {
    color: var(--text-second-color);
}

.item-sale-info {
    text-align: right;
}

.f-height {
    height: 100%;
}

table {
    width: 100%;
    min-width: 1000px;
}

.order-owner {
    display: flex;
    align-items: center;
    text-transform: capitalize;
    font-weight: 500;
}

.order-owner img {
    width: 45px;
    height: 45px;
    border-radius: 50%;
    margin-right: 15px;
}

table thead tr {
    text-align: left;
}

table th,
table td {
    padding: 20px 0;
    border-bottom: 1px solid var(-border-color);
}

.order-status {
    padding: 5px 15px;
    border-radius: 5px;
    font-weight: 500;
}

.order-ready {
    color: #2a59d1;
    background-color: rgba(62, 121, 247, 0.1);
}

.order-shipped {
    color: #00ab6f;
    background-color: rgba(4, 209, 130, 0.1);
}
.order-shipped1 {
    color: #00ab6f;
    background-color: #FFCCFF;
}

.payment-status {
    display: flex;
    align-items: center;
}

.payment-status .dot {
    width: 10px;
    height: 10px;
    border-radius: 50%;
    margin-right: 10px;
}

.payment-paid .dot {
    background-color: green;
}

.payment-pending .dot {
    background-color: #ffc542;
}

.overflow-scroll {
    overflow-y: auto;
}

.overlay {
    position: absolute;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.7);
    display: none;
}

.overlay.active {
    display: block;
}
  </style>
  <!-- =======================================================
  * Template Name: Medilab - v4.7.1
  * Template URL: https://bootstrapmade.com/medilab-free-medical-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Top Bar ======= -->
  <div id="topbar" class="d-flex align-items-center fixed-top">
    <div class="container d-flex justify-content-between">
      <div class="contact-info d-flex align-items-center">
        <i class="bi bi-envelope"></i> <a href="mailto:contact@example.com">contact@example.com</a>
        <i class="bi bi-phone"></i> +1 5589 55488 55
      </div>
      <div class="d-none d-lg-flex social-links align-items-center">
        <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
        <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
        <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
        <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
      </div>
    </div>
  </div>

  <!-- ======= Header ======= -->
  <jsp:include page="assets/module/header.jsp" flush="true"/>
  <!-- End Header -->

  <main id="main" style="padding: 100px 0 0">

    

    <section class="">
      <div class="container">
        <div class="col-md-12">
            <div class="col-md-12">
                    <!-- ORDERS TABLE -->
                    <div class="box">
                        <div class="box-header">
                           Post List
                        </div>
                        <div class="box-body overflow-scroll" style=" overflow-y: auto;">
                            <table>
                                        <thead>
                                            <tr>
                                                <th>Post ID</th>
                                                <th>thumbnail</th>

                                                <th>title</th>
                                                <th>category</th>
                                                <th>author</th>
                                                <th>status </th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach  items="${requestScope.postList}" var="p">


                                                <tr>
                                                    <td>${p.blog_id}</td>
                                                    <td style="width: 50px">
                                                        <img src="./resouce/image/${p.blog_image}" alt="" class="img-fluid">
                                                    </td>


                                                    <td>
                                                        <span class="order-status order-ready">
                                                            ${p.title}
                                                        </span>
                                                    </td>
                                                    <td>
                                                        <span class="order-status order-ready">
                                                            ${p.category_name}
                                                        </span>
                                                    </td>
                                                    <td>
                                                        <span class="order-status order-ready">
                                                            ${p.user_fullname}
                                                        </span>
                                                    </td>

                                                    <c:if test="${p.view_able==true}">
                                                        <td>
                                                            <div class="payment-status payment-pending">
                                                                <div class="dot"></div>
                                                                <span>On</span>
                                                            </div>
                                                        </td>
                                                    </c:if>

                                                    <c:if test="${p.view_able==false}">
                                                        <td>
                                                            <div class="payment-status payment-paid">
                                                                <div class="dot"></div>
                                                                <span>Off</span>
                                                            </div>
                                                        </td>
                                                    </c:if>
                                                        <td><button type="button" class="btn btn-success"><a href="/project_swp391/post-details?blog_id=${p.blog_id}">Detail</a></button></td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                        </div>
                    </div>
                    <!-- END ORDERS TABLE -->
                </div>
            
            </div>
        </div>
      </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <jsp:include page="assets/module/footer.jsp" flush="true"/>
  <!-- End Footer -->

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
  

</body>

</html>