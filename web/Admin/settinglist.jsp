 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Corona Admin</title>
        <!-- plugins:css -->
        <link rel="stylesheet"href="../assets/Admin/assets/vendors/mdi/css/materialdesignicons.min.css">
        <link rel="stylesheet"href="../assets/Admin/assets/vendors/css/vendor.bundle.base.css">
        <!-- endinject -->
        <!-- Plugin css for this page -->
        <link rel="stylesheet"href="../assets/Admin/assets/vendors/jvectormap/jquery-jvectormap.css">
        <link rel="stylesheet"href="../assets/Admin/assets/vendors/flag-icon-css/css/flag-icon.min.css">
        <link rel="stylesheet"href="../assets/Admin/assets/vendors/owl-carousel-2/owl.carousel.min.css">
        <link rel="stylesheet"href="../assets/Admin/assets/vendors/owl-carousel-2/owl.theme.default.min.css">
        <link href="../assets/Admin/assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
        <link href="../assets/Admin/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
        <link href="../assets/Admin/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link  href="../assets/Admin/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="../assets/Admin/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link  href="../assets/Admin/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link  href="../assets/Admin/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link  href="../assets/Admin/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
        <!-- End plugin css for this page -->
        <!-- inject:css -->
        <!-- endinject -->
        <!-- Layout styles -->
        <link rel="stylesheet" href="../assets/Admin/assets/css/style.css">
        <!-- End layout styles -->
        <link rel="shortcut icon" href="../assets/Admin/assets/images/favicon.png" />
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
.table, .jsgrid .jsgrid-table {
    margin-bottom: 0;
    color: #000;
    background-color: #fff;
}
.table-striped tbody tr:nth-of-type(odd) {
    background-color: #fff;
}
        </style>
    </head>
    <body>
        <div class="container-scroller">
            <!-- partial:partials/_sidebar.html -->
            <jsp:include page="Header_Admin.jsp" flush="true"/> 
          
            <!-- MAIN -->
            <div class="main-panel">


                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">List Setting</th>
                            <th scope="col">Status</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${requestScope.listSetting}" var="LR">
                        <tr>
                            <th scope="row">${LR.setting_id}</th>
                            <td>${LR.setting_name}</td>

                            <td>
                                <!-- Checked switch -->

                        <c:if test="${LR.setting_status == true}">
                            <form action="/project_swp391/Admin/setting-list?id=${LR.setting_id}&status=1" method="POST">

                                <div class="form-check form-switch">
                                    <input class="form-check-input" onchange="this.form.submit()" value="1" name="status" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked />
                                    <label class="form-check-label" for="flexSwitchCheckChecked">Checked switch checkbox input</label>
                                </div>
                            </form>

                        </c:if>

                        <c:if test="${LR.setting_status == false}">
                            <form action="/project_swp391/Admin/setting-list?id=${LR.setting_id}&status=0" method="POST">

                                <div class="form-check form-switch">
                                    <input class="form-check-input" onchange="this.form.submit()" value="0" name="status" type="checkbox" role="switch" id="flexSwitchCheckChecked" />
                                    <label class="form-check-label" for="flexSwitchCheckChecked">Checked switch checkbox input</label>
                                </div>
                            </form>

                        </c:if>
                        </td>
                        <td><button onclick="window.location.href='/project_swp391/Admin/settingdetail?setting_id=${LR.setting_id}'" type="button" class="btn btn-primary">Edit</button></td>
                        </tr>
                        
                    </c:forEach>
                    </tbody>
                </table>
            </div> 
            <!-- END MAIN -->
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
        <footer class="footer">
            <div class="d-sm-flex justify-content-center justify-content-sm-between">
                <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © bootstrapdash.com 2020</span>
                <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center"> Free <a href="https://www.bootstrapdash.com/bootstrap-admin-template/" target="_blank">Bootstrap admin templates</a> from Bootstrapdash.com</span>
            </div>
        </footer>
        <!-- partial -->
    </div>
    <!-- main-panel ends -->
</div>

<!-- page-body-wrapper ends -->
</div>
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
<!-- End custom js for this page -->
</body>
</html>
