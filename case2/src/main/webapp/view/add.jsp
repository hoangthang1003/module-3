<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 03/02/2023
  Time: 9:05 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Book</title>
</head>
<body>
<form method="post" action="/book?action=add">
<input name="title" placeholder="title">
<input name="pageSize" placeholder="pageSize">
<select name="idAuthor">
    <option value="1">Nguyễn Thái Học</option>
    <option value="2">Trần Mình Hoàng</option>
    <option value="3">Dương Trung Quốc</option>
    <option value="4">Lê Văn Hiến</option>
    <option value="5">Hà Văn Minh</option>
</select>
<select name="idCategory">
    <option value="1">Tự nhiên</option>
    <option value="2">Xã hội</option>
    <option value="3">Truyện</option>
    <option value="4">Tiểu thuyết</option>
    <option value="5">Khác</option>
</select>
    <button type="submit">Thêm mới</button>

</form>

</body>
</html>
