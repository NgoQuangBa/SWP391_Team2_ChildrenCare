
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

            <div style="margin-bottom: 20px" class="btn-group" role="group" aria-label="Basic mixed styles example">
                <a href="servicelistmanager" type="button" class="btn btn-success">Back</a>
            </div>
            <div class="container-fluid">
                <div class="alert alert-primary" role="alert">
                    <h1 style="text-align: center">Manager edit service</h1>
                </div>
                <div class="row">

                    <div class="wrapper bg-white">
                        <!--                        <div class="h2 text-center">Welcome addnew service addmin</div>-->
                        <div class="h4 text-muted text-center pt-2">${mess}</div>
                        <form action="editservicedetailmanager" method="POST" class="pt-3">
                            <div class="form-group py-2">
                                <div>ID service</div>
                                <div class="input-field"><input type="text" name="sid" required value="${serdetail.service_id}" readonly placeholder="${sessionScope.sidd}"> </div>
                            </div>
                            <div class="form-group py-2">
                                <div>Service title</div>
                                <div class="input-field"><input type="text" name="title" minlength="1" maxlength="200" required value="${serdetail.service_title}" placeholder="${sessionScope.title}"> </div>
                            </div>
                            <div class="form-group py-1 pb-2">
                                <div>Service brief</div>
                                <div class="input-field"> <textarea style="width: 1000px;" type="text" name="brief" minlength="0" maxlength="500" placeholder="${sessionScope.brief}" required >${serdetail.service_bi}</textarea> </div>
                            </div>
                            <div class="form-group py-2">
                                <div>Service detail</div>
                                <div class="input-field"><textarea style="width: 1000px;" type="text" name="detail" minlength="0" maxlength="500" placeholder="${sessionScope.detail}" required >${serdetail.service_detail}</textarea> </div>
                            </div>
                            <div class="form-group py-2">
                                <div>Service price (unit: $)</div>
                                <div class="input-field"><input onchange="validPrice()" id="old" type="number" name="price" min="1" max="50000" required value="${serdetail.service_price}" placeholder="${sessionScope.prices}"> </div>
                            </div>
                            <div class="form-group py-2">
                                <span id="errPrice" style="color: red"></span>
                                <div>Service discount (unit: $)</div>
                                <div class="input-field"><input onchange="validPrice()" id="new" type="number" name="discount" min="0" max="50000" required value="${serdetail.service_discount}" placeholder="${sessionScope.discounts}"> </div>
                            </div>

                            <div class="form-group py-2">
                                <label class="form-label" style="font-weight: bold">Category name</label>
                                <div class="form-check">
                                    <input class="form-check-input" name="category" value="1" type="radio" checked>
                                    <label class="form-check-label" for="flexRadioDefault1">
                                        Eyes
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="category" value="2">
                                    <label class="form-check-label" for="flexRadioDefault2">
                                        Foot
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="category" value="3">
                                    <label class="form-check-label" for="flexRadioDefault1">
                                        Nose
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="category" value="4">
                                    <label class="form-check-label" for="flexRadioDefault2">
                                        Lung
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="category" value="5">
                                    <label class="form-check-label" for="flexRadioDefault2">
                                        Body
                                    </label>
                                </div>
                            </div>
                            <div class="form-group py-2">
                                <div>Service image link</div>
                                <div class="input-field"><input type="file" name="image" required value="${serdetail.image_link}">${sessionScope.image}</div>
                            </div>
                            <button id="update" type="submit" class="btn btn-block text-center my-3">Update service</button>
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
    <script>
                                    function validPrice() {
                                        var old = document.getElementById("old").value;
                                        var new_Price = document.getElementById("new").value;
                                        if (old * 100 < new_Price * 100) {
                                            document.getElementById("errPrice").innerHTML = "Enter discount price < origin price";
                                            document.getElementById("update").disabled = 1;
                                        } else {
                                            document.getElementById("errPrice").innerHTML = "";
                                            document.getElementById("update").disabled = 0;
                                        }
                                    }
    </script>
</body>

</html>



