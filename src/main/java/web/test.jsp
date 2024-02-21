<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 吱吱
  Date: 2022/6/9
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>
      测试
    </title>
</head>
<body>
<h6><a href="findAll"><button type="button" class="btn btn-info">刷新</button></a> </h6>
<table class="table table-striped">
<thead>
<tr>
    <th>序号</th>
    <th>编号</th>
    <th>书名</th>
    <th>所属类型</th>
    <th>价格</th>
</tr>
</thead>
<tbody>
<c:forEach items="${bookList}" var="B" varStatus="i">
    <tr>
        <td>${i.count }</td>
        <td>${B.bid}</td>
        <td>${B.name }</td>
        <td>${B.type }</td>
        <td>${B.price }</td>
    </tr>
</c:forEach>
</tbody>
</table>
</body>
</html>
