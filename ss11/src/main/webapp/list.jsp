<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 09/02/2023
  Time: 11:40 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">\
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
<table class="table table-striped">
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>Sex</td>
        <td>Point</td>
        <td>Classification</td>
    </tr>
    <c:forEach var="student" items="${list}">
        <tr>
            <th>${student.id}</th>
            <th>${student.name}</th>
            <c:if test="${student.sex}"><td>Nam</td></c:if>
            <c:if test="${!student.sex}"><td>Nữ</td></c:if>
            <th>${student.point}</th>
            <c:choose>
                <c:when test="${student.point>90}"><td>Giỏi</td></c:when>
                <c:when test="${student.point>80}"><td>Khá</td></c:when>
                <c:when test="${student.point>=60}"><td>Trung bình</td></c:when>
                <c:when test="${student.point<60}"><td>Yếu</td></c:when>
            </c:choose>
        </tr>
    </c:forEach>
</table>
</body>
</html>
