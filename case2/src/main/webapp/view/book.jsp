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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">\
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
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
        <td><button type="submit" style="background-color: darkred">Delete</button></td>
    </tr>
</c:forEach>
</table>
</body>
</html>
