
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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
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
        <link href="assets/css/register.css" rel="stylesheet">


        <!-- =======================================================
        * Template Name: Medilab - v4.7.1
        * Template URL: https://bootstrapmade.com/medilab-free-medical-bootstrap-theme/
        * Author: BootstrapMade.com
        * License: https://bootstrapmade.com/license/
        ======================================================== -->
    </head>

    <body>

        <section style="background-color: #eee;">

            <div class="container h-100">

                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-lg-12 col-xl-11">
                        <div class="card text-black" style="border-radius: 25px;">
                            <div class="card-body p-md-5">
                                <div class="row justify-content-center">
                                    <div><a href="login"><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-arrow-left-circle-fill" viewBox="0 0 16 16">
                                            <path d="M8 0a8 8 0 1 0 0 16A8 8 0 0 0 8 0zm3.5 7.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5z"/>
                                            </svg></a></div>

                                    <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                                        <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>

                                        <form name="register" action="register" class="mx-1 mx-md-4" method="post" onsubmit="required()">

                                            <c:if test="${requestScope.r!=null}">
                                                <h3 class="text-danger">${requestScope.r}</h3>
                                            </c:if>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="bi bi-person fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <label class="form-label" for="form3Example1c">User full name</label>
                                                    <input name="username" type="text" id="form3Example1c" class="form-control" />
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="bi bi-gender-ambiguous fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <input name="gender" type="radio" value="1" />Male
                                                    <input name="gender" type="radio" value="0" />Female
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="bi bi-house fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <label class="form-label" for="form3Example1c">Address</label>
                                                    <input name="address" type="text" id="form3Example1c" class="form-control" />
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="bi bi-envelope fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <label class="form-label" for="form3Example3c">Your Email</label>
                                                    <input name="useremail" type="email" id="form3Example3c" class="form-control" />
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="bi bi-telephone fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <label class="form-label" for="form3Example3c">Phone</label>
                                                    <input name="phone" maxlength="10" type="text" id="mobile" class="form-control" />
                                                </div>
                                            </div>

                                            <!--                                            <div class="d-flex flex-row align-items-center mb-4">
                                                                                            <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                                                                                            <div class="form-outline flex-fill mb-0">
                                                                                                <label class="form-label" for="form3Example4c">Password</label>
                                                                                                <input type="password" name="password" autocomplete="current-password" id="id_password" class="form-control"> 
                                                                                                <i class="far fa-eye" id="togglePassword" style="cursor: pointer;"></i>
                                                                                            </div>
                                                                                        </div>-->




                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <i class="far fa-eye" id="togglePassword" style="cursor: pointer;"></i>
                                                    <label id="strength" class="form-label" for="form3Example4c">Password</label>
                                                    <input type="password" name="password" autocomplete="current-password" id="password"
                                                           size="15" maxlength="100" onkeyup="return passwordChanged();" class="form-control"> 
                                                </div>
                                            </div>

                                            <!--                                            <input name="password" id="password" type="password" size="15" maxlength="100" onkeyup="return passwordChanged();" />
                                                                                        <span id="strength">Type Password</span>-->



                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <i class="far fa-eye" id="togglePasswordr" style="cursor: pointer;"></i>
                                                    <label class="form-label" for="form3Example4cd">Repeat your password</label>
                                                    <input autocomplete="current-password" type="password" name="repeatpassword" id="repeatpassword" class="form-control" />
                                                </div>
                                            </div>


                                            <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                                                <input type="submit" value="Register" class="btn btn-primary btn-lg checkmobile">
                                            </div>

                                        </form>


                                    </div>
                                    <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                                        <img src="https://i.pinimg.com/736x/95/42/5d/95425d7e681cd7cdeb537d5db7201bba.jpg" class="img-fluid" alt="Sample image">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <!-- ======= Footer ======= -->
        <jsp:include page="assets/module/footer.jsp" flush="true"/>
        <!-- End Footer -->

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
                                                                   var empt1 = document.forms["register"]["username"].value;
                                                                   var empt2 = document.forms["register"]["gender"].value;
                                                                   var empt3 = document.forms["register"]["address"].value;
                                                                   var empt4 = document.forms["register"]["useremail"].value;
                                                                   var empt5 = document.forms["register"]["phone"].value;
                                                                   var empt6 = document.forms["register"]["password"].value;
                                                                   var empt7 = document.forms["register"]["repeatpassword"].value;
                                                                   if (empt1 == "")
                                                                   {
                                                                       alert("Please input a full your name.");
                                                                       return false;
                                                                   } else if (empt2 == "") {
                                                                       alert("Please input your gender.");
                                                                       return false;
                                                                   } else if (empt3 == "") {
                                                                       alert(" Please input your address.");
                                                                       return false;
                                                                   } else if (empt4 == "") {
                                                                       alert("Please input your email.");
                                                                       return false;
                                                                   } else if (empt5 == "") {
                                                                       alert("Please input your phone.");
                                                                       return false;
                                                                   } else if (empt6 == "") {
                                                                       alert("Please input a password.");
                                                                       return false;
                                                                   } else if (empt7 == "") {
                                                                       alert("Please input repeat password.");
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





                                                               const togglePasswordr = document.querySelector('#togglePasswordr');
                                                               const repeatpassword = document.querySelector('#repeatpassword');

                                                               togglePasswordr.addEventListener('click', function (e) {
                                                                   // toggle the type attribute
                                                                   const type = repeatpassword.getAttribute('type') === 'password' ? 'text' : 'password';
                                                                   repeatpassword.setAttribute('type', type);
                                                                   // toggle the eye slash icon
                                                                   this.classList.toggle('fa-eye-slash');
                                                               });





                                                               function passwordChanged() {
                                                                   var strength = document.getElementById('strength');
                                                                   var strongRegex = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g");
                                                                   var mediumRegex = new RegExp("^(?=.{8,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g");
                                                                   var enoughRegex = new RegExp("(?=.{8,}).*", "g");
                                                                   var pwd = document.getElementById("password");
                                                                   if (pwd.value.length == 0) {
                                                                       strength.innerHTML = 'Password';
                                                                   } else if (false == enoughRegex.test(pwd.value)) {
                                                                       strength.innerHTML = 'More Characters';
                                                                   } else if (strongRegex.test(pwd.value)) {
                                                                       strength.innerHTML = '<span style="color:green">Strong!</span>';
                                                                   } else if (mediumRegex.test(pwd.value)) {
                                                                       strength.innerHTML = '<span style="color:orange">Medium!</span>';
                                                                   } else {
                                                                       strength.innerHTML = '<span style="color:red">Weak!</span>';
                                                                   }
                                                               }

        </script>
    </body>

</html>

