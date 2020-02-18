<%--
  Created by IntelliJ IDEA.
  User: zhengshuai
  Date: 2020/1/8
  Time: 11:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>createProduct</title>
</head>
<body>
<h1>this is a create product page</h1>

<a href="home">back to home page</a> <br>
<a href="showProd">show all products</a> <br>

<form action="saveProd" method="post">
    Product Image: <input type="text" name="image"> <br>
    Product Name: <input type="text" name="name"> <br>
    Product description: <input type="text" name="description">  <br>
    Product Price: <input type="text" name="price">  <br>
    <input type="submit">
</form>

${msg}

</body>
</html>
