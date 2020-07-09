
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>

    <link rel="stylesheet" type="text/css" href="login.css">
</head>
<body>
<div id="login">
    <h1>Login</h1>
    <form action="/elf/loginServlet" method="post">
        <input type="text" required="required" placeholder="用户名" name="username"></input>
        <input type="password" required="required" placeholder="密码" name="password"></input>
        <button class="button" type="submit">登录</button>
    </form>
    没有账号？<a href="register.jsp">注册一个</a>
</div>

</body>
</html>
