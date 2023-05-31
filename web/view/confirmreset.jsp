
<!DOCTYPE html>
<%-- 
    Document   : register
    Created on : Mar 2, 2022, 3:22:46 PM
    Author     : Sown
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="author" content="Muhamad Nauval Azhar">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <meta name="description" content="This is a login page template based on Bootstrap 5">
        <title>Đặt lại mật khẩu</title>
        
        <link rel=" icon" href="img/icon.png" type="image/icon type" >
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    </head>

    <body>
        <section class="h-100 signin-page account">
            <div class="container h-100">
                <div class="row justify-content-sm-center h-100">
                    <div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
                        <div class="text-center my-5">
                            <a href="home"><img src="img/care logo.png" alt="logo" width="200"></a>
                        </div>
                        <div class="card shadow-lg">
                            <div class="card-body p-5">

                                <h1 class="fs-4 card-title fw-bold mb-4">Đặt lại mật khẩu</h1>
                                <form action="confirmreset" method="POST" class="needs-validation">


                                    <div class="mb-3">
                                        <label class="mb-2 text-muted" for="password">Mật khẩu</label>
                                        <input id="password" type="password" class="form-control" name="password" required>
                                    </div>
                                    <div class="mb-3">
                                        <label class="mb-2 text-muted" for="repassword">Nhập lại mật khẩu</label>
                                        <input id="repassword" type="password" class="form-control" name="repassword" required>
                                    </div>
                                    <!--                                    <p class="form-text text-muted mb-3">
                                                                            By registering you agree with our terms and condition.
                                                                        </p>-->

                                    <div class="align-items-center d-flex">
                                        <button type="submit" class="btn btn-primary ms-auto" style="background-color: #00c4cc; border-color: #00c4cc" >
                                            Đặt lại
                                        </button>
                                    </div>
                                </form>
                            </div>

                            <div class="card-footer py-3 border-0 text-center" style="color: red; font-weight: bold;">
                                <label  class="">${e}</label>
                            </div>


                            <div class="card-footer py-3 border-0">
                                <div class="text-center">
                                    Đã có tài khoản? <a href="login" class="text-dark">Đăng nhập</a>
                                </div>
                            </div>
                        </div>
                        <div class="text-center mt-5 text-muted">
                            ChildrenCare &copy; VÌ SỨC KHỎE
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <script src="js/login.js"></script>
    </body>
</html>

<!--<html lang="en">
<head>

   Basic Page Needs
  ================================================== 
  <meta charset="utf-8">
  <title>Aviato | E-commerce template</title>

   Mobile Specific Metas
  ================================================== 
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="Construction Html5 Template">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
  <meta name="author" content="Themefisher">
  <meta name="generator" content="Themefisher Constra HTML Template v1.0">
  
   Favicon 
  <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
  
   Themefisher Icon font 
  <link rel="stylesheet" href="plugins/themefisher-font/style.css">
   bootstrap.min css 
  <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
  
   Animate css 
  <link rel="stylesheet" href="plugins/animate/animate.css">
   Slick Carousel 
  <link rel="stylesheet" href="plugins/slick/slick.css">
  <link rel="stylesheet" href="plugins/slick/slick-theme.css">
  
   Main Stylesheet 
  <link rel="stylesheet" href="css/style.css">

</head>

<body id="body">

<section class="signin-page account">
  <div class="container">
    <div class="row">
      <div class="col-md-6 col-md-offset-3">
        <div class="block text-center">
          <a class="logo" href="index.html">
            <img src="images/logo.png" alt="">
          </a>
          <h2 class="text-center">Confirm reset</h2>
          <p style="color: red">${alert}</p>
          <form class="text-left clearfix" action="resetchange" method="post" >
            <div class="form-group">
                <input type="text" class="form-control"  placeholder="Password" name="password">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="rePassword" name="repassword">
            </div>
            <div class="text-center">
              <button type="submit" class="btn btn-main text-center" >Reset</button>
            </div>
          </form>
          <p class="mt-20">New in this site ?<a href="signin.html"> Create New Account</a></p>
        </div>
      </div>
    </div>
  </div>
</section>

     
    Essential Scripts
    =====================================
    
     Main jQuery 
    <script src="plugins/jquery/dist/jquery.min.js"></script>
     Bootstrap 3.1 
    <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
     Bootstrap Touchpin 
    <script src="plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
     Instagram Feed Js 
    <script src="plugins/instafeed/instafeed.min.js"></script>
     Video Lightbox Plugin 
    <script src="plugins/ekko-lightbox/dist/ekko-lightbox.min.js"></script>
     Count Down Js 
    <script src="plugins/syo-timer/build/jquery.syotimer.min.js"></script>

     slick Carousel 
    <script src="plugins/slick/slick.min.js"></script>
    <script src="plugins/slick/slick-animation.min.js"></script>

     Google Mapl 
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
    <script type="text/javascript" src="plugins/google-map/gmap.js"></script>

     Main Js File 
    <script src="js/script.js"></script>
    


  </body>
  </html>-->
