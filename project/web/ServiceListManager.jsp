
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

            <div class="btn-group" style="margin-bottom: 20px;" role="group" aria-label="Basic mixed styles example">
                <a href="addnewservicemanager" type="button" class="btn btn-success">ADD NEW</a>
            </div>
            <div class="container-fluid">
                <div class="alert alert-primary" role="alert">
                    <h1 style="text-align: center">Manager service list</h1>
                </div>
                <div class="row" style="margin-top: 50px">
                    <div class="col-lg-3">
                        <!-- Post content-->
                        <div class="card mb-4">
                            <div class="card-header">Search</div>
                            <div class="card-body">
                                <form action="serchservicemanager">
                                    <div class="input-group">
                                        <input class="form-control" type="text" name="keyword" placeholder="Enter search term..." aria-describedby="button-search" />
                                        <button class="btn btn-primary" type="submit">Go!</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!--- --------->
                        <div class="card mb-4">
                            <div class="card-header" style="font: bold">Category services manager</div> 
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-check">
                                            <c:forEach items="${listcatery}" var="LC">
                                                <a href="categoryservicemanager?category_id=${LC.category_id}"><button style="width: 230px; margin-top: 10px; font-weight: bold;" type="button" class="btn btn-info">${LC.category_name}</button></a>      
                                                </c:forEach>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Categories widget-->
                        <div class="card mb-4">
                            <div class="card-header" style="font: bold">Sorf services</div> 
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-check">
                                            <a href="servicelistmanager"><button style="width: 230px; margin-top: 10px; font-weight: bold;" type="button" class="btn btn-info">List service manager by ID</button></a>
                                            <a href="sortservicemanager"><button style="width: 230px; margin-top: 10px; font-weight: bold;" type="button" class="btn btn-info">Sort by price</button></a>
                                            <a href="sortservicemanagerdiscountprice"><button style="width: 230px; margin-top: 10px; font-weight: bold;" type="button" class="btn btn-info">Sort by discount price</button></a>
                                            <a href="sortservicemanagertitle"><button style="width: 230px; margin-top: 10px; font-weight: bold;" type="button" class="btn btn-info">Sort by title</button></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Side widgets-->
                    <div class="col-lg-9">
                        <!-- Search widget-->
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th scope="col">#ID</th>
                                    <th scope="col">Thumbnail</th>
                                    <th scope="col">Title</th>
                                    <th scope="col">Category</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Sale price</th>
                                    <th scope="col">Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${listser}" var="LS">
                                    <tr>
                                        <th scope="row">${LS.service_id}</th>
                                        <td><img style="height: 100px; width: 100px" id="main-img" class="imagebig img-fluid rounded" src="./resouce/image/service/${LS.image_link}" alt="..." /></td>
                                        <td>${LS.service_title}</td>
                                        <td>${LS.category_name}</td>
                                        <td>${LS.service_price}$</td>
                                        <td>${LS.service_discount}$</td>
                                        <td>
                                            <c:if test="${LS.service_status == true}">
                                                <div class="form-check form-switch">
                                                    <input class="form-check-input" onclick="changeStatus(this, ${LS.service_id}, 1)" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked />
                                                    <label class="form-check-label" for="flexSwitchCheckChecked">Checked switch checkbox input</label>
                                                </div>
                                            </c:if>
                                            <c:if test="${LS.service_status == false}">
                                                <div class="form-check form-switch">
                                                    <input class="form-check-input" onclick="changeStatus(this, ${LS.service_id}, 0)" type="checkbox" role="switch" id="flexSwitchCheckChecked" />
                                                    <label class="form-check-label" for="flexSwitchCheckChecked">Checked switch checkbox input</label>
                                                </div>
                                            </c:if>
                                        </td>
                                        <td><a href="editservicedetailmanager?service_id=${LS.service_id}">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                                                <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                                <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                                                </svg>
                                            </a></td>
                                        <td>
                                            <a href="showservicedetailmanager?service_id=${LS.service_id}">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
                                                <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
                                                <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
                                                </svg>
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>

                            </tbody>

                        </table>


                        <c:choose>
                            <c:when test="${listser==null || listser.size()==0}">
                                <div class="alert alert-danger" role="alert">
                                    <h1>This service does not exist!</h1>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <!--                                    phan trang-->
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination d-flex justify-content-center">
                                        <c:if test="${page > 1}">
                                            <li class="page-item"><a class="page-link" href="servicelistmanager?page=${page-1}">Previous</a></li>
                                            </c:if>
                                            <c:forEach begin="1" end="${totalPage}" var="i">
                                            <li class="page-item ${i==page?"active":""}"><a class="page-link" href="servicelistmanager?page=${i}">${i}</a></li> 
                                            </c:forEach>
                                            <c:if test="${page < totalPage}">
                                            <li class="page-item"><a class="page-link" href="servicelistmanager?page=${page+1}">Next</a></li>
                                            </c:if>
                                    </ul>
                                </nav>

                            </c:otherwise>
                        </c:choose>
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

        <script>
                                                        function changeStatus(btn, id, status) {
                                                            
                                                            $.ajax({
                                                                url: '/project_swp391/servicelistmanager',
                                                                type: 'POST',
                                                                data: {
                                                                    id: id,
                                                                    status: status
                                                                },
                                                                success: function (data) {

                                                                }
                                                            }
                                                            );
                                                        }
        </script>


    </body>

</html>


