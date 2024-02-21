<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>注册页面</title>
</head>
<body>
<form id="registerFrom">
    用户名：<input type="text" name="name"/><br>
    密&nbsp;&nbsp;码:<input type="password" name="password"><br>
    <div class="form-group">
    <input type="submit" onclick="registerUser()" value="注册">
    <input type="reset" value="取消">
    </div>
    <a href="login.jsp">返回</a>
</form>
<script >
    function registerUser() {
        $.post(
            "addBook",
            $("#registerFrom").serialize(),//序列化修改表单里的数据传递给action:updateGoodsType
            function(data) {
                if (data === "ok") {
                    alert("注册成功");
                    window.location.reload();//刷新当前页面
                } else {
                    alert("注册失败");
                }
            });
    }
</script>
</body>
</html>
