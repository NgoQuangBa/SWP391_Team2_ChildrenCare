<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Bootstrap demo</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer"
    />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous" />
    <style>
        .gradient-custom {
            /* fallback for old browsers */
            background: #f6d365;
            /* Chrome 10-25, Safari 5.1-6 */
            background: -webkit-linear-gradient( to right bottom, rgba(246, 211, 101, 1), rgba(253, 160, 133, 1));
            /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
            background: linear-gradient( to right bottom, rgba(246, 211, 101, 1), rgba(253, 160, 133, 1));
        }
    </style>
</head>

<body class="" style="background-color: #eee">
    <section class="w-75 mt-5 mx-auto" style="height:500px ; ">
        <div class="row d-flex justify-content-center border-none h-100">
            <div class="col col-lg-10 mb-4 mb-lg-0">
                <div class="card mb-3" style="border-radius: 0.5rem">
                    <div class="row g-0">
                        <div class="col-md-4 gradient-custom text-center text-white" style="
                  border-top-left-radius: 0.5rem;
                  border-bottom-left-radius: 0.5rem; height: 500px;
                ">
                            <img src="https://as2.ftcdn.net/v2/jpg/03/64/21/11/1000_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg" alt="Avatar" class="img-fluid my-5 rounded-circle " style="width: 150px ;height: 150px; object-fit: cover;" />
                            <h5>${children.childname}</h5>
                            <a href="editchild?childId=${children.childId}"  class="d-inline-block"><i class="far fa-edit mb-5"></i></a>
                        </div>
                        <div class="col-md-8">
                            <div class="card-body p-4">
                                <h6 class="fs-3">Information</h6>
                                <hr class="mt-0 mb-4" />
                                <div class="row pt-1">
                                    <div class="col-6 mb-3">
                                        <h6>UserName</h6>
                                        <p class="text-muted">${children.childname}</p>
                                    </div>
                                    <div class="col-6 mb-3">
                                        <h6>Gender</h6>
                                        <c:choose>
                                            <c:when test="${children.gender == 1}">
                                                   <p class="text-muted">Male</p>
                                            </c:when>
                                            <c:otherwise>
                                                <p class="text-muted">Female</p>
                                            </c:otherwise>
                                        </c:choose>

                                    </div>
                                </div>
                                <div class="row pt-1">
                                    <div class="col-6 mb-3">
                                        <h6>Email</h6>
                                        <p class="text-muted">info@example.com</p>
                                    </div>
                                    <div class="col-6 mb-3">
                                        <h6>Phone</h6>
                                        <p class="text-muted">123 456 789</p>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>

</html>
