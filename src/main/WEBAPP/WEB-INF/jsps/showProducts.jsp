<%--
  Created by IntelliJ IDEA.
  User: zhengshuai
  Date: 2020/1/8
  Time: 12:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>$Title$</title>
    <style>
        #class td /*设置表格文字左右和上下居中对齐*/
        {
            vertical-align: middle;
            text-align: center;
        }
    </style>
</head>
<body>
<h2>Product Table</h2>
<a href="/home">back to home</a> <br>
<a href="/create">add New Product</a> <br>
<div align="center">
    <table style="width:100%" border="1px black solid">
        <tr>
            <th align="center">id</th>
            <th align="center">Name</th>
            <th align="center">Description</th>
            <th align="center">Price</th>
            <th align="center">Image</th>
            <th align="center">Methods</th>
        </tr>

        <c:forEach items="${products}" var="product">
            <tr>
                <th align="center">${product.id}</th>
                <th align="center">${product.name}</th>
                <th align="center">${product.description}</th>
                <th align="center">${product.price}</th>
                <th align="center">${product.image}</th>
                <th>
                    <a href="deleteProd?id=${product.id}">delete</a>
                    <a href="updateProd?id=${product.id}">update</a>
                </th>
            </tr>
        </c:forEach>


    </table>
</div>
</body>
</html>
