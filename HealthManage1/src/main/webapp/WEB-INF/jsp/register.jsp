<%--
  Created by IntelliJ IDEA.
  User: 17628
  Date: 2022/4/12
  Time: 22:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Register</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/register.css">
<%--    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css">--%>
<%--    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-theme.css">--%>
</head>
<body>
    <section id="section">
        <div id="div">
            <table align="center" class="table">
                <tr>
                    <td colspan="3"><h1>用户注册</h1></td>
                </tr>
                <form action="${pageContext.request.contextPath}/registersave.action" class="form-horizontal">
                    <tr>
                        <td><img src="${pageContext.request.contextPath}/images/user.png"></td>
                        <td><input type="text" id="username" name="username" placeholder="请填写用户名" onblur="checkName()"></td>
                        <td><span id="span_username"></span></td>
                    </tr>
                    <tr>
                        <td><img src="${pageContext.request.contextPath}/images/password.png"></td>
                        <td><input type="password" id="password" name="password" placeholder="密码"></td>
                        <td><span id="span_password"></span></td>
                    </tr>
                    <tr>
                        <td><img src="${pageContext.request.contextPath}/images/password.png"></td>
                        <td>
                            <input type="password" id="password1" name="password1" placeholder="确认密码">
                        </td>
                        <td><span id="span_password1"></span></td>
                    </tr>
                    <tr>
                        <td><img src="${pageContext.request.contextPath}/images/user.png"></td>
                        <td><input type="text" id="name" name="name" placeholder="请填写姓名"></td>
                        <td><span id="span_name"></span></td>
                    </tr>
                    <tr>
                        <td><img src="${pageContext.request.contextPath}/images/sex.png"></td>
                        <td>
                            <input type="radio" name="sex" value="1">男
                            <input type="radio" name="sex" value="0">女
                        </td>
                    </tr>
                    <tr>
                        <td><img src="${pageContext.request.contextPath}/images/email.png"></td>
                        <td><input type="email" id="email" name="email" placeholder="请填写邮箱"></td>
                        <td><span id="span_email"></span></td>
                    </tr>
                    <tr>
                        <td><img src="${pageContext.request.contextPath}/images/tel.png"></td>
                        <td><input type="tel" id="tel" name="tel" placeholder="请填写电话"></td>
                        <td><span id="span_tel"></span></td>
                    </tr>
                    <tr>
                        <td><img src="${pageContext.request.contextPath}/images/identify.png"></td>
                        <td><input type="text" id="identity" name="identity" placeholder="请填写身份证号"></td>
                        <td><span id="span_ide"></span></td>
                    </tr>
                    <tr>
                        <td><img src="${pageContext.request.contextPath}/images/birth.png"></td>
                        <td><input type="date" id="birth" name="age" placeholder=""></td>
                        <td><span id="span_birth"></span></td>
                    </tr>
                    <tr>
                        <td colspan="3"><input type="submit" value="注册"></td>
                    </tr>
                </form>
            </table>
        </div>
    </section>
</body>
<script src="${pageContext.request.contextPath}/js/jquery.js" type="application/javascript"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js" type="application/javascript"></script>
<script type="application/javascript">
    function checkName(){
        var username = document.getElementById("username").value;
        //创建异步交互的对象
        var xhr = creatXmlHttp();
        //设置监听
        xhr.onreadystatechange = function () {
            if(xhr.readyState == 4){
                if(xhr.status == 200){
                    document.getElementById("span_username").innerHTML = xhr.responseText;
                }
            }
        }
        //打开链接
        xhr.open("GET","${pageContext.request.contextPath}/checkName.action?username="+username,true);
        //发送
        xhr.send(null);
    }
    function creatXmlHttp(){
        var xmlHttp;
        try {
            xmlHttp = new XMLHttpRequest();
        }catch (e) {
            try {
                xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
            }catch (e) {
                try {
                    xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
                }catch (e) {

                }
            }
        }
        return xmlHttp;
    }
        $(function() {
            $("#password").blur(function () {
                var password = $("#password").val();
                var span_password = $("#span_password");
                if(password.trim() === ""){
                    document.getElementById("span_password").innerHTML=("<font color='red'>密码不能为空</font >");
                }else{
                    span_password.html("");
                }
            });
            //两次密码验证
            $("#password1").blur(function () {
                var password = $("#password").val();
                var password1 = $("#password1").val();
                var span_password1 = $("#span_password1");
                if(password1 === ""){
                    document.getElementById("span_password1").innerHTML=("<font color='red'>密码不能为空</font >");
                }
                else if(password != "" && password1!="" &&　password != password1){
                    document.getElementById("span_password1").innerHTML=("<font color='red'>两次密码不相同</font >");
                } else{
                    span_password1.html("");
                }
            });
        })
</script>

</html>
