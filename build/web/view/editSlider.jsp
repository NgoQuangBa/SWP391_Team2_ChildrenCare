<%-- 
    Document   : editSlider
    Created on : Jul 10, 2022, 7:44:12 PM
    Author     : BEAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
        <div class="container mt-3 mx-auto">
            <form action="editSlider" method="post">
                <div class="modal-header">						
                    <h4 class="modal-title">Edit Slider</h4>
                </div>

                <div class="modal-body">
                    <div class="form-group">
                        <label>Slider title</label>
                        <input name="title" type="text" class="form-control" value="${slider.slideTitle}">                   
                    </div>
                    <div class="form-group">
                        <label>Content shortcut</label>
                        <input name="backlink" type="text" class="form-control" value="${slider.backLink}">                   
                    </div>
                    <div class="form-group">
                        <label>Slider Image</label>
                        <input name="imageUrl"  id="imageUrl" type="text" class="form-control" value="${slider.imageURL}" >
                        <img  class="image" src="./../images/${slider.imageURL}" alt="" style="width: 150px; object-fit: cover; margin-top: 5px;" class="image">                   
                    </div>
                    <div class="form-group">
                        <label>Status</label>
                        <select name="status" class="form-control"> 
                            <option value="1">Show</option>
                            <option value="0">Hide</option>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-success">Edit</button>
                    <a href="home">Cancel</a>
                </div>
            </form>
        </div>

        <script>
            const imageUrl = document.querySelector("#imageUrl");
            const image = document.querySelector(".image");

            imageUrl.addEventListener("change", () => {
                image.src = imageUrl.value
            })


        </script>
    </body>
</html