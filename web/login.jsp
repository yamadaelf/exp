
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
    <form action="/elf/loginServlet" method="post" onsubmit="return validate_form(this)">
        <input type="text"  placeholder="用户名" name="username"></input>
        <input type="password" placeholder="密码" name="password"></input>
        <button class="button" type="submit">登录</button>
    </form>
    没有账号？<a href="register.jsp">注册一个</a>
</div>

</body>
<script type="text/javascript">
    function validate_required(field,alerttxt)
    {
        with (field)
        {
            if (value==null||value===" "||value==="")
            {alert(alerttxt);return false}
            else {return true}
        }
    }

    function validate_form(thisform)
    {
        with (thisform)
        {
            if (validate_required(username,"用户名不能为空!")==false)
            {username.focus();return false}
            if (validate_required(password,"密码不能为空!")==false)
            {password.focus();return false}
        }
    }

</script>
</html>
