
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
    <p>密码：<input type="password"  id="password" name="password"><br/></p>
    <p>确认密码：<input type="password"  id="repassword" name="repassword" onkeyup="validatepass()"><span id="hint"></span></p>
    <p><button class="button" type="submit" id="submit" >保存</button></p>
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
            if (validate_required(repassword,"密码不能为空!")==false)
            {repassword.focus();return false}
        }
    }
    function validatepass() {
        var pw1 = document.getElementById("password").value;
        var pw2 = document.getElementById("repassword").value;
        if(pw1 === pw2) {
            document.getElementById("hint").innerHTML="<font color='green'>两次密码相同</font>";
            document.getElementById("submit").disabled = false;
        }
        else {
            document.getElementById("hint").innerHTML="<font color='red'>两次密码不相同</font>";
            document.getElementById("submit").disabled = true;
        }
    }
</script>
</html>
