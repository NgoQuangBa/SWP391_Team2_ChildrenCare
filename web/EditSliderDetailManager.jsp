
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

        <style>@import url('https://fonts.googleapis.com/css2?family=Kaushan+Script&family=Poppins&display=swap');

            * {
                padding: 0;
                margin: 0;
                box-sizing: border-box
            }

            body {
                background-color: #eee;
                height: 100vh;
                font-family: 'Poppins', sans-serif;
                background: linear-gradient(to top, #fff 10%, rgba(93, 42, 141, 0.4) 90%) no-repeat
            }

            .wrapper {
                max-width: 1000px;
                border-radius: 10px;
                margin: 50px auto;
                padding: 30px 40px;
                box-shadow: 20px 20px 80px rgb(206, 206, 206)
            }

            .h2 {
                font-family: 'Kaushan Script', cursive;
                font-size: 3.5rem;
                font-weight: bold;
                color: #400485;
                font-style: italic
            }

            .h4 {
                font-family: 'Poppins', sans-serif
            }

            .input-field {
                border-radius: 5px;
                padding: 5px;
                display: flex;
                align-items: center;
                cursor: pointer;
                border: 1px solid #400485;
                color: #400485
            }

            .input-field:hover {
                color: #7b4ca0;
                border: 1px solid #7b4ca0
            }

            input {
                border: none;
                outline: none;
                box-shadow: none;
                width: 100%;
                padding: 0px 2px;
                font-family: 'Poppins', sans-serif
            }

            .fa-eye-slash.btn {
                border: none;
                outline: none;
                box-shadow: none
            }

            a {
                text-decoration: none;
                color: #400485;
                font-weight: 700
            }

            a:hover {
                text-decoration: none;
                color: #7b4ca0
            }

            .option {
                position: relative;
                padding-left: 30px;
                cursor: pointer
            }

            .option label.text-muted {
                display: block;
                cursor: pointer
            }

            .option input {
                display: none
            }

            .checkmark {
                position: absolute;
                top: 3px;
                left: 0;
                height: 20px;
                width: 20px;
                background-color: #fff;
                border: 1px solid #ddd;
                border-radius: 50%;
                cursor: pointer
            }

            .option input:checked~.checkmark:after {
                display: block
            }

            .option .checkmark:after {
                content: "";
                width: 13px;
                height: 13px;
                display: block;
                background: #400485;
                position: absolute;
                top: 48%;
                left: 53%;
                border-radius: 50%;
                transform: translate(-50%, -50%) scale(0);
                transition: 300ms ease-in-out 0s
            }

            .option input[type="radio"]:checked~.checkmark {
                background: #fff;
                transition: 300ms ease-in-out 0s;
                border: 1px solid #400485
            }

            .option input[type="radio"]:checked~.checkmark:after {
                transform: translate(-50%, -50%) scale(1)
            }

            .btn.btn-block {
                border-radius: 20px;
                background-color: #400485;
                color: #fff
            }

            .btn.btn-block:hover {
                background-color: #55268be0
            }

            @media(max-width: 575px) {
                .wrapper {
                    margin: 10px
                }
            }

            @media(max-width:424px) {
                .wrapper {
                    padding: 30px 10px;
                    margin: 5px
                }

                .option {
                    position: relative;
                    padding-left: 22px
                }

                .option label.text-muted {
                    font-size: 0.95rem
                }

                .checkmark {
                    position: absolute;
                    top: 2px
                }

                .option .checkmark:after {
                    top: 50%
                }

                #forgot {
                    font-size: 0.95rem
                }
            }</style>
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
                <a href="listslidermanager" type="button" class="btn btn-success">Back Link</a>
            </div>
            <div class="container-fluid">
                 <div class="alert alert-primary" role="alert">
                    <h1 style="text-align: center">Manager edit slider</h1>
                </div>
                <div class="row">

                    <div class="wrapper bg-white">
                        <!--                        <div class="h2 text-center">Welcome addnew service addmin</div>-->
                        <div class="h4 text-muted text-center pt-2">${mess}</div>
                        <form action ="editsliderdetailmanager" method="POST" class="pt-3">
                            <div class="form-group py-2">
                                    <div>Slider ID</div>
                                    <div class="input-field"><input type="text" name="sid" value="${serdetail.slider_id}" placeholder="${sessionScope.sidd}" readonly=""> </div>
                            </div>
                            <div class="form-group py-2">
                                <div>Slider title</div>
                                <div class="input-field"><input type="text" minlength="10" maxlength="200" name="title" required value="${serdetail.slider_title}" placeholder="${sessionScope.title}"> </div>
                            </div>
                                                     
                            <div class="form-group py-2">
                                  <div>Slider image link</div>
                                  <img hidden style="height: 100px; width: 100px" id="main-img" class="imagebig img-fluid rounded" src="./resouce/image/service/${serdetail.image_link}" alt="..." />
                                  <div class="input-field"><input type="file" name="image" required value="${serdetail.image_link}">${sessionScope.image}</div>
                            </div>
                               <div class="form-group py-2">
                                <div>Slider notes:</div>
                                <div class="input-field"><textarea style="width: 1000px;" minlength="10" maxlength="500" type="text" name="notes" required placeholder="${sessionScope.notes}">${serdetail.notes}</textarea> </div>
                            </div>
                            <button type="submit" class="btn btn-block text-center my-3">Edit slider</button>
                        </form>

                            </div>

                    </div>
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


