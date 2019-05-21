<%@ page contentType="text/html;charset=UTF-8"  language="java" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>注册</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/vendor/simple-line-icons/css/simple-line-icons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/vendor/font-awesome/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>

<div class="page-wrapper flex-row align-items-center">
    <div class="container">
        <form action="${pageContext.request.contextPath}/regist.action" method="post" >
        <div class="row justify-content-center">
            <div class="col-md-5">
                <div class="card p-4">
                    <div class="card-header text-center text-uppercase h4 font-weight-light">
                        Register
                    </div>
                    <div class="card-body py-5">
                        <div class="form-group">
                            <label class="form-control-label">编号</label>
                            <input type="name" name="id" class="form-control">
                        </div>
                        <div class="form-group">
                            <label class="form-control-label">用户名</label>
                            <input type="name" name="username" class="form-control">
                        </div>
                        <div class="form-group">
                            <label class="form-control-label">密码</label>
                            <input type="password" name="password" class="form-control">
                        </div>
                        <div class="form-group">
                            <label class="form-control-label">确认密码</label>
                            <input type="password" class="form-control">
                        </div>
                    </div>

                    <div class="card-footer">
                        <button type="submit" class="btn btn-success btn-block">创建账号</button>
                    </div>
                </div>
            </div>
        </div>
        </form>
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
