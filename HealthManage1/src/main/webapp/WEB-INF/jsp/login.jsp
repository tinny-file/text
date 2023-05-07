<%--
  Created by IntelliJ IDEA.
  User: 17628
  Date: 2022/4/11
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"  %>
<%@include file="navigation.jsp" %>
<html>
<head>
    <title>Sign IN</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css">
<%--    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css">--%>
<%--    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-theme.css">--%>
<script type="application/javascript">
    function checkFrom() {
        var user_name = document.getElementById("name").value;
        var user_password = document.getElementById("password").value;
        if(user_name == null || user_name == ''){
            document.getElementById("span1").innerHTML("用户名不能为空！");
            return false;
        }
        else if(user_password == null || user_password == ''){
            document.getElementById("span2").innerHTML("密码不能为空！");
            return false;
        }
    }
    function checkUser(){
        //获取文本框的值
        var username = document.getElementById("name").value;
        var user_password = document.getElementById("password").value;
        //创建异步交互的对象
        var xhr = creatXmlHttp();
        //设置监听
        xhr.onreadystatechange = function () {
            if(xhr.readyState == 4){
                if(xhr.status == 200){
                    document.getElementById("span1").innerHTML = xhr.responseText;
                }
            }
        }
        //打开链接
        xhr.open("GET","${pageContext.request.contextPath}/checkUserName.action?username="+username+"&password="+user_password,true);
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
</script>
</head>
<body>
    <section id="section">
        <div id="div">
            <table align="center">
                <tr>
                    <td colspan="4">
                        <h1>用户登录</h1>
                    </td>
                </tr>
                <form method="get" novalidate="novalidate" onsubmit="checkFrom()"  id="formid" action="${pageContext.request.contextPath}/page.action">
                    <tr>
                        <td id="">
                            <img src="${pageContext.request.contextPath}/images/user.png">
                        </td>
                        <td>
                            <input type="text" name="name" id="name"  placeholder="请输入用户名">
                        </td>
                        <td colspan="2">
                            <span id="span1"></span>
                        </td>
                    </tr>
                    <tr>
                        <td id="td">
                            <img src="${pageContext.request.contextPath}/images/password.png">
                        </td>
                        <td>
                            <input type="password" name="password" placeholder="请输入密码" id="password">
                        </td>
                        <td>
                            <img src="${pageContext.request.contextPath}/images/eyes_close.png" id="img" onclick="change()">
                        </td>
                        <td id="span"><span id="span2"></span></td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <a href="#" style="display : inline ;float : left ;margin-left: 8px;">账户安全中心</a>
                            <a href="#" style="display: inline">找回密码</a>
                            <a href="#"style="display : inline ;float : right ;margin-right: 8px;" target="_blank">注册</a>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <input type="button" value="登录" class="btn2" onclick="checkUser()">
                        </td>
                    </tr>
                </form>
            </table>
        </div>
    </section>
<%--    <footer>--%>
<%--        <div class="banxin wrapper" style="margin-left: 20em">--%>
<%--            <ul>--%>
<%--                <li>--%>
<%--                    <dl>--%>
<%--                        <dt>关于我们</dt>--%>
<%--                        <dd class="offset-bottom"><a href="#">关于健康管理平台</a></dd>--%>
<%--                        <dd><a href="#">官方网站</a></dd>--%>
<%--                        <dd><a href="#">加入我们</a></dd>--%>
<%--                        <dd><a href="#">联系我们</a></dd>--%>
<%--                    </dl>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <dl>--%>
<%--                        <dt>免费下载APP</dt>--%>
<%--                        <dd class="offset-bottom"><a id="" onclick="onclickD('tanchuanAndroid',this)" style="cursor: pointer;">应用APP下载</a></dd>--%>
<%--                        <dd><a onclick="onclickD('tanchuanIos',this)" style="cursor: pointer;">管理APP下载</a></dd>--%>
<%--                    </dl>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <h2>400-026-1003</h2>--%>
<%--                    <p><a href="#">粤ICP备13019866号-3</a></p>--%>
<%--                    <p>广州通众电气实业有限公司&copy;版权所有</p>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <a>--%>
<%--&lt;%&ndash;                        <img src="/static/platform/v2.2.0/images/qrcode.png" alt="">&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <h4>生命守护公众号</h4>&ndash;%&gt;--%>
<%--                    </a>--%>
<%--                </li>--%>
<%--            </ul>--%>
<%--        </div>--%>
<%--    </footer>--%>
</body>
<%--<script src="${pageContext.request.contextPath}/js/jquery.js" type="application/javascript"></script>--%>
<%--<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->--%>
<%--<script src="${pageContext.request.contextPath}/js/bootstrap.min.js" type="application/javascript"></script>--%>
<script type="application/javascript" src="${pageContext.request.contextPath}/js/login.js" charset="utf-8"></script>
</html>
