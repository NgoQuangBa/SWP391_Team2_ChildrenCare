
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            .ratings {
                list-style-type: none;
                margin: 0;
                padding: 0;
                width: 100%;
                direction: rtl;
                text-align: left;
            }

            .star {
                position: relative;
                line-height: 60px;
                display: inline-block;
                transition: color 0.2s ease;
                color: #ebebeb;
            }

            .star:before {
                content: '\2605';
                width: 60px;
                height: 60px;
                font-size: 60px;
            }

            .star:hover,
            .star.selected,
            .star:hover ~ .star,
            .star.selected ~ .star{
                transition: color 0.8s ease;
                color: black;
            }
            button, input, optgroup, select, textarea {
                margin: 0 20px 20px;
                font-family: inherit;
                font-size: inherit;
                line-height: inherit;
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

        <main id="main" style="padding: 200px 0 0;">

            <!-- ======= Contact Section ======= -->
            <section id="contact" class="contact">



                <div class="section-title">
                    <h1>SEND YOUR FEED BACK</h1>
                    <p>Children Care 24/7 Always support you tận răng !!!</p>
                </div>
                </div>
                <div class="container">
                    <div class="row mt-5">

                        <div class="col-lg-4">
                            <div class="info">
                                <div class="address">
                                    <i class="bi bi-geo-alt"></i>
                                    <h4>Location:</h4>
                                    <p>Đại Học FPT Hà Nội, Thạch Hòa, Thạch Thất.</p>
                                </div>

                                <div class="email">
                                    <i class="bi bi-envelope"></i>
                                    <h4>Email:</h4>
                                    <p>hoannnhe151308@fpt.edu.vn</p>
                                    <p>khoannhe153156@fpt.edu.vn</p>
                                </div>

                                <div class="phone">
                                    <i class="bi bi-phone"></i>
                                    <h4>Call:</h4>
                                    <p>+84 869510929</p>
                                </div>

                            </div>

                        </div>

                        <div class="col-lg-8 mt-5 mt-lg-0">

                            <form action="feedback" method="post">
                                <div class="row php-email-form">
                                    <div class="col-md-6 form-group">
                                        <input type="hidden" name="user_id" value="${user.user_id}">
                                        <input type="hidden" name="res_id" value="${res_id}">
                                        <input type="text" name="name" value="${user.user_name}" class="form-control" id="name" placeholder="Your Name" required>
                                    </div>
                                    <div class="col-md-6 form-group mxt-3 mt-md-0">
                                        <input type="email" class="form-control" value="${user.user_email}" name="email" id="email" placeholder="Your Email" required>
                                    </div>
                                </div>
                                <div class="col-md-12"><label class="labels">Gender: </label><br>
                                    <c:choose>
                                        <c:when test="${user != null}">
                                            <c:if test="${user.user_gender == true}">
                                                <input checked name="gender" type="radio" value="1"> Male
                                                <input name="gender" type="radio" value="0"> Female
                                            </c:if>
                                            <c:if test="${user.user_gender == false}">
                                                <input name="gender" type="radio" value="1"> Male
                                                <input checked name="gender" checked="checked" type="radio" value="0"> Female
                                            </c:if>
                                        </c:when>
                                        <c:otherwise>
                                            <input name="gender" type="radio" value="1"> Male
                                            <input name="gender" type="radio" value="0"> Female
                                        </c:otherwise>
                                    </c:choose>
                                    <script>
                                        document.addEventListener("DOMContentLoaded", function () {
                                            document.getElementsByName('gender')[0].checked=true;
                                        });
                                        
                                    </script>

                                </div>
                                <div class="form-group mt-3">
                                    <input type="tel" pattern="[0-9\-\+]{9,15}" type="text" class="form-control" name="phone" value="${user.user_phone}" id="subject" placeholder="Phone" required>
                                </div>

                                <div class="form-group mt-3">
                                    <textarea class="form-control" name="note" rows="5" placeholder="Feedback" required></textarea>
                                </div>
                                <div class="form-group mt-3">
                                    <select name="star">
                                        <option value="1">1 SAO</option>
                                        <option value="2">2 SAO</option>
                                        <option value="3">3 SAO</option>
                                        <option value="4">4 SAO</option>
                                        <option value="5">5 SAO</option>
                                    </select>
                                </div>
                                <div class="col-md-12">
                                    <label class="labels">
                                        UPLOAD IMAGE<img class="o rounded-circle mt-5" width="100px" height="100px" src="data:image/png;base64,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">
                                        <input  accept="image/*" hidden="hidden" name="image" type="file" class="form-control" value="">
                                    </label>
                                </div>
                                <div class="text-center"><button type="submit">FeedBack</button></div>
                            </form>
                        </div>
                    </div>
                </div>
            </section><!-- End Contact Section -->
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