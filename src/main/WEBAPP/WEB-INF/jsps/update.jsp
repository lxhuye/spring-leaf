<%--
  Created by IntelliJ IDEA.
  User: zhengshuai
  Date: 2020/1/8
  Time: 4:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<h1>this is a update product page</h1>

<a href="home">back to home page</a> <br>
<a href="showProd">show all products</a> <br>

<form action="saveUpdateProd" method="post">
    Product Id:<input type="text" value="${setproduct.id}" readonly="true" name="id"> <br>
    Product Image: <input type="text" value="${setproduct.image}" name="image"> <br>
    Product Name: <input type="text" value="${setproduct.name}"  name="name"> <br>
    Product description: <input type="text" value="${setproduct.description}"  name="description">  <br>
    Product Price: <input type="text" value="${setproduct.price}"  name="price">  <br>
    <input type="submit">
</form>
</body>
</html>
