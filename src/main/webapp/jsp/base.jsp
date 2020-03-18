<%--@elvariable id="loginUser" type="org.apache.commons.dbcp.datasources.PooledConnectionAndInfo"--%>
<%@ page import="com.jp.haiyou.attendance.web.vo.User" %>
<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>

<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">




    <title>博恒勤怠システン</title>
    <meta name="description" content="博恒勤怠システン">
    <meta name="keywords" content="博恒勤怠システン">




    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">


    <link rel="stylesheet" href="${path}/dist/adminlte/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${path}/dist/adminlte/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${path}/dist/adminlte/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="${path}/dist/adminlte/plugins/iCheck/square/blue.css">
    <link rel="stylesheet" href="${path}/dist/adminlte/plugins/morris/morris.css">
    <link rel="stylesheet" href="${path}/dist/adminlte/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet" href="${path}/dist/adminlte/plugins/datepicker/datepicker3.css">
    <link rel="stylesheet" href="${path}/dist/adminlte/plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" href="${path}/dist/adminlte/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet" href="${path}/dist/adminlte/plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet" href="${path}/dist/adminlte/plugins/treeTable/jquery.treetable.css">
    <link rel="stylesheet" href="${path}/dist/adminlte/plugins/treeTable/jquery.treetable.theme.default.css">
    <link rel="stylesheet" href="${path}/dist/adminlte/plugins/select2/select2.css">
    <link rel="stylesheet" href="${path}/dist/adminlte/plugins/colorpicker/bootstrap-colorpicker.min.css">
    <link rel="stylesheet" href="${path}/dist/adminlte/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet" href="${path}/dist/adminlte/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet" href="${path}/dist/adminlte/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="${path}/dist/adminlte/css/style.css">
    <link rel="stylesheet" href="${path}/dist/adminlte/plugins/ionslider/ion.rangeSlider.css">
    <link rel="stylesheet" href="${path}/dist/adminlte/plugins/ionslider/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet" href="${path}/dist/adminlte/plugins/bootstrap-slider/slider.css">
    <link rel="stylesheet" href="${path}/dist/adminlte/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
    <rapid:block name="head">

    </rapid:block>
</head>

<body class="hold-transition skin-purple sidebar-mini">

<div class="wrapper">

    <!-- 页面头部 -->
    <header class="main-header">


        <!-- Logo -->
        <a href="all-admin-index.html" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>勤怠</b></span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>博恒勤怠システン</b></span>
        </a>


        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>

            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <!-- Messages: style can be found in dropdown.less-->

                    <!-- User Account: style can be found in dropdown.less -->
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="${path}/dist/adminlte/img/user2-160x160.jpg" class="user-image" alt="User Image">
                            <span class="hidden-xs">${loginUser.username}</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                <img src="${path}/dist/adminlte/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                                <p>
                                    ${loginUser.role.roletype}<br/>
                                    <c:if test="${loginUser.usersuperuser == 1}">
                                        スーパー管理者
                                    </c:if>
                                    <small>${loginUser.userlastlogintime}</small>
                                </p>
                            </li>
                            <!-- Menu Body
                    <li class="user-body">
                        <div class="row">
                            <div class="col-xs-4 text-center">
                                <a href="#">Followers</a>
                            </div>
                            <div class="col-xs-4 text-center">
                                <a href="#">Sales</a>
                            </div>
                            <div class="col-xs-4 text-center">
                                <a href="#">Friends</a>
                            </div>
                        </div>
                    </li>-->
                            <!-- Menu Footer-->
                            <li class="user-footer">

                                <div class="pull-right">
                                    <a href="/logout" class="btn btn-default btn-flat">登出</a>
                                </div>
                            </li>
                        </ul>
                    </li>

                </ul>
            </div>
        </nav>
    </header>
    <!-- 页面头部 /-->

    <!-- 导航侧栏 -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- Sidebar user panel -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="${path}/dist/adminlte/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>${loginUser.username}</p>
                    <a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
                </div>
            </div>
            <!-- search form -->
            <!--<form action="#" method="get" class="sidebar-form">
        <div class="input-group">
            <input type="text" name="q" class="form-control" placeholder="搜索...">
            <span class="input-group-btn">
            <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
            </button>
          </span>
        </div>
    </form>-->
            <!-- /.search form -->


            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu">
                <!--li class="header">菜单</li-->



                <!-- 菜单 -->
                <li id="admin-daka"><a href="http://localhost:8888/attendance/punch"><i class="fa fa-dashboard"></i> <span>打刻</span></a></li>

                <li id="admin-work"><a href="http://localhost:8888/user/user-list"><i class="fa fa-dashboard"></i> <span>勤務評定一覧</span></a></li>
                <c:if test="${loginUser.usersuperuser==1}">
                <!-- 菜单 -->
                <li id="admin-people"><a href="all-admin-datalist.html"><i class="fa fa-dashboard"></i> <span>従業員の管理

                    <!-- 菜单 -->
                <li id="admin-character"><a href="http://localhost:8888/role/role-list"><i class="fa fa-dashboard"></i> <span>キャラクター管理</span></a></li></span></a></li>
                </c:if>





            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>
    <!-- 导航侧栏 /-->

    <!-- 内容区域 -->
    <!-- @@master = admin-layout.html-->
    <!-- @@block = content -->

    <div class="content-wrapper">

        <!-- 内容头部 -->
        <section class="content-header">
            消息推送预留区域

        </section>
        <!-- 内容头部 /-->
        <rapid:block name="content">
        <!-- 正文区域 -->
        <section class="content">

            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">模块操作</h3>
                </div>

                <div class="box-body">

                    如果你要新建一个模块页，你可以复制本文件 admin-blank.html ，不用重新搭建框架代码。<br> 本页元素有：模块主标题、模块子标题、导航位置、模块操作区域

                </div>
            </div>

        </section>
        <!-- 正文区域 /-->
        </rapid:block>
    </div>
    <!-- @@close -->
    <!-- 内容区域 /-->

    <!-- 底部导航 -->
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 1.0.8
        </div>
        <strong>Copyright &copy; 2020-2020 博恒一期开发组.</strong> 杨亚、陈凯琪、张先茂.
    </footer>
    <!-- 底部导航 /-->

</div>


<script src="${path}/dist/adminlte/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="${path}/dist/adminlte/plugins/jQueryUI/jquery-ui.min.js"></script>
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<script src="${path}/dist/adminlte/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="${path}/dist/adminlte/plugins/raphael/raphael-min.js"></script>
<script src="${path}/dist/adminlte/plugins/morris/morris.min.js"></script>
<script src="${path}/dist/adminlte/plugins/sparkline/jquery.sparkline.min.js"></script>
<script src="${path}/dist/adminlte/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="${path}/dist/adminlte/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="${path}/dist/adminlte/plugins/knob/jquery.knob.js"></script>
<script src="${path}/dist/adminlte/plugins/daterangepicker/moment.min.js"></script>
<script src="${path}/dist/adminlte/plugins/daterangepicker/daterangepicker.js"></script>
<script src="${path}/dist/adminlte/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
<script src="${path}/dist/adminlte/plugins/datepicker/bootstrap-datepicker.js"></script>
<script src="${path}/dist/adminlte/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<script src="${path}/dist/adminlte/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script src="${path}/dist/adminlte/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="${path}/dist/adminlte/plugins/fastclick/fastclick.js"></script>
<script src="${path}/dist/adminlte/plugins/iCheck/icheck.min.js"></script>
<script src="${path}/dist/adminlte/plugins/adminLTE/js/app.min.js"></script>
<script src="${path}/dist/adminlte/plugins/treeTable/jquery.treetable.js"></script>
<script src="${path}/dist/adminlte/plugins/select2/select2.full.min.js"></script>
<script src="${path}/dist/adminlte/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script src="${path}/dist/adminlte/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
<script src="${path}/dist/adminlte/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
<script src="${path}/dist/adminlte/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
<script src="${path}/dist/adminlte/plugins/bootstrap-markdown/js/markdown.js"></script>
<script src="${path}/dist/adminlte/plugins/bootstrap-markdown/js/to-markdown.js"></script>
<script src="${path}/dist/adminlte/plugins/ckeditor/ckeditor.js"></script>
<script src="${path}/dist/adminlte/plugins/input-mask/jquery.inputmask.js"></script>
<script src="${path}/dist/adminlte/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="${path}/dist/adminlte/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script src="${path}/dist/adminlte/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="${path}/dist/adminlte/plugins/datatables/dataTables.bootstrap.min.js"></script>
<script src="${path}/dist/adminlte/plugins/chartjs/Chart.min.js"></script>
<script src="${path}/dist/adminlte/plugins/flot/jquery.flot.min.js"></script>
<script src="${path}/dist/adminlte/plugins/flot/jquery.flot.resize.min.js"></script>
<script src="${path}/dist/adminlte/plugins/flot/jquery.flot.pie.min.js"></script>
<script src="${path}/dist/adminlte/plugins/flot/jquery.flot.categories.min.js"></script>
<script src="${path}/dist/adminlte/plugins/ionslider/ion.rangeSlider.min.js"></script>
<script src="${path}/dist/adminlte/plugins/bootstrap-slider/bootstrap-slider.js"></script>
<script src="${path}/dist/adminlte/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
<script src="${path}/dist/adminlte/plugins/bootstrap-datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<script>
    $(document).ready(function() {
        // 选择框
        $(".select2").select2();

        // WYSIHTML5编辑器
        $(".textarea").wysihtml5({
            locale: 'zh-CN'
        });

        $("#pageSelect").change(function () {
            var pageSize=$(this).children('option:selected').val();
            window.location.href="?page=1pagesize="+pageSize
        });
    });



    // 设置激活菜单
    function setSidebarActive(tagUri) {
        var liObj = $("#" + tagUri);
        if (liObj.length > 0) {
            liObj.parent().parent().addClass("active");
            liObj.addClass("active");
        }
    }


    $(document).ready(function() {
        setSidebarActive("admin-blank");
    });
</script>
<rapid:block name="script">

</rapid:block>
</body>

</html>
