<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>图书添加页面</title>
    <!-- 新 Bootstrap4 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>

    <!-- bootstrap.bundle.min.js 用于弹窗、提示、下拉菜单，包含了 popper.min.js -->
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>

    <!-- 最新的 Bootstrap4 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<div class="row shadow rounded m-3 p-3">
    <div id="col-8 ">
<form class="form"  id="AddBookFrom">
    <div class="form-group">
        <label for="bid">图书编号：</label>
        <input type="text" class="form-control" name="bid" id="bid"/>
    </div>
    <div class="form-group">
        <label for="name">书名：</label>
        <input type="text" name="name" class="form-control" id="name">
    </div>
    <div class="form-group">
        <label for="type">所属类别</label>
        <input type="text" name="type" class="form-control" id="type">
    </div>
    <div class="form-group">
        <label for="price">价格：</label>
        <input type="text" name="price" class="form-control" id="price">
    </div>
    <div class="form-group">
        <button type="reset" class="btn btn-secondary">重置</button>
        <a href="#" class="btn btn-danger btn-xs" onclick="add()">添加</a>
    </div>
</form>
    </div>
</div>
    <a href="Book.jsp">返回</a>
</div>
<script >
  function add() {
        $.post(
            "addBook",
            $("#AddBookFrom").serialize(),//序列化修改表单里的数据传递给action:updateGoodsType
            function(data) {
                if (data === "ok") {
                    alert("添加成功");
                    window.location.reload();//刷新当前页面
                } else {
                    alert("添加失败");
                }
            });
    }

</script>
</body>
</html>