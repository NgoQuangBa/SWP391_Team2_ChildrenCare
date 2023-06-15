
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        <main id="main">


            <section class="vh-100 mb-4">
                <div class="container py-5 h-100">
                    <div class="row d-flex align-items-center justify-content-center h-100">
                        <div><a href="index"><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-arrow-left-circle-fill" viewBox="0 0 16 16">
                                <path d="M8 0a8 8 0 1 0 0 16A8 8 0 0 0 8 0zm3.5 7.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5z"/>
                                </svg></a></div>
                        <div class="col-md-8 col-lg-7 col-xl-6">
                            <img src="https://i.pinimg.com/736x/20/79/32/2079323c18653b2511af2d3c56a994cb--helping-others-helping-people.jpg" class="img-fluid" alt="Phone image">
                        </div>
                        <div class="row col-md-7 col-lg-5 col-xl-5 offset-xl-1">
                            <form name="changpassword" action="changpassword" method="post" onsubmit="required()">
                                <!-- Email input -->
                                <h1>Change the password</h1>


                                <c:if test="${requestScope.c!=null}">
                                    <h3 class="text-danger">${requestScope.c}</h3>
                                </c:if>

                                <div class="form-outline col-xd-4 col-xs-12">
                                    <label class="form-label" for="form1Example13">User email</label>
                                    <input name="username" type="text" id="form1Example13" class="form-control form-control-lg" />
                                </div>

                                <!-- Password input -->
                                <div class="form-outline col-xd-4 col-xs-12">
                                    <i class="far fa-eye" id="togglePasswordo" style="cursor: pointer;"></i>
                                    <label class="form-label" for="form1Example23">Old Password</label>
                                    <input name="oldpassword" type="password" id="oldpassword" class="form-control form-control-lg" />
                                </div>

                                <!--                                <div class="form-outline col-xd-4 col-xs-12">
                                                                    <label class="form-label" for="form1Example23">New Password</label>
                                                                    <input name="newpassword" type="password" id="form1Example23" class="form-control form-control-lg" />
                                                                </div>-->


                                <div class="form-outline col-xd-4 col-xs-12">
                                    <i class="far fa-eye" id="togglePasswordn" style="cursor: pointer;"></i>
                                    <label id="strength" class="form-label" for="form1Example23">New Password</label>
                                    <input name="newpassword" type="password" class="form-control form-control-lg" autocomplete="current-password" id="newpassword"
                                           size="15" maxlength="100" onkeyup="return passwordChanged();"/>
                                </div>


                                <div class="form-outline col-xd-4 col-xs-12">
                                    <i class="far fa-eye" id="togglePasswordrp" style="cursor: pointer;"></i>
                                    <label class="form-label" for="form1Example23">Repeat new Password</label>
                                    <input name="repeatpassword" type="password" id="repeatpassword" class="form-control form-control-lg" />
                                </div>


                                <!-- Submit button -->
                                <button type="submit" class="btn btn-primary btn-lg btn-block" style="margin-top: 20px">Confirm</button>
                            </form>

                        </div>
                    </div>


                </div>

            </section>

            <section>
                <div class="row">
                    <div class="col-md-12 col-xs-12">
                        <!-- ======= Footer ======= -->
                        <jsp:include page="assets/module/footer.jsp" flush="true"/>
                        <!-- End Footer -->
                    </div>
                </div>
            </section>

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
                                                   var empt = document.forms["changpassword"]["username"].value;
                                                   var empt2 = document.forms["changpassword"]["oldpassword"].value;
                                                   var empt3 = document.forms["changpassword"]["newpassword"].value;
                                                   var empt4 = document.forms["changpassword"]["repeatpassword"].value;

                                                   if (empt == "")
                                                   {
                                                       alert("User full name is empty! Please input user full name");
                                                       return false;
                                                   } else if (empt2 == "") {
                                                       alert("New password is empty! Please input a password");
                                                       return false;
                                                   } else if (empt3 == "") {
                                                       alert("Repeat password is empty! Please inputn repeat password");
                                                       return false;
                                                   } else if (empt4 == "") {
                                                       alert("Repeat password is empty! Please inputn repeat password");
                                                       return false;
                                                   } else
                                                   {
                                                       //   alert('Code has accepted : you can try another');
                                                       return true;
                                                   }
                                               }




                                               function passwordChanged() {
                                                   var strength = document.getElementById('strength');
                                                   var strongRegex = new RegExp("^(?=.{14,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g");
                                                   var mediumRegex = new RegExp("^(?=.{10,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g");
                                                   var enoughRegex = new RegExp("(?=.{8,}).*", "g");
                                                   var pwd = document.getElementById("newpassword");
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




                                               const togglePasswordo = document.querySelector('#togglePasswordo');
                                               const oldpassword = document.querySelector('#oldpassword');

                                               togglePasswordo.addEventListener('click', function (e) {
                                                   // toggle the type attribute
                                                   const type = oldpassword.getAttribute('type') === 'password' ? 'text' : 'password';
                                                   oldpassword.setAttribute('type', type);
                                                   // toggle the eye slash icon
                                                   this.classList.toggle('fa-eye-slash');
                                               });




                                               const togglePasswordn = document.querySelector('#togglePasswordn');
                                               const newpassword = document.querySelector('#newpassword');

                                               togglePasswordn.addEventListener('click', function (e) {
                                                   // toggle the type attribute
                                                   const type = newpassword.getAttribute('type') === 'password' ? 'text' : 'password';
                                                   newpassword.setAttribute('type', type);
                                                   // toggle the eye slash icon
                                                   this.classList.toggle('fa-eye-slash');
                                               });







                                               const togglePasswordrp = document.querySelector('#togglePasswordrp');
                                               const repeatpassword = document.querySelector('#repeatpassword');

                                               togglePasswordrp.addEventListener('click', function (e) {
                                                   // toggle the type attribute
                                                   const type = repeatpassword.getAttribute('type') === 'password' ? 'text' : 'password';
                                                   repeatpassword.setAttribute('type', type);
                                                   // toggle the eye slash icon
                                                   this.classList.toggle('fa-eye-slash');
                                               });
            </script>
    </body>

</html>

