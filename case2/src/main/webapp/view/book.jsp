<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 02/02/2023
  Time: 2:48 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>book</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
</head>
<body>
<a href="/book?action=add">Thêm mới</a>
<table class="table table-striped">
    <tr>
        <th>STT</th>
        <th>Title</th>
        <th>Page Size</th>
        <th>Author</th>
        <th>Category</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="book" items="${bookList}" varStatus="stt">
        <tr>
            <td>${stt.count}</td>
            <td>${book.title}</td>
            <td>${book.pageSize}</td>
            <td>${book.author}</td>
            <td>${book.category}</td>
            <th> <button onclick="infoDelete('${book.id}','${book.title}')" type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">Delete</button></th>

        </tr>
    </c:forEach>
</table>

<div class="modal" tabindex="-1" id="exampleModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="/book?action=delete" method="post">
                <div class="modal-body">
                    <input hidden type="text" id = "id" name="id">
                    <span> Bạn có muốn xóa sách </span>
                    <span style="color: darkred" id="deleteName"></span>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary">Delete</button>
                </div>
            </form>
        </div>

    </div>
</div><script>
    function infoDelete(id, name) {
        document.getElementById("id").value = id;
        document.getElementById("deleteName").innerText = name;
    }
</script>
</body>
</html>
