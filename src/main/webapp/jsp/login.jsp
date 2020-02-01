<%@ page language="java" pageEncoding="UTF-8"  isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>海容-博恒勤怠システム | Log in</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <!-- Font Awesome -->
    <!-- Ionicons -->
    <!-- Theme style -->
    <!-- iCheck -->
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <link rel="stylesheet" href="${path}/dist/adminlte/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${path}/dist/adminlte/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${path}/dist/adminlte/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="${path}/dist/adminlte/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet" href="${path}/dist/adminlte/plugins/iCheck/square/blue.css">
</head>

<body class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">

        <h3><b>海容-博恒</b>勤怠システム</h3>

    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg">システム登録</p>
        <c:if test="${!empty loginInfo}">
        <div class="alert alert-danger">
            <b>
                    ${loginInfo.info}
            </b>

            <c:if test="${loginInfo.errorCount > 0}"><hr/>現在のエラー回数：${loginInfo.errorCount}</c:if>
        </div>
        </c:if>
        <form action="" method="post">
            <div class="form-group has-feedback">
                <input type="number" class="form-control"  min="10000" required placeholder="ID番号" name="userid" value="${userid}">
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" class="form-control" placeholder="暗記番号" required name="password" value="${password}">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <br/><br/>
            <div class="row">
                <div class="col-xs-8">
                    <div class="checkbox icheck">
                        <label><input type="checkbox"> 记住 下次自动登录</label>
                    </div>
                </div>
                <!-- /.col -->

                <div class="col-xs-4">
                    <button type="submit" class="btn btn-primary btn-block btn-flat">登录</button>
                </div>
                <!-- /.col -->
            </div>
        </form>

        <%--<div class="social-auth-links text-center">--%>
            <%--<a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-qq"></i> 腾讯QQ用户登录</a>--%>
            <%--<a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-weixin"></i> 微信用户登录</a>--%>
        <%--</div>--%>
        <%--<!-- /.social-auth-links -->--%>

        <%--<a href="#">忘记密码</a><br>--%>
        <%--<a href="all-admin-register.html" class="text-center">新用户注册</a>--%>

    </div>
    <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 2.2.3 -->
<!-- Bootstrap 3.3.6 -->
<!-- iCheck -->
<script src="${path}/dist/adminlte/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="${path}/dist/adminlte/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="${path}/dist/adminlte/plugins/iCheck/icheck.min.js"></script>
<script>
    $(function() {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' // optional
        });
    });
</script>
</body>

</html>