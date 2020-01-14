<%--
  Created by IntelliJ IDEA.
  User: zhengshuai
  Date: 2020/1/14
  Time: 3:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<table style="align:center" border="1px black solid">
    <tr>
        <td align="center">id</td>
        <td align="center">Name</td>
        <td align="center">Description</td>
        <td align="center">Price</td>
        <td align="center">Image</td>
    </tr>

    <c:forEach items="${searchedList}" var="product">
        <tr>
            <th align="center">${product.id}</th>
            <th align="center">${product.name}</th>
            <th align="center">${product.description}</th>
            <th align="center">${product.price}</th>
            <th align="center">${product.image}</th>
        </tr>
    </c:forEach>
</table>

</body>
</html>
