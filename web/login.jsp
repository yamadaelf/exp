<%--
  Created by IntelliJ IDEA.
  User: 山田伊尔芙
  Date: 2020/7/6
  Time: 0:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Login</title>

  <link rel="stylesheet" type="text/css" href="login.css">
</head>
<body>
<div id="login">
  <h1>Login</h1>
  <form action="/demo" method="post">
    <input type="text" required="required" placeholder="用户名" name="u"></input>
    <input type="password" required="required" placeholder="密码" name="p"></input>
    <button class="but" type="submit">登录</button>
  </form>
</div>
</body>
</html>