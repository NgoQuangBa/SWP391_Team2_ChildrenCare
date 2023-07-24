<%-- 
    Document   : Index_Admin
    Created on : May 26, 2022, 10:36:30 PM
    Author     : admin
--%>
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
        <link rel="stylesheet"href="../assets/Admin/assets/vendors/mdi/css/materialdesignicons.min.css">
        <link rel="stylesheet"href="../assets/Admin/assets/vendors/css/vendor.bundle.base.css">
        <!-- endinject -->
        <!-- Plugin css for this page -->
        <link rel="stylesheet"href="../assets/Admin/assets/vendors/jvectormap/jquery-jvectormap.css">
        <link rel="stylesheet"href="../assets/Admin/assets/vendors/flag-icon-css/css/flag-icon.min.css">
        <link rel="stylesheet"href="../assets/Admin/assets/vendors/owl-carousel-2/owl.carousel.min.css">
        <link rel="stylesheet"href="../assets/Admin/assets/vendors/owl-carousel-2/owl.theme.default.min.css">
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
.page-body-wrapper {
    min-height: 100vh;
    display: -webkit-flex;
    display: flex;
    -webkit-flex-direction: row;
    flex-direction: row;
    padding-left: 0;
    padding-right: 0;
    background-color: #fff;
    transition: all 0.25s ease;
    width: calc(100% - 244px);
}

select.form-control, select.asColorPicker-input, .dataTables_wrapper select, .jsgrid .jsgrid-table .jsgrid-filter-row select, .select2-container--default select.select2-selection--single, .select2-container--default .select2-selection--single select.select2-search__field, select.typeahead, select.tt-query, select.tt-hint {
    padding: 0.4375rem 0.75rem;
    border: 0;
    color: #000;
    border: 1px solid;
}
.form-control {
    background-color: #fff;
    color: black;
}
        </style>
        <!-- End layout styles -->
        <link rel="shortcut icon" href="../assets/Admin/assets/images/favicon.png" />

    </head>
    <body>
        <div class="container-scroller">
            <!-- partial:partials/_sidebar.html -->
            <jsp:include page="Header_Admin.jsp" flush="true"/> 
            <main id="main" style="padding: 100px 0 0; margin-left: 20%;">

                <!-- ======= Breadcrumbs Section ======= -->
                <div class="container">
                    <div class="row ">
                        
                        <div class="mx-auto text-center">
                            <button type="button" class="btn btn-success"><a href="addNewSetting.jsp">New Setting</a></button>
                            <div class="card mt-2 mx-auto p-4 bg-light">
                                <div class="card-body bg-light">
                                    
                                    <div class = "container">
                                        
                                        <form action="settingdetail" method="post" id="contact-form" role="form">
                                            <div class="controls">

                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="form_name">ID *</label>
                                                            <input readonly="readonly" style="background-color: #fff;" id="form_name" type="text" name="id" class="form-control" value="${setting.setting_id}" placeholder="Please enter your firstname *" required="required" data-error="Firstname is required.">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="form_name">Setting name *</label>
                                                            <input style="background-color: #fff;" id="form_name" type="text" name="name" value="${setting.setting_name}" class="form-control" placeholder="Please enter your firstname *" required="required" data-error="Firstname is required.">

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="form_name">Value *</label>
                                                            <input style="background-color: #fff;" id="form_name" type="text" name="value" value="${setting.setting_value}" class="form-control" placeholder="Please enter value *" required="required" data-error="Firstname is required.">

                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="form_need">Setting status *</label>
                                                            <select  name="status" class="form-control" required="required" data-error="Please specify your need.">

                                                                <c:choose>
                                                                    <c:when test="${setting.setting_status == true}">
                                                                        <option value="1" selected="selected">Show item</option>
                                                                        <option value="0">Hide item</option>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <option value="1">Show item</option>
                                                                        <option value="0" selected="selected">Hide item</option>
                                                                    </c:otherwise>
                                                                </c:choose>

                                                            </select>

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label for="form_message">Message *</label>
                                                            <textarea style="background-color: #fff;" id="form_name" value="${setting.setting_description}" name="desciption" class="form-control" placeholder="${setting.setting_description}" rows="4" required="required" data-error="Please, leave us a message.">${setting.setting_description}</textarea
                                                            >
                                                        </div>

                                                    </div>


                                                    <div class="col-md-12">

                                                        <input type="submit" class="btn btn-success btn-send  pt-2 btn-block
                                                               " value="Update" >

                                                    </div>

                                                </div>


                                            </div>
                                        </form>
                                    </div>
                                </div>


                            </div>
                            <!-- /.8 -->

                        </div>
                        <!-- /.row-->

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
        <script>
            let all = []
            let success = []
            let date = []

            <c:forEach items="${requestScope.listAllRes}" var="p3">
            all.push("${p3.count}")
            date.push("${p3.date}")
            </c:forEach>

            <c:forEach items="${requestScope.listSuccessRes}" var="p4">
            success.push("${p4.count}")
            </c:forEach>

            var options = {
                series: [{
                        name: 'Success',
                        data: all
                    }, {
                        name: 'All',
                        data: success
                    }],
                chart: {
                    height: 350,
                    type: 'area'
                },
                dataLabels: {
                    enabled: false
                },
                stroke: {
                    curve: 'smooth'
                },
                xaxis: {
                    type: 'datetime',
                    categories: date},
                tooltip: {
                    x: {
                        format: 'dd/MM/yy'
                    },
                },
            };

            var chart = new ApexCharts(document.querySelector("#chart"), options);
            chart.render();

            let tt = []
            let cate = []

            <c:forEach items="${requestScope.cateList}" var="p">
            cate.push("${p.category_name}")
            </c:forEach>
            <c:forEach items="${requestScope.revenuesOfCate}" var="p1">
            tt.push("${p1}")
            </c:forEach>


            var options = {
                series: tt,
                chart: {
                    height: 400,
                    type: 'radialBar',
                },
                plotOptions: {
                    radialBar: {
                        offsetY: 0,
                        startAngle: 0,
                        endAngle: 270,
                        hollow: {
                            margin: 5,
                            size: '30%',
                            background: 'transparent',
                            image: undefined,
                        },
                        dataLabels: {
                            name: {
                                show: false,
                            },
                            value: {
                                show: false,
                            }
                        }
                    }
                },
                colors: ['#1ab7ea', '#0084ff', '#39539E', '#0077B5'],
                labels: cate,
                legend: {
                    show: true,
                    floating: true,
                    fontSize: '16px',
                    position: 'left',
                    offsetX: 1,
                    offsetY: 1,
                    labels: {
                        useSeriesColors: true,
                    },
                    markers: {
                        size: 0
                    },
                    formatter: function (seriesName, opts) {
                        return seriesName + ":  " + opts.w.globals.series[opts.seriesIndex] + " $"
                    },
                    itemMargin: {
                        vertical: 3
                    }
                },
                responsive: [{
                        breakpoint: 480,
                        options: {
                            legend: {
                                show: false
                            }
                        }
                    }]
            };

            var chart = new ApexCharts(document.querySelector("#chart1"), options);
            chart.render();



            var options = {
                series: [{
                        name: 'Net Profit',
                        data: [44, 55, 57, 56, 61, 58, 63, 60, 66]
                    }, {
                        name: 'Revenue',
                        data: [76, 85, 101, 98, 87, 105, 91, 114, 94]
                    }, {
                        name: 'Free Cash Flow',
                        data: [35, 41, 36, 26, 45, 48, 52, 53, 41]
                    }],
                chart: {
                    type: 'bar',
                    height: 350
                },
                plotOptions: {
                    bar: {
                        horizontal: false,
                        columnWidth: '55%',
                        endingShape: 'rounded'
                    },
                },
                dataLabels: {
                    enabled: false
                },
                stroke: {
                    show: true,
                    width: 2,
                    colors: ['transparent']
                },
                xaxis: {
                    categories: ['Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct'],
                },
                yaxis: {
                    title: {
                        text: '$ (thousands)'
                    }
                },
                fill: {
                    opacity: 1
                },
                tooltip: {
                    y: {
                        formatter: function (val) {
                            return "$ " + val + " thousands"
                        }
                    }
                }
            };

            var chart = new ApexCharts(document.querySelector("#chart2"), options);
            chart.render();

        </script>
        <!-- End custom js for this page -->
    </body>
</html>
