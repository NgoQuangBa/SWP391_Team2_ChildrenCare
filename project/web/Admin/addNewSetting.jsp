 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Children's Care Admin</title>
        <!-- plugins:css -->
        <link rel="stylesheet" href="../assets/Admin/assets/vendors/mdi/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="../assets/Admin/assets/vendors/css/vendor.bundle.base.css">
        <!-- endinject -->
        <!-- Plugin css for this page -->
        <link rel="stylesheet" href="../assets/Admin/assets/vendors/jvectormap/jquery-jvectormap.css">
        <link rel="stylesheet" href="../assets/Admin/assets/vendors/flag-icon-css/css/flag-icon.min.css">
        <link rel="stylesheet" href="../assets/Admin/assets/vendors/owl-carousel-2/owl.carousel.min.css">
        <link rel="stylesheet" href="../assets/Admin/assets/vendors/owl-carousel-2/owl.theme.default.min.css">
        <!-- End plugin css for this page -->
        <!-- inject:css -->
        <!-- endinject -->
        <!-- Layout styles -->
        <link rel="stylesheet" href="../assets/Admin/assets/css/style.css">
        <style>
            .sidebar {
                min-height: calc(100vh - 70px);
                background: #fff;
                font-weight: normal;
                padding: 0;
                width: 244px;
                z-index: 11;
                transition: width 0.25s ease, background 0.25s ease;
                -webkit-transition: width 0.25s ease, background 0.25s ease;
                -moz-transition: width 0.25s ease, background 0.25s ease;
                -ms-transition: width 0.25s ease, background 0.25s ease;
            }
            .content-wrapper {
                background: #fff;
                padding: 1.875rem 1.75rem;
                width: 100%;
                -webkit-flex-grow: 1;
                flex-grow: 1;
            }
            .card {
                position: relative;
                display: flex;
                flex-direction: column;
                min-width: 0;
                word-wrap: break-word;
                background-color: #fff;
                background-clip: border-box;
                border: 1px solid rgba(0, 0, 0, 0.125);
                border-radius: 0.25rem;
                color: #000;
            }
            .footer {
                background: #fff;
                padding: 20px 1rem;
                transition: all 0.25s ease;
                -moz-transition: all 0.25s ease;
                -webkit-transition: all 0.25s ease;
                -ms-transition: all 0.25s ease;
                font-size: calc(0.875rem - 0.05rem);
                font-weight: 300;
            }
            .sidebar .nav .nav-item.active > .nav-link {
                background: gray;
                position: relative;
            }
            .sidebar .nav .nav-item .nav-link {
                display: -webkit-flex;
                display: flex;
                -webkit-align-items: center;
                align-items: center;
                white-space: nowrap;
                padding: 0.8rem 10px 0.8rem 1.188rem;
                color: #000;
                -webkit-transition-duration: 0.45s;
                -moz-transition-duration: 0.45s;
                -o-transition-duration: 0.45s;
                transition-duration: 0.45s;
                transition-property: color;
                -webkit-transition-property: color;
                height: 46px;
                border-radius: 0px 100px 100px 0px;
            }
            .sidebar .sidebar-brand-wrapper {
                transition: width 0.25s ease, background 0.25s ease;
                -webkit-transition: width 0.25s ease, background 0.25s ease;
                -moz-transition: width 0.25s ease, background 0.25s ease;
                -ms-transition: width 0.25s ease, background 0.25s ease;
                background: #fff;
                width: 244px;
                height: 70px;
            }
            .navbar .navbar-menu-wrapper {
                transition: width 0.25s ease;
                -webkit-transition: width 0.25s ease;
                -moz-transition: width 0.25s ease;
                -ms-transition: width 0.25s ease;
                box-shadow: 20px 19px 34px -15px rgb(0 0 0 / 50%);
                -webkit-box-shadow: 20px 19px 34px -15px rgb(0 0 0 / 50%);
                -moz-box-shadow: 20px 19px 34px -15px rgba(0, 0, 0, 0.5);
                color: #000;
                padding-left: 15px;
                padding-right: 15px;
                width: 100%;
                height: 70px;
            }
            .navbar {
                font-weight: normal;
                background: #fff;
                left: 244px;
                transition: left 0.25s ease;
                -webkit-transition: left 0.25s ease;
                -moz-transition: left 0.25s ease;
                -ms-transition: left 0.25s ease;
            }
            .navbar .navbar-menu-wrapper .search input {
                background: #fff;
                color: #000;
                padding: 13px 20px 11px 20px;
                border: 1px solid #2c2e33;
            }
        </style>
        <!-- End layout styles -->
        <link rel="shortcut icon" href="../assets/Admin/assets/images/favicon.png" />
        <style>

            @media (min-width: 1025px) {
                .h-custom {
                    height: 100vh !important;
                }
            }
        </style>
    </head>
    <body>
        <div class="container-scroller">
            <!-- partial:partials/_sidebar.html -->
            <jsp:include page="Header_Admin.jsp" flush="true"/> 
            <main id="main" style="padding: 100px 0 0;background-color: #fff;">

                <!-- ======= Breadcrumbs Section ======= -->
                <div class="container">
                    <div class="row ">

                        <section class="">
                            <div class="container py-5">
                                <div class="row d-flex justify-content-center align-items-center h-100">
                                    <div class="col-lg-8 col-xl-6">
                                        <div class="card rounded-3">
                                            <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img3.webp"
                                                 class="w-100" style="border-top-left-radius: .3rem; border-top-right-radius: .3rem;"
                                                 alt="Sample photo">
                                            <div class="card-body p-4 p-md-5">
                                                <h3 class="mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">NEW SETTING</h3>

                                                <form action="/project_swp391/Admin/Addnewsetting" class="px-md-2">

                                                    <div class="form-outline mb-4">
                                                        <input style="background-color: #fff;color: black;" name="name" type="text" id="form3Example1q" class="form-control" />
                                                        <label class="form-label" for="form3Example1q">Name</label>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-md-6 mb-4">

                                                            <div class="form-outline datepicker">
                                                                <input style="background-color: #fff;color: black;" name="value" type="number" class="form-control" id="exampleDatepicker1" />
                                                                <label for="exampleDatepicker1" class="form-label">Value</label>
                                                            </div>

                                                        </div>
                                                    </div>

                                                    <div class="mb-4">

                                                        <select name="status" class="select">
                                                            <option value="1">Show</option>
                                                            <option value="0">Hide</option>
                                                        </select>

                                                    </div>

                                                    <div class="row mb-4 pb-2 pb-md-0 mb-md-5">
                                                        <div class="col-md-12">

                                                            <textarea style="background-color: #fff;color: black;" id="form_name" name="description" class="form-control" placeholder="Description" rows="4" required="required" data-error="Please, leave us a message."></textarea
                                                            >

                                                        </div>
                                                    </div>

                                                    <button type="submit" class="btn btn-success btn-lg mb-1">Submit</button>

                                                </form>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>

                    </div>
                </div>

            </main><!-- End #main -->

        </div>
        <!-- page-body-wrapper ends -->
        <!-- container-scroller -->
        <!-- plugins:js -->
        <script src="../assets/Admin/assets/vendors/js/vendor.bundle.base.js"></script>
        <!-- endinject -->
        <!-- Plugin js for this page -->
        <script src="../assets/Admin/assets/vendors/chart.js/Chart.min.js"></script>
        <script src="../assets/Admin/assets/vendors/progressbar.js/progressbar.min.js"></script>
        <script src="../assets/Admin/assets/vendors/jvectormap/jquery-jvectormap.min.js"></script>
        <script src="../assets/Admin/assets/vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
        <script src="../assets/Admin/assets/vendors/owl-carousel-2/owl.carousel.min.js"></script>
        <!-- End plugin js for this page -->
        <!-- inject:js -->
        <script src="../assets/Admin/assets/js/off-canvas.js"></script>
        <script src="../assets/Admin/assets/js/hoverable-collapse.js"></script>
        <script src="../assets/Admin/assets/js/misc.js"></script>
        <script src="../assets/Admin/assets/js/settings.js"></script>
        <script src="../assets/Admin/assets/js/todolist.js"></script>
        <!-- endinject -->
        <!-- Custom js for this page -->
        <script src="../assets/Admin/assets/js/dashboard.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>

        <!-- End custom js for this page -->
    </body>
</html>
