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
        <title>Check Out</title>

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

        <!-- check out section -->
        <div class="checkout-section mt-150 mb-150">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="checkout-accordion-wrap">
                            <div class="accordion" id="accordionExample">
                                <div class="card single-accordion">
                                    <div class="card-header" id="headingOne">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                Thông tin đặt lịch
                                            </button>
                                        </h5>
                                    </div>

                                    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="billing-address-form">
                                                <form action="checkout" method="POST">
                                                    <div class="mb-3">
                                                        <label for="name" class="form-label">Tên trẻ</label>
                                                        <input type="text" class="form-control" id="name" name="name" aria-describedby="emailHelp">
                                                    </div>
                                                     <div class="mb-3">
                                                         <label for="name" class="form-label">Giới tính: &nbsp; &nbsp; &nbsp;</label>                                                        
                                                        <input type="radio" value="0" id="male" name="gender" aria-describedby="emailHelp"> Nam &nbsp; &nbsp; &nbsp; 
                                                        <input type="radio" value="1" id="female" name="gender" aria-describedby="emailHelp"> Nữ                                               
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="phone" class="form-label">Số điện thoại</label>
                                                        <input type="text" class="form-control" value="${sessionScope.account.phone}" id="phone" name="phoneNumber" aria-describedby="emailHelp" readonly="">
                                                    </div>
                                                   
                                                           <input type="hidden" name="parentID" value="${sessionScope.account.userID}"
                                                            
                                                    
                                                    <div class="mb-3">
                                                        <label for="note" class="form-label">Lưu ý</label>
                                                        <textarea class="form-control" id="note" name="notes" rows="3"></textarea>
                                                    </div >
                                                    
                                                    <div class="cart-buttons">
                                                    <button type="submit" class="boxed-btn black">Xác nhận</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card single-accordion">						   						    
                                </div>						  
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="row">

                        <div class="col-lg-8 col-md-12">
                            <div class="cart-table-wrap">

                                <table class="cart-table">
                                    <thead class="cart-table-head">
                                        <tr class="table-head-row">

                                            <th class="product-image">Ảnh dịch vụ</th>
                                            <th class="product-name">Tên</th>
                                            <th class="product-price">Giá</th>

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
                                            <th>Total</th>
                                            <th>Price</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="total-data">
                                            <td><strong>Subtotal:</strong></td>
                                            <td>$${totalMoney} </td>
                                        </tr>                             
                                        <tr class="total-data">
                                            <td><strong>Total: </strong></td>
                                            <td>$${totalMoney}</td>
                                        </tr>
                                    </tbody>
                                </table>

                            </div>
                            

                        </div>
                    </div>
                </div>
            </div>
            <!-- end check out section -->

            <!-- logo carousel -->


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