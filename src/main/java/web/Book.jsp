<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>图书管理页面</title>
    <!-- 新 Bootstrap4 核心 CSS 文件 -->
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
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-8 colum">
            <div class="page-header">
                <h1 style="text-align:center"><small >图书管理信息展示</small></h1>
            </div>
        </div>
    </div>
<div class="row">
    <div class="col-md-4 column">
        <a href="findAll"><button type="button" class="btn btn-info">查看/刷新</button></a>
        <a href="addBook.jsp" ><button type="button" class="btn btn-primary" >添加</button></a>
    </div>
    <div class="col-md-4 column">
        <form action="${pageContext.request.contextPath}/findName" class="form-inline" >
            <input type="text" name="name" class="form-control" placeholder="请输入要查找的书名">
            <input type="submit" value="搜素" class="btn-warning" >
        </form>
    </div>
    <div class="row shadow rounded m-4 p-4">
        <div id="col-8 ">
            <table class="table table-bordered" >
                <thead>
                <tr>
                    <th>序号</th>
                    <th>编号</th>
                    <th>书名</th>
                    <th>所属类型</th>
                    <th>价格</th>
                    <th>操作</th>
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
                        <td>
                            <a href="#" class="btn btn-danger btn-xs" onclick="deleteBook(${B.id})">删除</a>
                            <a	href="#BookModal" data-toggle="modal" class="btn btn-primary btn=xs" onclick="getBook(${B.bid})">修改</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <span style="color: red;font-weight:bold;margin:100px auto;text-align: center ">${error}</span>
            </div>
        </div>
    </div>
</div>
<!-- 修改模态对话框 -->
<div class="modal fade " id="BookModal">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <!-- 模态框头部 -->
            <div class="modal-header">
                <h5 class="modal-title">修改图书信息</h5>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- 模态框主体 -->
            <div class="modal-body">
                <form class="form" id="bookFrom">
                    <input type="hidden" name="id" id="id" >
                    <div class="form-group">
                        <label for="bid">图书编号：</label> <input type="text"
                                                                   class="form-control"  name="bid" id="bid">
                    </div>
                    <div class="form-group">
                        <label for="name">书名:</label> <input type="text"
                                                                class="form-control"  name="name" id="name">
                    </div>
                    <div class="form-group">
                        <label for="type">所属类别：</label> <input
                            class="form-control" type="text" name="type"  id="type">
                    </div>
                    <div class="form-group">
                        <label for="price">价格：</label> <input
                            class="form-control" type="text" name="price"  id="price">
                    </div>
                </form>
            </div>

            <!-- 模态框底部 -->
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="updateBook()">修改</button>
            </div>

        </div>
    </div>
</div>
<script>
    //点击商品列表后的修改按钮后根据id从数据库中查询到的数据（JSon格式）中获取商品类型信息
    function getBook(bid){
        $.post(
            "findOneBook",//根据id查询数据
            {"bid":bid},  //上面查询的action的参数
            function(data){ //data得到的是Json格式的商品类型信息
                //以下代码利用JQuery将Json中的数据赋值给表单对应输入框
                $("#id").val(data.id);// 给表单中隐藏域赋id值，注意模态框中必须要加入一个用于存id的隐藏的输入框
                $("#bid").val(data.bid);
                $("#name").val(data.name);
                $("#type").val(data.type);
                $("#price").val(data.price);
            }

        );
    }


    //点击  修改模态对话框中的修改按钮后 操作
    function updateBook(){
        $.post(
            "updateBook",
            $("#bookFrom").serialize(),//序列化修改表单里的数据传递给action:updateGoodsType
            function(data){
                if(data==="ok"){
                    alert("修改成功");
                    window.location.reload();//刷新当前页面
                }else{
                    alert("修改失败");
                    window.location.reload();
                }
            }
        );
    }

    //删除商品类型
    function deleteBook(id){
        if(confirm("是否真要删除这条记录？")){
            $.post(
                "deleteBook",
                {"id":id},
                function(data){
                    if(data==="error")
                        alert("删除失败");
                    window.location.reload();
                }
            );
        }
    }
</script>
</body>
</html>


