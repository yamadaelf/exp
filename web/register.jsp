
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>register</title>
    <link rel="stylesheet" type="text/css" href="register.css">
</head>
<body>
<div id="register">
<h2>Register</h2>
<form action="/elf/RegisterServlet" method="post" onsubmit="return validate_form(this)" >
    用户名：<input type="text"  id="username" name="username"><br/>
    密码：<input type="password"  id="password" name="password">
    <button class="button" type="submit" value="submit" >保存</button>
</form>
    已有账号？去<a href="login.jsp">登录</a>
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
