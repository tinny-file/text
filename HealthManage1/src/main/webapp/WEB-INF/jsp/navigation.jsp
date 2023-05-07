<%--
  Created by IntelliJ IDEA.
  User: 17628
  Date: 2022/4/12
  Time: 20:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <title>Page</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-theme.css">
</head>
<body>
    <nav class="nav navbar-default">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="true">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="javascript:;" style="margin-right: 1rem; padding-top:1.8rem;" target="_blank">
<%--                    <img src="">--%>
                </a>
            </div>
            <div class="navbar-collapse collapse in" id="bs-example-navbar-collapse-1" aria-expanded="true" >
                <ul class="nav navbar-nav" >
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" target="_blank">首页动态</a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="${pageContext.request.contextPath}/page.action" target="_self">公司首页</a>
                            </li>
                            <li role="separator" class="divider"></li>
                            <li>
                                <a href="#" target="_blank">公司动态</a>
                            </li>
                            <li role="separator" class="divider"></li>
                            <li>
                                <a href="#" target="_blank">知识库</a>
                            </li>
                            <li role="separator" class="divider"></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <!-- <a href="#">合作案例</a>-->
                        <a  href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">产品与平台</a>
                        <ul class="dropdown-menu">
                            <li><a href="#">健康管理</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">用户端App</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">机构端App</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">智能设备</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">隐私政策</a></li>
                            <li role="separator" class="divider"></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a  href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">专业服务</a>
                        <ul class="dropdown-menu">
                            <li><a href="#">合作医生</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">健康套餐</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">健康评估</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">机构服务</a></li>
                            <li role="separator" class="divider"></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <!-- <a href="#">合作案例</a>-->
                        <a  href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">合作案例</a>
                        <ul class="dropdown-menu">
                            <li><a href="#">合作案例汇总</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">养老监护系统</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">慢病管理方案</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">中医养生之道</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">减肥塑身系统</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">院外管理系统</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">电信家庭</a></li>
                            <li role="separator" class="divider"></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a  href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">帮助中心</a>
                        <ul  class="dropdown-menu">
                            <li><a href="#">说明书</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">产品视频</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="javascript:;">常见问题</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">问题反馈</a></li>
                            <li role="separator" class="divider"></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a  href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">关于我们</a>
                        <ul  class="dropdown-menu">
                            <li><a href="#">公司简介</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">招聘合作伙伴</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">联系我们</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">人才招聘</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">二维码下载</a></li>
                            <li role="separator" class="divider"></li>
                        </ul>
                    </li>
                </ul>
                <ol class="nav navbar-nav navbar-right" id="navbar-right" style="display: flex;">
                    <li><a href="${pageContext.request.contextPath}/login.action">登录</a></li>
                    <li><a href="${pageContext.request.contextPath}/register.action">注册</a></li>
                </ol>
            </div>
        </div>
    </nav>
</body>
<script src="${pageContext.request.contextPath}/js/jquery.js" type="application/javascript"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js" type="application/javascript"></script>
</html>
