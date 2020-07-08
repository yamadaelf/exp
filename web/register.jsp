<%--
  Created by IntelliJ IDEA.
  User: 山田伊尔芙
  Date: 2020/7/7
  Time: 12:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>register</title>
    <link rel="stylesheet" type="text/css" href="login.css">
</head>
<body>
<h2>用户注册</h2>
<form action="/RegisterServlet" method="post">
    用户名：<input type="text" name="username">
    密码：<input type="password" name="password">



    <input type="submit"  value="保存">
</form>
</body>
<script>
    if(${status} == 0){
        alert("注册成功")
        location.href="/";
    }
</script>
</html>
