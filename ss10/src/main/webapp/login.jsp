<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 09/02/2023
  Time: 10:36 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>
<form method="post" action="/login">
    <input name="user" placeholder="user">
    <input name="pass" placeholder="pass">
    <button type="submit">Login</button>
</form>
<p>${messLogin}</p>
</body>
</html>
