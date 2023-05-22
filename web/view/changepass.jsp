<%-- 
    Document   : login
<<<<<<< Updated upstream
    Created on : Feb 28, 2022, 3:20:34 PM
=======
    Created on : May 26, 2022, 3:20:34 PM
>>>>>>> Stashed changes
    Author     : LeHaNam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="author" content="Muhamad Nauval Azhar">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <meta name="description" content="This is a login page template based on Bootstrap 5">
        <title>Đăng nhập</title>
        <link rel="icon" href="img/icon.png" type="image/icon type" >
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    </head>

    <body>
        <section class="h-100">
            <div class="container h-100">
                <div class="row justify-content-sm-center h-100">
                    <div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
                        <div class="text-center my-5">
                            <a href="home"><img src="img/care logo.png " alt="logo" width="300"></a>
                        </div>
                        <div class="card shadow-lg">
                            <div class="card-body p-5">

                                <h1 class="fs-4 card-title fw-bold mb-4">Đăng nhập</h1>
                                <form action="changepass" method="POST" class="needs-validation"  autocomplete="off">
                                    <div class="mb-3">
                                        <label class="mb-2 text-muted" for="username">Mật khẩu cũ</label>
                                        <input id="username" type="password" class="form-control" name="oldpass"  required>
                                        <div class="invalid-feedback">
                                            Tên tài khoản không hợp lệ
                                        </div>
                                    </div>

                                    <div class="mb-3">
                                        <div class="mb-2 w-100">
                                            <label class="text-muted" for="password">Mật khẩu mới</label>
                                        </div>
                                        <input id="password" type="password" class="form-control" name="newpass" required>
                                    </div>
                                    <div class="mb-3">
                                        <div class="mb-2 w-100">
                                            <label class="text-muted" for="password">Mật khẩu mới</label>
                                        </div>
                                        <input id="password" type="password" class="form-control" name="renewpass" required>
                                    </div>
                                    <div class="mb-3">
                                        <p style="color: red;">${mess}</p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <button type="submit" class="btn btn-primary ms-auto" style="background-color: #00c4cc; border-color: #00c4cc" >
                                            Đổi mật khẩu
                                        </button>
                                    </div>

                                </form>

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
</html>



