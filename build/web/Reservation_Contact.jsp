
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

        <style>
            /* ==========================================
             FOR DEMO PURPOSE
             ========================================== */
            .bg-light {
                background: #eef0f4;
            }

            .choices__list--dropdown.choices__item--selectable {
                padding-right: 1rem;
            }

            .choices__list--single {
                padding: 0;
            }



            .shadow {
                box-shadow: 0.3rem 0.3rem 1rem rgba(178, 200, 244, 0.23);
            }

            a {
                text-decoration: none;
                color: inherit;
                transition: all 0.3s;
            }
            .picker__footer,
            .picker__header,
            .picker__table {
                text-align: center
            }

            .picker__box {
                padding: 0 1em
            }

            .picker__header {
                position: relative;
                margin-top: .75em
            }

            .picker__month,
            .picker__year {
                font-weight: 500;
                display: inline-block;
                margin-left: .25em;
                margin-right: .25em
            }

            .picker__year {
                color: #999;
                font-size: .8em;
                font-style: italic
            }

            .picker__select--month,
            .picker__select--year {
                border: 1px solid #b7b7b7;
                height: 2em;
                padding: .5em;
                margin-left: .25em;
                margin-right: .25em
            }

            .picker__select--month {
                width: 35%
            }

            .picker__select--year {
                width: 22.5%
            }

            .picker__select--month:focus,
            .picker__select--year:focus {
                border-color: #f78b65
            }

            .picker__nav--next,
            .picker__nav--prev {
                position: absolute;
                padding: .5em 1.25em;
                width: 1em;
                height: 1em;
                box-sizing: content-box;
                top: -.25em
            }

            .picker__nav--prev {
                left: -1em;
                padding-right: 1.25em
            }

            .picker__nav--next {
                right: -1em;
                padding-left: 1.25em
            }

            @media (min-width:24.5em) {

                .picker__select--month,
                .picker__select--year {
                    margin-top: -.5em
                }

                .picker__nav--next,
                .picker__nav--prev {
                    top: -.33em
                }

                .picker__nav--prev {
                    padding-right: 1.5em
                }

                .picker__nav--next {
                    padding-left: 1.5em
                }
            }

            .picker__nav--next:before,
            .picker__nav--prev:before {
                content: " ";
                border-top: .5em solid transparent;
                border-bottom: .5em solid transparent;
                border-right: .75em solid #000;
                width: 0;
                height: 0;
                display: block;
                margin: 0 auto
            }

            .picker__nav--next:before {
                border-right: 0;
                border-left: .75em solid #000
            }

            .picker__nav--next:hover,
            .picker__nav--prev:hover {
                cursor: pointer;
                color: #000;
                background: #f2d1c5
            }

            .picker__nav--disabled,
            .picker__nav--disabled:before,
            .picker__nav--disabled:before:hover,
            .picker__nav--disabled:hover {
                cursor: default;
                background: 0 0;
                border-right-color: #f5f5f5;
                border-left-color: #f5f5f5
            }

            .picker__table {
                border-collapse: collapse;
                border-spacing: 0;
                table-layout: fixed;
                font-size: inherit;
                width: 100%;
                margin-top: .75em;
                margin-bottom: .5em
            }

            @media (min-height:33.875em) {
                .picker__table {
                    margin-bottom: .75em
                }
            }

            .picker__table td {
                margin: 0;
                padding: 0
            }

            .picker__weekday {
                width: 14.285714286%;
                font-size: .75em;
                padding-bottom: .25em;
                color: #999;
                font-weight: 500
            }

            @media (min-height:33.875em) {
                .picker__weekday {
                    padding-bottom: .5em
                }
            }

            .picker__day {
                padding: .3125em 0;
                font-weight: 200;
                border: 1px solid transparent
            }

            .picker__day--today {
                position: relative
            }

            .picker__day--today:before {
                content: " ";
                position: absolute;
                top: 2px;
                right: 2px;
                width: 0;
                height: 0;
                border-top: .5em solid #f78b65;
                border-left: .5em solid transparent
            }

            .picker__day--disabled:before {
                border-top-color: #aaa
            }

            .picker__day--outfocus {
                color: #ddd
            }

            .picker--focused .picker__day--highlighted,
            .picker__day--highlighted:hover,
            .picker__day--infocus:hover,
            .picker__day--outfocus:hover {
                cursor: pointer;
                color: #000;
                background: #f2d1c5
            }

            .picker__day--highlighted {
                border-color: #f78b65
            }

            .picker--focused .picker__day--selected,
            .picker__day--selected,
            .picker__day--selected:hover {
                background: #f78b65;
                color: #fff
            }

            .picker--focused .picker__day--disabled,
            .picker__day--disabled,
            .picker__day--disabled:hover {
                background: #f5f5f5;
                border-color: #f5f5f5;
                color: #ddd;
                cursor: default
            }

            .picker__day--highlighted.picker__day--disabled,
            .picker__day--highlighted.picker__day--disabled:hover {
                background: #bbb
            }

            .picker__button--clear,
            .picker__button--close,
            .picker__button--today {
                border: 1px solid #fff;
                background: #fff;
                font-size: .8em;
                padding: .66em 0;
                font-weight: 700;
                width: 33%;
                display: inline-block;
                vertical-align: bottom
            }

            .picker__button--clear:hover,
            .picker__button--close:hover,
            .picker__button--today:hover {
                cursor: pointer;
                color: #000;
                background: #f2d1c5;
                border-bottom-color: #f2d1c5
            }

            .picker__button--clear:focus,
            .picker__button--close:focus,
            .picker__button--today:focus {
                background: #f2d1c5;
                border-color: #f78b65;
                outline: 0
            }

            .picker__button--clear:before,
            .picker__button--close:before,
            .picker__button--today:before {
                position: relative;
                display: inline-block;
                height: 0
            }

            .picker__button--clear:before,
            .picker__button--today:before {
                content: " ";
                margin-right: .45em
            }

            .picker__button--today:before {
                top: -.05em;
                width: 0;
                border-top: .66em solid #f78b65;
                border-left: .66em solid transparent
            }

            .picker__button--clear:before {
                top: -.25em;
                width: .66em;
                border-top: 3px solid #e20
            }

            .picker__button--close:before {
                content: "\D7";
                top: -.1em;
                vertical-align: top;
                font-size: 1.1em;
                margin-right: .35em;
                color: #777
            }

            .picker__button--today[disabled],
            .picker__button--today[disabled]:hover {
                background: #f5f5f5;
                border-color: #f5f5f5;
                color: #ddd;
                cursor: default
            }

            .picker__button--today[disabled]:before {
                border-top-color: #aaa
            }
            .picker,.picker__holder{
                width:100%;
                position:absolute
            }
            .picker{
                font-size:16px;
                text-align:left;
                line-height:1.2;
                color:#000;
                z-index:10000;
                -webkit-user-select:none;
                -moz-user-select:none;
                -ms-user-select:none;
                user-select:none;
                outline:0
            }
            .picker__input{
                cursor:default
            }
            .picker__input.picker__input--active{
                border-color:#0089ec
            }
            .picker__holder{
                overflow-y:auto;
                -webkit-overflow-scrolling:touch;
                background:#fff;
                border:1px solid #aaa;
                border-top-width:0;
                border-bottom-width:0;
                border-radius:0 0 5px 5px;
                box-sizing:border-box;
                min-width:176px;
                max-width:466px;
                max-height:0;
                -ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)";
                filter:alpha(opacity=0);
                -moz-opacity:0;
                opacity:0;
                transform:translateY(-1em) perspective(600px) rotateX(10deg);
                transition:transform .15s ease-out,opacity .15s ease-out,max-height 0s .15s,border-width 0s .15s
            }/*!
                         * Classic picker styling for pickadate.js
                         * Demo: http://amsul.github.io/pickadate.js
                         */
            .picker__frame{
                padding:1px
            }
            .picker__wrap{
                margin:-1px
            }
            .picker--opened .picker__holder{
                max-height:25em;
                -ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)";
                filter:alpha(opacity=100);
                -moz-opacity:1;
                opacity:1;
                border-top-width:1px;
                border-bottom-width:1px;
                transform:translateY(0) perspective(600px) rotateX(0);
                transition:transform .15s ease-out,opacity .15s ease-out,max-height 0s,border-width 0s;
                box-shadow:0 6px 18px 1px rgba(0,0,0,.12)
            }

            input[type="date"]{
                background-color: #fff;
                padding: 7px;

                font-family: "Roboto Mono",monospace;
                color: #000;
                font-size: 15px;
                border: 1px solid #000;
                outline: none;
                border-radius: 5px;
            }
            .cart-quantity-input {
                height: 34px;
                width: 50px;
                border-radius: 5px;
                border: 1px solid #56CCF2;
                background-color: #eee;
                color: #333;
                padding: 0;
                text-align: center;
                font-size: 1.2em;
                margin-right: 25px;
            }
            @media (min-width: 768px){
                .seven-cols .col-md-1,
                .seven-cols .col-sm-1,
                .seven-cols .col-lg-1  {
                    width: 100%;
                    *width: 100%;
                }
            }

            @media (min-width: 992px) {
                .seven-cols .col-md-1,
                .seven-cols .col-sm-1,
                .seven-cols .col-lg-1 {
                    width: 14.285714285714285714285714285714%;
                    *width: 14.285714285714285714285714285714%;
                }
            }

            /**
             *  The following is not really needed in this case
             *  Only to demonstrate the usage of @media for large screens
             */
            @media (min-width: 1200px) {
                .seven-cols .col-md-1,
                .seven-cols .col-sm-1,
                .seven-cols .col-lg-1 {
                    width: 14.285714285714285714285714285714%;
                    *width: 14.285714285714285714285714285714%;
                }
            }
            .lead {
                font-size: 0.9rem;
                font-weight: 300;
            }

        </style>
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

            <c:if test="${sessionScope.account != null || sessionScope.admin != null}">
                <c:if test="${requestScope.listChildren.size()<=0}">

                    <section class="inner-page">
                        <div class="container">
                            <center>
                                <h1>
                                    Your children's profile is empty ! Click <a href="AddNewChildren.jsp">Here</a> to add your children to your profile.
                                </h1>

                            </center>

                        </div>
                    </section>
                </c:if>
                <c:if test="${requestScope.listChildren.size()>0}">
                    <form action="reservation-contact" method="post">
                        <section class="inner-page">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="row mb-5">
                                            <div class="col-md-12">
                                                <h2 class="h3 mb-3 text-black">Your Order</h2>
                                                <div class="p-3 p-lg-5 border">
                                                    <table class="table site-block-order-table mb-5">
                                                        <thead>
                                                        <th>Services Name</th>
                                                        <th>Number of Children</th>
                                                        <th>Name Children</th>
                                                        <th>Date</th>
                                                        <th>Slot</th>
                                                        <th>Doctor</th>
                                                        <th>Nurse</th>
                                                        <th>Total</th>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach items="${sessionScope.carts}" var="cart">
                                                                <tr>
                                                                    <td>${cart.value.service.service_title} <strong class="mx-2">x</strong> ${cart.value.num_of_person} person x</strong> ${cart.value.quantity} services</td>
                                                                    <td> 
                                                                        <input type="hidden" name="id" value="${cart.value.service.service_id}">
                                                                        <c:if test="${cart.value.num_of_person<n}">
                                                                            <input  id="num_of_person" min="1" onchange="window.location = 'numofchildren?id=${cart.value.service.service_id}&num_of_person=${cart.value.num_of_person+1}'"  class="lead fw-normal mb-4 cart-quantity-input" name="num_of_person" type="number" value="${cart.value.num_of_person}" max="${requestScope.n}">

                                                                        </c:if>
                                                                        <c:if test="${cart.value.num_of_person>=n}">
                                                                            <input  id="num_of_person" min="1" onchange="window.location = 'numofchildren?id=${cart.value.service.service_id}&num_of_person=${cart.value.num_of_person-1}'"  class="lead fw-normal mb-4 cart-quantity-input" name="num_of_person" type="number" value="${cart.value.num_of_person}" max="${requestScope.n}">
                                                                        </c:if>
                                                                    </td>
                                                                    <td>
                                                                        <c:forEach begin="1" end="${cart.value.num_of_person}">
                                                                            <select required name="children" class="form-control select2 select2-hidden-accessible" style="width: 100%;" tabindex="-1" aria-hidden="true">
                                                                                <option value="" selected="selected">--children--</option>
                                                                                <c:forEach items="${requestScope.listChildren}" var="ch">

                                                                                    <option value="${ch.children_id}">${ch.children_name}</option>
                                                                                </c:forEach>
                                                                            </select>
                                                                            </br>
                                                                        </c:forEach>
                                                                    </td>
                                                                    <td><input onchange="checkdate()" required type="date" id="date_order" name="date"></td>

                                                            <script>
                                                                function checkdate() {
                                                                    var GivenDate = document.getElementById('date_order').value;
                                                                    GivenDate = new Date(GivenDate);
                                                                    var CurrentDate = new Date();
                                                                    var date = new Date();
                                                                    date.setDate(date.getDate() + 1);
                                                                    if (GivenDate < CurrentDate) {
                                                                        alert('The Order Date must bigger than current date !');
                                                                        console.log(date);
                                                                        var now = date;
                                                                        var day = ("0" + now.getDate()).slice(-2);
                                                                        var month = ("0" + (now.getMonth() + 1)).slice(-2);
                                                                        var today = now.getFullYear() + "-" + (month) + "-" + (day);
                                                                        document.getElementById('date_order').value = today;
                                                                    }
                                                                }

                                                            </script>

                                                            <td><select required name="time" class="form-control select2 select2-hidden-accessible" style="width: 100%;" tabindex="-1" aria-hidden="true">
                                                                    <option value="" selected="selected">--Time--</option>
                                                                    <option value="1">7h30 - 9h20</option>
                                                                    <option value="2">9h30 - 12h</option>      
                                                                    <option value="3">12h00 - 15h30</option>
                                                                    <option value="4">15h40 - 17h30</option>
                                                                </select></td>
                                                            <td><select required name="doctor" class="form-control select2 select2-hidden-accessible" style="width: 100%;" tabindex="-1" aria-hidden="true">
                                                                    <option value="" selected="selected">--Doctor--</option>
                                                                    <c:forEach items="${requestScope.doctorList}" var="d">
                                                                        <option value="${d.user_id}">${d.user_name}</option>
                                                                    </c:forEach>
                                                                </select></td>
                                                            <td><select required name="nurse" class="form-control select2 select2-hidden-accessible" style="width: 100%;" tabindex="-1" aria-hidden="true">
                                                                    <option value="" selected="selected">--Nurse--</option>
                                                                    <c:forEach items="${requestScope.nurseList}" var="n">
                                                                        <option value="${n.user_id}">${n.user_name}</option>
                                                                    </c:forEach>


                                                                </select></td>
                                                            <td>$${cart.value.service.service_price*cart.value.quantity*cart.value.num_of_person}</td>
                                                            </tr>
                                                        </c:forEach>

                                                        <tr>
                                                            <td class="text-black font-weight-bold"><strong>Cart Subtotal</strong></td>
                                                            <td class="text-black">$${total_order}</td>
                                                        </tr>

                                                        <tr>
                                                            <td class="text-black font-weight-bold"><strong>Order Total</strong></td>
                                                            <td class="text-black font-weight-bold"><strong>$${total_order}</strong></td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>

                                        <c:if test="${sessionScope.account.user_name != null}">
                                            <div class="form-group row">
                                                <div class="col-md-12">
                                                    <label for="c_companyname" class="text-black">Full Name: </label>
                                                    <input required type="text" class="form-control" value="${sessionScope.account.user_name}" id="c_companyname" name="fullname">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <div class="col-md-6">
                                                    <div class="col-md-12"><label class="labels">Gender</label><br>
                                                        <input name="gender" type="radio" ${sessionScope.account.user_gender == true ?"checked":""} value="1"> Male
                                                        <input name="gender" type="radio" ${sessionScope.account.user_gender == false ?"checked":""} value="0"> Female
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <div class="col-md-12">
                                                    <label for="c_address" class="text-black">Address <span class="text-danger">*</span></label>
                                                    <input required type="text" class="form-control" value="${sessionScope.account.user_address}"  id="c_address" name="address" placeholder="address">
                                                </div>
                                            </div>
                                            <div class="form-group row mb-5">
                                                <div class="col-md-6">
                                                    <label for="c_email_address" class="text-black">Email Address <span class="text-danger">*</span></label>
                                                    <input readonly="readonly" required type="text" class="form-control" value="${sessionScope.account.user_email}" id="c_email_address" name="email">
                                                </div>
                                                <div class="col-md-6">
                                                    <p style="color: red" id="demo"></p>
                                                    <label for="c_phone" class="text-black">Phone <span class="text-danger">*</span></label>
                                                    <input onchange="checkPhone()" required type="number" class="form-control" id="c_phone" value="${sessionScope.account.user_phone}" name="phone" placeholder="phone">
                                                </div>
                                            </div>
                                        </c:if>

                                        <c:if test="${sessionScope.admin.user_name != null}">
                                            <div class="form-group row">
                                                <div class="col-md-12">
                                                    <label for="c_companyname" class="text-black">Full Name: </label>
                                                    <input required type="text" class="form-control" value="${sessionScope.admin.user_name}" id="c_companyname" name="fullname">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <div class="col-md-6">
                                                    <div class="col-md-12"><label class="labels">Gender</label><br>
                                                        <input name="gender" type="radio" ${sessionScope.admin.user_gender == true ?"checked":""} value="1"> Male
                                                        <input name="gender" type="radio" ${sessionScope.admin.user_gender == false ?"checked":""} value="0"> Female
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <div class="col-md-12">
                                                    <label for="c_address" class="text-black">Address <span class="text-danger">*</span></label>
                                                    <input required type="text" class="form-control" value="${sessionScope.admin.user_address}"  id="c_address" name="address" placeholder="address">
                                                </div>
                                            </div>

                                            <div class="form-group row mb-5">
                                                <div class="col-md-6">
                                                    <label for="c_email_address" class="text-black">Email Address <span class="text-danger">*</span></label>
                                                    <input readonly="readonly" required type="text" class="form-control" value="${sessionScope.admin.user_email}" id="c_email_address" name="email">
                                                </div>
                                                <div class="col-md-6">
                                                    <p style="color: red" id="demo"></p>
                                                    <label for="c_phone" class="text-black">Phone <span class="text-danger">*</span></label>
                                                    <input onchange="checkPhone()" required type="number" class="form-control" id="c_phone" value="${sessionScope.admin.user_phone}" name="phone" placeholder="phone">
                                                </div>
                                            </div>
                                        </c:if>
                                        <div class="form-group">
                                            <label for="c_order_notes" class="text-black">Order Notes</label>
                                            <textarea required name="note" id="c_order_notes" cols="30" rows="5" class="form-control" placeholder="Write your notes here..."></textarea>
                                        </div>
                                    </div>
                                    <button id="placeOrder" class="btn btn-primary btn-lg py-3 btn-block" onclick="this.form().submit()">Place Order</button>
                                    </form>
                                </div>
                            </div>
                            </div>
                        </section>
                    </c:if>
                </c:if>
                <c:if test="${sessionScope.account == null && sessionScope.admin == null}">
                    <section class="inner-page">
                        <div class="container">
                            <center>
                                <h1>
                                    You need to login before checkout
                                </h1>
                            </center>

                        </div>
                    </section>
                </c:if>
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
        <script>
                                        function checkPhone() {
                                            var phone = document.getElementById("c_phone").value;
                                            var regex1 = /((0[3|5|7|8|9])+([0-9]{8})\b)/g;
                                            var regex2 = /((84[3|5|7|8|9])+([0-9]{8})\b)/g;
                                            if (phone.match(regex1) || phone.match(regex2)) {
                                                document.getElementById("demo").innerHTML = "";
                                                document.getElementById("placeOrder").disabled = 0;
                                            } else {
                                                document.getElementById("demo").innerHTML = "Invalid Phone Number";
                                                document.getElementById("placeOrder").disabled = 1;
                                            }
                                        }
        </script>
        <script>
            $(document).ready(function () {
                $('input[type="number"]').on('keyup', function () {
                    v = parseInt($(this).val());
                    min = parseInt($(this).attr('min'));
                    max = parseInt($(this).attr('max'));
                    /*if (v < min){
                     $(this).val(min);
                     } else */if (v > max) {
                        $(this).val(max);
                    }
                })
            })
            function required()
            {
                var empt1 = document.forms["checkout"]["fullname"].value;
                var empt2 = document.forms["checkout"]["gender"].value;
                var empt3 = document.forms["checkout"]["address"].value;
                var empt4 = document.forms["checkout"]["email"].value;
                var empt5 = document.forms["checkout"]["phone"].value;
                var empt6 = document.forms["checkout"]["password"].value;
                var empt7 = document.forms["checkout"]["repeatpassword"].value;
                if (empt1 == "")
                {
                    alert("Email is empty! Please input a full your name.");
                    return false;
                } else if (empt2 == "") {
                    alert("Password is empty! Please input your gender.");
                    return false;
                } else if (empt3 == "") {
                    alert("Password is empty! Please input your address.");
                    return false;
                } else if (empt4 == "") {
                    alert("Password is empty! Please input your email.");
                    return false;
                } else if (empt5 == "") {
                    alert("Password is empty! Please input your phone.");
                    return false;
                } else if (empt6 == "") {
                    alert("Password is empty! Please input a password.");
                    return false;
                } else if (empt7 == "") {
                    alert("Password is empty! Please input repeat password.");
                    return false;
                } else
                {
                    //   alert('Code has accepted : you can try another');
                    return true;
                }
            }



            $(function () {

                var from_$input = $('#input_from').pickadate(),
                        from_picker = from_$input.pickadate('picker')

                var to_$input = $('#input_to').pickadate(),
                        to_picker = to_$input.pickadate('picker')


                // Check if there’s a “from” or “to” date to start with.
                if (from_picker.get('value')) {
                    to_picker.set('min', from_picker.get('select'))
                }
                if (to_picker.get('value')) {
                    from_picker.set('max', to_picker.get('select'))
                }

                // When something is selected, update the “from” and “to” limits.
                from_picker.on('set', function (event) {
                    if (event.select) {
                        to_picker.set('min', from_picker.get('select'))
                    } else if ('clear' in event) {
                        to_picker.set('min', false)
                    }
                })
                to_picker.on('set', function (event) {
                    if (event.select) {
                        from_picker.set('max', to_picker.get('select'))
                    } else if ('clear' in event) {
                        from_picker.set('max', false)
                    }
                })

            });
        </script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/picker.js"></script>
        <script src="assets/js/picker.date.js"></script>
    </body>

</html>