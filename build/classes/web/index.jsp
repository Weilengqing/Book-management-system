<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Insert title here</title>
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
  <script src="js/sb-admin-2.min.js"></script>
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid">
  <nav class="navbar navbar-expand-md  bg-dark navbar-dark  justify-content-end">
    <ul class="navbar-nav">
      <li class="nav-item active"><a class="nav-link" href="index.jsp">图书管理系统</a></li>
      <li class="nav-item"><a class="nav-link" href="login.jsp">登录</a></li>
      <li class="nav-item"><a class="nav-link" href="register.jsp">注册</a></li>
    </ul>
  </nav>
  <div id="demo" class="carousel slide" data-ride="carousel">
    <!-- 指示符 -->
    <ul class="carousel-indicators">
      <li data-target="#demo" data-slide-to="0" class="active"></li>
      <li data-target="#demo" data-slide-to="1"></li>
      <li data-target="#demo" data-slide-to="2"></li>
    </ul>

    <!-- 轮播图片 -->
    <div class="carousel-inner">
      <div class="carousel-item active">
        <a href="#" target="_blank"><img src="images/美食02.jpg"> </a>
      </div>
      <div class="carousel-item">
        <img src="images/美食03.jpg">
      </div>
      <div class="carousel-item">
        <img src="images/美食04.jpg">
      </div>
    </div>

    <!-- 左右切换按钮 -->
    <a class="carousel-control-prev" href="#demo" data-slide="prev">
      <span class="carousel-control-prev-icon"></span>
    </a> <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
  </div>
  <div class="row shadow mb-3 p-2 ">
    <p> 图书管理系统  版权所有 2018-2023 东华理工大学长江学院</p>
    <p> 赣ICP备2021002784号-1</p>
  </div>
</div>

</body>
</html>