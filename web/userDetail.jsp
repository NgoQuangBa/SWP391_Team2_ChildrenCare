
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        <style>
            .form-control:focus {
                box-shadow: none;
                border-color: #BA68C8
            }

            .profile-button {
                background: rgb(99, 39, 120);
                box-shadow: none;
                border: none
            }

            .profile-button:hover {
                background: #682773
            }

            .profile-button:focus {
                background: #682773;
                box-shadow: none
            }

            .profile-button:active {
                background: #682773;
                box-shadow: none
            }

            .back:hover {
                color: #682773;
                cursor: pointer
            }

            .labels {
                font-size: 11px
            }

            .add-experience:hover {
                background: #BA68C8;
                color: #fff;
                cursor: pointer;
                border: solid 1px #BA68C8
            }
            img{
                border: 4px solid #ff5064;
                border-radius: 50%;
            }
        </style>
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

        <main id="main" style="padding: 80px 0 0 0">

            <!-- ======= Breadcrumbs Section ======= -->

            <section class="breadcrumbs">
                <div class="container">
                    <div class="btn-group" role="group" aria-label="Basic mixed styles example">
                        <button type="button" class="btn btn-secondary"><a href="addNewUser.jsp"><i class="bi bi-person-plus-fill fa-2x"></i></a></button>
                    </div>
                    <div class="btn-group" role="group" aria-label="Basic mixed styles example">
                        <button type="button" class="btn btn-dark"><a href="userlist"><i class="bi bi-person-video2 fa-2x"></i></a></button>
                    </div>
                    <div class="container rounded bg-white mt-5 mb-5">
                        <div class="front">
                            <form action="user_detail?user_id=${user_id}" method="post">
                                <div class="row">
                                    <div class="col-md-4 border-right">
                                        <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="o rounded-circle mt-5" width="200px" height="200px" src="./resouce/image/${user.user_image}"><span class="font-weight-bold">${user.user_name}</span><span class="text-black-50">${user.user_email}</span><span> </span></div>
                                    </div>
                                    <div class="col-md-7 border-right">
                                        <div class="p-3 py-5">
                                            <div class="d-flex justify-content-between align-items-center mb-3">
                                                <h4 class="text-right">Profile Settings</h4>
                                            </div>
                                            <div class="row mt-2">
                                                <div class="col-md-12"><label class="labels">Name</label><input name="name" readonly="readonly" type="text" class="form-control" placeholder="name" value="${user.user_name}"></div>
                                            </div>
                                            <div class="row mt-3">
                                                <div class="col-md-12"><label class="labels">Mobile Number</label><input readonly="readonly" name="phone" type="text" class="form-control" placeholder="enter phone number" value="${user.user_phone}"></div>
                                                <div class="col-md-12"><label class="labels">Address</label><input name="address" readonly="readonly" type="text" class="form-control" placeholder="enter address" value="${user.user_address}"></div>
                                                <div class="col-md-12"><label class="labels">Email</label><input readonly="readonly" name="email" type="text" class="form-control" placeholder="enter email" value="${user.user_email}"></div>
                                                <div class="col-md-12"><label class="labels">Role</label>
                                                    <div class="input-group mb-3">
                                                        <select name="role" class="form-select" id="inputGroupSelect01">
                                                            <c:forEach items="${list_role}" var="i">
                                                                <c:choose>
                                                                    <c:when test="${i.role_id == user.user_role}">
                                                                        <option selected value="${i.role_id}">${i.role_name}</option>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <option value="${i.role_id}">${i.role_name}</option>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-12"><label class="labels">Status</label>
                                                    <select name="status" class="form-select" id="inputGroupSelect01">
                                                        <c:choose>
                                                            <c:when test="${user.user_status == true}">
                                                                <option selected value="1">Is activated</option>
                                                                <option value="0">Not activated</option>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <option selected value="0">Not activated</option>
                                                                <option value="1">Is activated</option>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                             
                            
                                    <div     <%
                                if(request.getAttribute("block")!=null){
                                        
                                    
                                %>
                                hidden="false"
                                <%}%> class="mt-5 text-textcenter"><button class="btn btn-primary profile-button" type="submit">Save Profile</button></div>
                                
                            </form>
                        </div>
                    </div>
                </div>
                </div>
                </div>
            </section><!-- End Breadcrumbs Section -->
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