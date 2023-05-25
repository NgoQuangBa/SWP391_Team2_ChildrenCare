<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

        <!-- title -->
        <title>Giỏ Hàng</title>

        <!-- favicon -->
        <link rel="shortcut icon" type="image/png" href="assets/img/favicon.png">
        <!-- google font -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
        <!-- fontawesome -->
        <link rel="stylesheet" href="assets/css/all.min.css">
        <!-- bootstrap -->
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <!-- owl carousel -->
        <link rel="stylesheet" href="assets/css/owl.carousel.css">
        <!-- magnific popup -->
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <!-- animate css -->
        <link rel="stylesheet" href="assets/css/animate.css">
        <!-- mean menu css -->
        <link rel="stylesheet" href="assets/css/meanmenu.min.css">
        <!-- main style -->
        <link rel="stylesheet" href="assets/css/main.css">
        <!-- responsive -->
        <link rel="stylesheet" href="assets/css/responsive.css">

    </head>

    <body>



        <!-- breadcrumb-section -->

        <!-- end breadcrumb section -->

        <!-- cart -->


        <div class="cart-section mt-150 mb-150">
            <h2 style="text-align: center;padding-bottom:  30px">Danh sách dịch vụ đã đặt</h2 >
            <div class="container">
                <div class="row">

                    <div class="col-lg-8 col-md-12">
                        <div class="cart-table-wrap">

                            <table class="cart-table">
                                <thead class="cart-table-head">
                                    <tr class="table-head-row">
                                        <th class="product-name"> No.</th>
                                         
                                        <th class="product-price"> Ngày tạo đơn đặt hàng </th>
                                        <th class="product-price"> Tên khách hàng </th>
                                        <th class="product-price"> Tổng Giá </th>                                                                                      
                                        <th class="product-price"> Ghi chú </th>
                                        <th class="product-price"> Chi tiết </th>
                                    </tr>

                                </thead>
                                <tbody>
                                    <c:forEach items="${listr}" var="c">
                                    <form action="userreservation">                                    
                                               <tr class="table-body-row">
                                            <td class="product-id">${c.reservationID}</td>
                                            <td class="product-price">${c.creationDate}</td>
                                            <td class="product-price">${c.customer.username}</td>
                                            <td class="product-price">${c.totalPrice} $</td>                                                                                         
                                            <td class="product-image">${c.description}</td>
                                            <th class="product-price "   style="text-align: center">
                                                <a href="rsvdetail?rsvid=${c.reservationID}">
                                                   Xem Chi tiết
                                                </a> </th>
                                        </tr>
                                    </form>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>


                </div>
            </div>
        </div>



        <!-- end cart -->

        <!-- logo carousel -->

        <!-- end copyright -->

        <!-- jquery -->
        <script src="assets/js/jquery-1.11.3.min.js"></script>
        <!-- bootstrap -->
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <!-- count down -->
        <script src="assets/js/jquery.countdown.js"></script>
        <!-- isotope -->
        <script src="assets/js/jquery.isotope-3.0.6.min.js"></script>
        <!-- waypoints -->
        <script src="assets/js/waypoints.js"></script>
        <!-- owl carousel -->
        <script src="assets/js/owl.carousel.min.js"></script>
        <!-- magnific popup -->
        <script src="assets/js/jquery.magnific-popup.min.js"></script>
        <!-- mean menu -->
        <script src="assets/js/jquery.meanmenu.min.js"></script>
        <!-- sticker js -->
        <script src="assets/js/sticker.js"></script>
        <!-- main js -->
        <script src="assets/js/main.js"></script>

    </body>
</html>