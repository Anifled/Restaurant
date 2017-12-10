<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>顾客登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8">
    <!-- 引入 Bootstrap -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 Shiv 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
    <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<div class="container">
    <div>
        ${msg}
    </div>

    <form role="form" method="post" action="/customer/login">
        <div class="form-group">
            <label>餐桌ID
                <input type="text" class="form-control" name="tId" placeholder="请输入餐桌ID" value="${tId}">
            </label>
            <label>餐桌服务码
                <input type="password" class="form-control" name="serviceCode" placeholder="请输入餐桌服务码" value="${serviceCode}">
            </label>
        </div>
        <button type="submit" class="btn btn-default">进入点单</button>
    </form>

</div>
</body>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>