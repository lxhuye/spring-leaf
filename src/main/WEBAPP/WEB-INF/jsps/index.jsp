<%--
  Created by IntelliJ IDEA.
  User: zhengshuai
  Date: 2020/1/8
  Time: 3:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
This is home page <br>

<a href="create">create Product</a> <br>
<a href="showProd">show Product</a> <br>
<form action="searchProd" method="post"><br>
    search here: <input type="text" name="productName">
    <input type="submit" name="search">
</form>
</body>
</html>
