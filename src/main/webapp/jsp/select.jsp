<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<html>
<head>
    <%request.setCharacterEncoding("UTF-8");%>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>攀枝花学院课程管理系统</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/vendor/simple-line-icons/css/simple-line-icons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/vendor/font-awesome/css/fontawesome-all.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
    <script>
        var count=${count};
        if(count>0){
            alert("选题成功,你已选课"+count);
        }
    </script>
</head>
<body class="sidebar-fixed header-fixed">
<div class="page-wrapper">
    <nav class="navbar page-header">
        <a href="#" class="btn btn-link sidebar-mobile-toggle d-md-none mr-auto">
            <i class="fa fa-bars"></i>
        </a>

        <a class="navbar-brand" href="#">
            <img src="${pageContext.request.contextPath}/img/logo.png" alt="logo">
        </a>

        <a href="#" class="btn btn-link sidebar-toggle d-md-down-none">
            <i class="fa fa-bars"></i>
        </a>

        <ul class="navbar-nav ml-auto">
            <li class="nav-item d-md-down-none">
                <a href="#">
                    <i class="fa fa-bell"></i>
                    <span class="badge badge-pill badge-danger">5</span>
                </a>
            </li>

            <li class="nav-item d-md-down-none">
                <a href="#">
                    <i class="fa fa-envelope-open"></i>
                    <span class="badge badge-pill badge-danger">5</span>
                </a>
            </li>

            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <img src="${pageContext.request.contextPath}/img/avatar-1.png" class="avatar avatar-sm" alt="logo">
                    <span class="small ml-1 d-md-down-none">${id}</span>
                </a>

                <div class="dropdown-menu dropdown-menu-right">
                    <div class="dropdown-header">Account</div>

                    <a href="#" class="dropdown-item">
                        <i class="fa fa-user"></i> 个人信息
                    </a>

                    <a href="#" class="dropdown-item">
                        <i class="fa fa-envelope"></i> 消息
                    </a>

                    <div class="dropdown-header">Settings</div>

                    <a href="#" class="dropdown-item">
                        <i class="fa fa-bell"></i> 提醒
                    </a>

                    <a href="#" class="dropdown-item">
                        <i class="fa fa-wrench"></i> 设置
                    </a>

                    <a href="#" class="dropdown-item">
                        <i class="fa fa-lock"></i> 登出
                    </a>
                </div>
            </li>
        </ul>
    </nav>

    <div class="main-container">
        <div class="sidebar">
            <nav class="sidebar-nav">
                <ul class="nav">
                    <li class="nav-title">导航</li>

                    <li class="nav-item">
                        <a href="${pageContext.request.contextPath}/jsp/index.jsp?id=${id}" class="nav-link active">
                            <i class="icon icon-speedometer"></i> 主页
                        </a>
                    </li>

                    <li class="nav-item nav-dropdown">
                        <a href="#" class="nav-link nav-dropdown-toggle">
                            <i class="icon icon-target"></i> 课题管理<i class="fa fa-caret-left"></i>
                        </a>

                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a href="${pageContext.request.contextPath}/topic.action?id=${id}" class="nav-link">
                                    <i class="icon icon-target"></i> 课题选择
                                </a>
                            </li>

                            <li class="nav-item">
                                <a href="${pageContext.request.contextPath}/look.action?id=${id}" class="nav-link">
                                    <i class="icon icon-target"></i> 选题结果查看
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item nav-dropdown">
                        <a href="#" class="nav-link nav-dropdown-toggle">
                            <i class="icon icon-energy"></i> 课题签到 <i class="fa fa-caret-left"></i>
                        </a>

                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a href="${pageContext.request.contextPath}/signin.action?id=${id}" class="nav-link">
                                    <i class="icon icon-energy"></i> 签到
                                </a>
                            </li>

                        </ul>
                    </li>
                </ul>
            </nav>
        </div>

        <div class="content">
            <div class="col-md-19">
                    <div class="card">
                        <div class="card-header bg-light">
                            已选课题
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th>课程ID</th>
                                        <th>课程名</th>
                                        <th>课题编号</th>
                                        <th>课题名称</th>
                                        <th>课题所得分数</th>
                                        <th>总分数</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${Grade}" var="item">
                                        <tr>
                                            <td>${item.cid}</td>
                                            <td>${item.cname}</td>
                                            <td>${item.toid}</td>
                                            <td>${item.toname}</td>
                                            <td>${item.tograde}</td>
                                            <td>${item.grade}</td>
                                            <td></td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
    </div>
</div>
</div>
<script src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/vendor/popper.js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/vendor/chart.js/chart.min.js"></script>
<script src="${pageContext.request.contextPath}/js/carbon.js"></script>
<script src="${pageContext.request.contextPath}/js/demo.js"></script>
</body>
</html>

