<%--
  Created by IntelliJ IDEA.
  User: Mr Zhang
  Date: 2019/4/5
  Time: 17:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <script src="${pageContext.request.contextPath}/js/jquery-1.4.2.min.js"></script>
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <style>
        body{
            background: url("${pageContext.request.contextPath}/img/1.png");
            animation-name:myfirst;
            animation-duration:12s;
            /*变换时间*/
            animation-delay:2s;
            /*动画开始时间*/
            animation-iteration-count:infinite;
            /*下一周期循环播放*/
            animation-play-state:running;
            /*动画开始运行*/
        }
        @keyframes myfirst
        {
            0%   {background:url("${pageContext.request.contextPath}/img/9.jpg");}
            34%  {background:url("${pageContext.request.contextPath}/img/10.jpg");}
            67%  {background:url("${pageContext.request.contextPath}/img/8.jpg");}
            100% {background:url("${pageContext.request.contextPath}/img/10.jpg");}
        }
        .form{background: rgba(255,255,255,0.2);width:400px;margin:120px auto;}
        /*阴影*/
        .fa{display: inline-block;top: 27px;left: 6px;position: relative;color: #ccc;}
        input[type="text"],input[type="password"]{padding-left:26px;}
        .checkbox{padding-left:21px;
        }
    </style>
    <script>
        function fun(){
            window.location.href="${pageContext.request.contextPath}/jsp/regist.jsp";
        }
    </script>
</head>
<body>
<div class="container">
    <form action="${pageContext.request.contextPath}/login.action" method="post">
    <div class="form row">
        <div class="form-horizontal col-md-offset-3" id="login_form">
            <h3 class="form-title">LOGIN</h3>
            <div class="col-md-9">
                <div class="form-group">
                    <i class="fa fa-user fa-lg"></i>
                    <input class="form-control required" type="text" placeholder="ID" id="username" name="id" autofocus="autofocus" maxlength="20"/>
                </div>
                <div class="form-group">
                    <i class="fa fa-lock fa-lg"></i>
                    <input class="form-control required" type="password" placeholder="Password" id="password" name="password" maxlength="8"/>
                </div>
                <div class="form-group">
                    <label class="checkbox">
                        <input type="checkbox" name="remember" value="1"/>记住我
                    </label>
                </div>
                <span class="form-group col-md-offset-9">
                    <button type="button" onclick="fun()" class="btn btn-success pull-left" name="submit">注册</button>
                    <button type="submit" class="btn btn-success pull-right" name="submit">登录</button>
                </span>
            </div>
        </div>
    </div>
    </form>
</div>
</body>
</html>
