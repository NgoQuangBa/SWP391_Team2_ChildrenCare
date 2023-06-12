

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
        <link href="assets/css/validateregister.css" rel="stylesheet">


        <!-- =======================================================
        * Template Name: Medilab - v4.7.1
        * Template URL: https://bootstrapmade.com/medilab-free-medical-bootstrap-theme/
        * Author: BootstrapMade.com
        * License: https://bootstrapmade.com/license/
        ======================================================== -->
    </head>

    <body>
        <div style="text-align: center; margin-top: 100px">
            <span> <h2>We already send a verification  code to your email. Enter the code here: </h2>
            <h3 class="text-danger">${error}</h3>
            </span>
        </div>

<!--        <form action="verifyregister" method="post">
            <div style="text-align: center; margin-top: 30px">
                <input style="width: 400px;" type="text" name="authcode" > 
                <input style="margin-left: 20px; background: blue" type="submit" value="verify">
            </div>
        </form>-->




                <form action="verifyregister" method="post">
                   <div class="container height-100 d-flex justify-content-center align-items-center">
                    <div class="position-relative">
                        <div class="card p-2 text-center">
                            <h6>Please enter the one time password <br> to verify your account</h6>
                            <div> <span>A code has been sent to</span> <small>*******@gmail.com</small> </div>
                            <div id="otp" class="inputs d-flex flex-row justify-content-center mt-2"> 
                                <input name="authcode1" class="m-2 text-center form-control rounded" type="text" id="first" maxlength="1" /> 
                                <input name="authcode2" class="m-2 text-center form-control rounded" type="text" id="second" maxlength="1" /> 
                                <input name="authcode3" class="m-2 text-center form-control rounded" type="text" id="third" maxlength="1" />
                                <input name="authcode4" class="m-2 text-center form-control rounded" type="text" id="fourth" maxlength="1" /> 
                                <input name="authcode5" class="m-2 text-center form-control rounded" type="text" id="fifth" maxlength="1" />
                                <input name="authcode6" class="m-2 text-center form-control rounded" type="text" id="sixth" maxlength="1" /> 
                            </div>
                            <input hidden="" type="text" name="formid" value="<%= request.getAttribute("formid").toString() %>">
                            <div class="mt-4"> <button type="submit" value="verify" class="btn btn-danger px-4 validate">Validate</button> </div>
                        </div>
                    </div>
                </div>
                </form>





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
            document.addEventListener("DOMContentLoaded", function (event) {

                function OTPInput() {
                    const inputs = document.querySelectorAll('#otp > *[id]');
                    for (let i = 0; i < inputs.length; i++) {
                        inputs[i].addEventListener('keydown', function (event) {
                            if (event.key === "Backspace") {
                                inputs[i].value = '';
                                if (i !== 0)
                                    inputs[i - 1].focus();
                            } else {
                                if (i === inputs.length - 1 && inputs[i].value !== '') {
                                    return true;
                                } else if (event.keyCode > 47 && event.keyCode < 58) {
                                    inputs[i].value = event.key;
                                    if (i !== inputs.length - 1)
                                        inputs[i + 1].focus();
                                    event.preventDefault();
                                } else if (event.keyCode > 64 && event.keyCode < 91) {
                                    inputs[i].value = String.fromCharCode(event.keyCode);
                                    if (i !== inputs.length - 1)
                                        inputs[i + 1].focus();
                                    event.preventDefault();
                                }
                            }
                        });
                    }
                }
                OTPInput();
            });
        </script>
    </body>


</html>



























