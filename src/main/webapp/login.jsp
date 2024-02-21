
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>

    <!-- bootstrap.bundle.min.js 用于弹窗、提示、下拉菜单，包含了 popper.min.js -->
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>

    <!-- 最新的 Bootstrap4 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="js/sb-admin-2.min.js"></script>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <title>登录界面</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/userLogin" method="post">
    <div class="form-group">
        <label> 用户名：</label>
        <input type="text" name="name" class="form-control" placeholder="请输入用户名"/><br>
    </div>
    <div class="form-group">
        <label> 密&nbsp;&nbsp;码:</label>
        <input type="password" id="password" name="password" class="form-control" placeholder="请输入密码" >
    <span class="input-group-addon">
        <span class="glyphicon glyphicon-eye-open" id="eye"></span>
    </span> <br>
    <div class="form-group" style="text-align: center">
    <input type="submit" value="登录" class="btn btn-primary">
    <input type="reset" value="取消" class="btn btn-default">
    </div>
    </div>
</form>
</body>
</html>
