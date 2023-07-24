 

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
        <section class="vh-100">

            <div style="margin-top: 50px" class="container-fluid h-custom">
                <a href="index"><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-arrow-left-circle" viewBox="0 0 16 16">
                    <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-4.5-.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5z"/>
                    </svg></a>
                <div class="row d-flex justify-content-center align-items-center h-100">



                    <div class="col-md-9 col-lg-6 col-xl-5">
                        <img src="https://media.istockphoto.com/vectors/children-at-play-vector-id1187871269?k=20&m=1187871269&s=612x612&w=0&h=WwKXdsJvE7_9dDDkPa3REBgU8HEr13jzaBRQH-0O5qs="
                             class="img-fluid" alt="Sample image">

                    </div>

                    <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
                        <form name="login" action="login" method="POST"  onsubmit="required()">
                            <h3 class="text-danger">${error}</h3>
                            <!-- Email input -->
                            <c:if test="${user_email!=null}">
                                <div class="form-outline mb-4">                 

                                <label class="form-label" for="user_email">Email address</label>
                                <input type="email" id="username" class="form-control form-control-lg"
                                       value="${user_email}" placeholder="Enter a valid email address" name="user_email" ${sessionScope.user_email}/>
                            </div>
                            </c:if>
                            <c:if test="${user_email==null}">
                                <div class="form-outline mb-4">                 

                                <label class="form-label" for="user_email">Email address</label>
                                <input type="email" id="username" class="form-control form-control-lg"
                                       placeholder="Enter a valid email address" name="user_email" ${sessionScope.user_email}/>
                            </div>
                            </c:if>
                            
<!--
                                                         Password input 
                                                                                    <div class="form-outline mb-3">
                                <label class="form-label" for="password">Password</label>
                                <input type="password" id="form3Example4" class="form-control form-control-lg"
                                       placeholder="Enter password" name="password" />
                            </div>-->



                                                        <div class="form-outline mb-3">
                                                            <i class="far fa-eye" id="togglePassword" style="cursor: pointer;"></i>
                                                            <label class="form-label" for="password">Password</label>
                                                            <div>
                                                                 <input type="password" id="password" class="form-control form-control-lg"
                                                                   placeholder="Enter password" name="password" />
                                                            </div>
                                                        </div>


                            <div class="d-flex justify-content-between align-items-center">
                                <!-- Checkbox -->
                                <div class="form-check mb-0">
                                    <input class="form-check-input me-2" type="checkbox" value="" id="remember" name="remember"/>
                                    <label class="form-check-label" for="remember">
                                        Remember me
                                    </label>
                                </div>

                                <a href="resetpassword" class="text-body link-danger">Forgot password?</a>
                            </div>

                            <div class="text-center text-lg-start mt-4 pt-2">
                                <button type="submit" style="width:100%" class="btn btn-primary btn-lg"
                                        style="padding-left: 2.5rem; padding-right: 2.5rem;">Login</button>
                                <p class="small fw-bold mt-2 pt-1 mb-0">Don't have an account? <a href="register"
                                                                                                  class="link-danger">Register</a></p>

                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </section>
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
        <script>
                            function required()
                            {
                                var empt = document.forms["login"]["user_email"].value;
                                var empt2 = document.forms["login"]["password"].value;
                                if (empt == "")
                                {
                                    alert("Email is empty! Please input a email.");
                                    return false;
                                } else if (empt2 == "") {
                                    alert("Password is empty! Please input a password");
                                    return false;
                                } else
                                {
                                    //   alert('Code has accepted : you can try another');
                                    return true;
                                }
                            }





                            const togglePassword = document.querySelector('#togglePassword');
                            const password = document.querySelector('#password');

                            togglePassword.addEventListener('click', function (e) {
                                // toggle the type attribute
                                const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
                                password.setAttribute('type', type);
                                // toggle the eye slash icon
                                this.classList.toggle('fa-eye-slash');
                            });
        </script>
    </body>

</html>
