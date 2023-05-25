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
        <c:choose>
            <c:when test="${sessionScope.carts==null|| sessionScope.carts.size() == 0}">
                <div style="text-align: center" class="container">
                    <div>
                        <h3 style="color: red">Bạn chưa lựa chọn dịch vụ nào</h3>
                        <h4>Hãy đặt dịch vụ bạn cần</h4>

                    </div>
                    <div class="cart-buttons">
                        <a href="services" class="boxed-btn">Quay lại danh sách dịch vụ</a>
                    </div>
                </div>

            </c:when>
            <c:otherwise>
                <div class="cart-section mt-150 mb-150">
                    <h2 style="text-align: center;padding-bottom:  30px">Danh sách dịch vụ đã chọn</h2 >
                    <div class="container">
                        <div class="row">

                            <div class="col-lg-8 col-md-12">
                                <div class="cart-table-wrap">

                                    <table class="cart-table">
                                        <thead class="cart-table-head">
                                            <tr class="table-head-row">
                                                <th class="product-id">ID</th>
                                                <th class="product-image">Ảnh dịch vụ</th>
                                                <th class="product-name">Tên dịch vụ</th>
                                                <th class="product-price">Giá </th>
                                                <th class="product-quantity">Số lượng</th>
                                                <th class="product-remove">Action</th>
                                            </tr>

                                        </thead>
                                        <tbody>
                                            <c:forEach items="${carts}" var="c">
                                            <form action="">
                                                <input type="hidden" name="sid" value="${c.value.service.serviceID}"
                                                       <tr class="table-body-row">
                                                    <td class="product-id">${c.value.service.serviceID}</td>
                                                    <td class="product-image"><img src="Services/${c.value.service.imageURL}" alt=""></td>
                                                    <td class="product-name">${c.value.service.serviceName}</td>
                                                    <td class="product-price">${c.value.service.servicePrice}</td>
                                                    <td class="product-quantity"><input name="quantity" type="number" value="1" readonly=""</td>
                                                    <td class="product-remove" ><a href="delete-cart?sid=${c.value.service.serviceID}" ><i class="fa fa-trash" aria-hidden="true"></i></a></td>
                                                </tr>
                                            </form>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <div class="col-lg-4">
                                <div class="total-section">
                                    <table class="total-table">
                                        <thead class="total-table-head">
                                            <tr class="table-total-row">
                                                <th>Tổng </th>
                                                <th>Giá</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                           
                                          
                                            <tr class="total-data">
                                                <td><strong>Tổng: </strong></td>
                                                <td>$${totalMoney}</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <div class="cart-buttons">
                                        <a href="carts" class="boxed-btn">Cập nhật</a>
                                        <a href="checkout" class="boxed-btn black">Check Out</a>
                                    </div>
                                </div>

                                
                            </div>
                        </div>
                    </div>
                </div>
            </c:otherwise>
        </c:choose>

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