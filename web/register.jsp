
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>register</title>
    <link rel="stylesheet" type="text/css" href="register.css">
</head>
<body>
<div id="register">
<h2>Register</h2>
<form action="/elf/RegisterServlet" method="post">
    用户名：<input type="text" required="required" name="username"><br/>
    密码：<input type="password" required="required" name="password">
    <button class="button" type="submit">保存</button>
</form>
    已有账号？去<a href="login.jsp">登录</a>
    </div>
</body>

</html>
