

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

        
        
        
        <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
        <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
        
        
        <!-- Vendor CSS Files -->
        <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
        <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/choices.js/public/assets/scripts/choices.min.js" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

        <!-- Template Main CSS File -->
        <link href="assets/css/style.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

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

        <main id="main" style="padding: 200px 0 0">

            <div class="row">
                <div class="alert alert-primary" role="alert">
                    <h1 style="text-align: center">Edit your reservation information</h1>
                </div>
                <div>
                    <div class="alert alert-success" role="alert">
                        <h1 style="text-align: center">${requestScope.mess}</h1>
                    </div>
                </div>
                <div class="col-md-2">

                </div>
                <div class="col-md-8">
                    <div>
                        <div class="col-md-2">

                        </div>
                    </div>
                    <div class="container mt-5 align-items-center">
                        <form name="edit" action="edit-reservationinformation" method="POST" onsubmit="required()">
                            <div class="row">
                                <!-- Email input -->
                                <div hidden class="form-outline mb-4">
                                    <label class="form-label" style="font-weight: bold" for="form2Example1">ID reservation</label>
                                    <input readonly name="reservation_detail_id" value="${reservationedit.reservation_detail_id}" class="form-control" placeholder="${sessionScope.reservation_id}" required/>
                                </div>

                                <div class="form-outline mb-4">
                                    <label class="form-label" style="font-weight: bold" for="form2Example2">Quantity</label>
                                    <input type="number" min="1" max="6" name="quantity" value="${reservationedit.quantity}" class="form-control" placeholder="${sessionScope.quantity}" required/>
                                </div>

                                <div class="form-outline mb-4">
                                    <label class="form-label" style="font-weight: bold" for="form2Example2">Reservation begin date</label>
                                    <input type="date" min="1" max="6" name="begin_date" value="${reservationedit.begin_time}" class="form-control" placeholder="${sessionScope.begin_date}" required/>
                                </div>

                                
                                 <div class="form-outline mb-4">
                                    <label class="form-label" style="font-weight: bold" for="form2Example2">Children Name</label>
                                    <select required name="children" class="form-control select2 select2-hidden-accessible" style="width: 100%;" tabindex="-1" aria-hidden="true">
                                        <option value="" selected="selected">choose the children: ${reservationedit.children_name}</option>
                                        <c:forEach items="${requestScope.childrenList}" var="d">
                                            <option value="${d.children_id}">${d.children_name}</option>
                                        </c:forEach>
                                    </select>
                                </div>

                                <div class="form-outline mb-4">
                                    <label class="form-label" style="font-weight: bold" for="form2Example2">Doctor Name</label>
                                    <select required name="doctor" class="form-control select2 select2-hidden-accessible" style="width: 100%;" tabindex="-1" aria-hidden="true">
                                        <option value="" selected="selected">choose the doctor ${reservationedit.doctor_name}</option>
                                        <c:forEach items="${requestScope.doctorList}" var="d">
                                            <option value="${d.user_id}">${d.user_name}</option>
                                        </c:forEach>
                                    </select>
                                </div>

                                <div class="form-outline mb-4">
                                    <label class="form-label" style="font-weight: bold" for="form2Example2">Nurse Name</label>
                                    <select required name="nurse" class="form-control select2 select2-hidden-accessible" style="width: 100%;" tabindex="-1" aria-hidden="true">
                                        <option value="" selected="selected">choose the nurse: ${reservationedit.nurse_name}</option>
                                        <c:forEach items="${requestScope.nurseList}" var="n">
                                            <option value="${n.user_id}">${n.user_name}</option>
                                        </c:forEach>


                                    </select>
                                </div>

                                <div class="form-outline mb-4">
                                    <label class="form-label" style="font-weight: bold" for="form2Example2">Time to check up</label>
                                    <div class="form-check">
                                        <input class="form-check-input" name="slot" value="1" type="radio" name="flexRadioDefault">
                                        <label class="form-check-label" for="flexRadioDefault1">
                                            (7h30 - 9h)
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="slot" value="2" checked>
                                        <label class="form-check-label" for="flexRadioDefault2">
                                            ( 9h10 - 12h30 )
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="slot" value="3">
                                        <label class="form-check-label" for="flexRadioDefault1">
                                            ( 12h30 - 15h20 )
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="slot" value="4">
                                        <label class="form-check-label" for="flexRadioDefault2">
                                            ( 15h30 - 17h00 )
                                        </label>
                                    </div>
                                </div>
                                <!-- 2 column grid layout for inline styling -->
                                <button type="submit" class="btn btn-success">Comfirm</button>
                            </div>

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

    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/picker.js"></script>
    <script src="assets/js/picker.date.js"></script>
    <script>
                            function required()
                            {
                                var empt = document.forms["edit"]["num_of_person"].value;
                                var empt2 = document.forms["edit"]["quantity"].value;
                                if (empt == "")
                                {
                                    alert("Number of person is empty! Please input!");
                                    return false;
                                } else if (empt2 == "") {
                                    alert("Quantity is empty! Please input!");
                                    return false;
                                } else
                                {
                                    //   alert('Code has accepted : you can try another');
                                    return true;
                                }
                            }
    </script>
</body>

</html>


