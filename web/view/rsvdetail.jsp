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
        <title>Chi tiết đặt lịch</title>

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
        <style>
            img{
                width: 150px;
                height: 200px;
            }
        </style>
    </head>

    <body>



        <!-- breadcrumb-section -->

        <!-- end breadcrumb section -->

        <!-- cart -->


        <div class="cart-section mt-150 mb-150">
            <h2 style="text-align: center;padding-bottom:  30px">Thông tin chi tiết</h2 >
            <div class="container">
                <div class="row">

                    <div class="col-lg-8 col-md-12">
                        <div class="cart-table-wrap">

                            <table class="cart-table" style="position: absolute" >
                                <thead class="cart-table-head">
                                    <tr class="table-head-row">
                                        <th class="product-name"> No.</th>
                                        <th class="product-price"> Ngày đặt khám </th>                                    
                                        <th class="product-price"> Ảnh dịch vụ </th> 
                                        <th class="product-price"> Tên dịch vụ </th>
                                        <th class="product-price"> Giá dịch vụ </th>
                                        <th class="product-price"> Tên trẻ</th>
                                        <th class="product-price"> Giới tính </th>
                                        <th class="product-price"> Trạng thái</th>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${listrd}" var="c">
                                    <form action="rsvdetail"> 
                                                                       
                                        <tr class="table-body-row">
                                            <td class="product-id">${c.detailID}</td>
                                            <td class="product-price">${c.reservationDate}</td>                                         
                                            <td class="product-price"> 
                                                <img width="100" height="100" src="Services/${c.service.imageURL}" > 
                                            </td>          
                                            <td class="product-price">${c.service.serviceName}</td>
                                            <td class="product-price">${c.service.servicePrice} $</td>
                                            <td class="product-price"> ${c.child.childName}</td>
                                              <c:if test="${c.child.gender==true}"> 
                                                <td class="product-image">Nam</td>
                                            </c:if>
                                            <c:if test="$${c.child.gender==false}">
                                                <td class="product-image"> Nữ</td>
                                            </c:if>  
                                            <c:if test="${c.status==true}"> 
                                                <td class="product-image">Hoàn thành</td>
                                            </c:if>
                                            <c:if test="${c.status==false}">
                                                <td class="product-image"> Chưa hoàn thành</td>
                                            </c:if>                                         
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