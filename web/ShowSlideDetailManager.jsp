
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <link href="assets/css/reservationinformation.css" rel="stylesheet">

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


        <main  id="main" style="padding: 85px; margin-top: 200px">
            <div class="btn-group" role="group" aria-label="Basic mixed styles example">
                <a href="listslidermanager" type="button" class="btn btn-warning">BACK</a>
            </div>


            <div class="container mt-5">
                <div class="alert alert-primary" style="text-align: center" role="alert">
                    <h1>Slide detail manager</h1>
                </div>
                <div class="row" style="margin-top: 100px;">
                    <div class="col-lg-8">
                        <!-- Post content-->
                        <article>
                            <!-- Post header-->
                            <header class="mb-4">
                                <!-- Post title-->
                                <!-- Post meta content-->

                            </header>
                            <!-- Preview image figure-->
                            <!-- Post content-->
                            <table class="table table-bordered">

                                <tbody>
                                    <tr>
                                        <td>
                                            <h3 class="fw-bolder mb-1">Slider title:</h3>
                                            <p>${serdetail.slider_title}</p>
                                        </td> 
                                    </tr>
                                    <tr>
                                        <td>
                                            <h2 class="fw-bolder mb-1">Slider images:</h2>
                                            <figure class="mb-4"><img style="height: 500px; width: 800px" class="img-fluid rounded" src="./resouce/image/service/${serdetail.image_link}" alt="..." /></figure>
                                        </td> 
                                    </tr>
                                    <tr>
                                        <td>
                                            <h2 class="fw-bolder mb-1">Slider status:</h2>
                                            <c:if test="${serdetail.slider_status == true}">
                                                Active
                                            </c:if>
                                            <c:if test="${serdetail.slider_status == false}">
                                                InActive
                                            </c:if>      
                                        </td> 
                                    </tr>
                                    <tr>
                                        <td>
                                            <h2 class="fw-bolder mb-1">Slider notes: </h2>
                                            <p>${serdetail.notes}</p>
                                        </td> 
                                    </tr>
                                </tbody>
                            </table>

                        </article>
                        <!-- Comments section-->

                    </div>
                    <!-- Side widgets-->

                </div>
            </div>


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


